"""Crypto market explorer — Tkinter GUI.

A small desktop app that fetches live cryptocurrency data from the CoinGecko
API and visualizes the current top market. Network calls run on background
threads so the UI stays responsive, and results are applied back on the Tk
main thread with ``root.after``.

Run:
    python app.py
"""

from __future__ import annotations

import tkinter as tk
from threading import Thread
from tkinter import messagebox, ttk

import data_analysis as analysis
import data_fetch as api


class CryptoApp:
    def __init__(self, root: tk.Tk) -> None:
        self.root = root
        root.title("Crypto Market Explorer")
        root.geometry("640x460")

        notebook = ttk.Notebook(root)
        notebook.pack(expand=True, fill="both")
        self._build_lookup_tab(notebook)
        self._build_market_tab(notebook)

        self._markets: list[dict] = []

    # ----- Tab 1: single-coin lookup -------------------------------------
    def _build_lookup_tab(self, notebook: ttk.Notebook) -> None:
        tab = ttk.Frame(notebook)
        notebook.add(tab, text="Coin Lookup")

        ttk.Label(tab, text="Select a cryptocurrency:", font=("", 13)).pack(pady=(16, 6))
        self.coin_box = ttk.Combobox(tab, values=list(api.SUPPORTED_COINS), state="readonly")
        self.coin_box.current(0)
        self.coin_box.pack()
        ttk.Button(tab, text="Fetch", command=self._on_fetch_coin).pack(pady=12)

        self.coin_result = ttk.Label(tab, text="", font=("", 12), justify="center")
        self.coin_result.pack(pady=10)

    def _on_fetch_coin(self) -> None:
        name = self.coin_box.get()
        coin_id = api.SUPPORTED_COINS.get(name)
        if not coin_id:
            messagebox.showwarning("Input needed", "Please select a cryptocurrency.")
            return
        self.coin_result.config(text=f"Fetching {name}…")
        Thread(target=self._fetch_coin_worker, args=(name, coin_id), daemon=True).start()

    def _fetch_coin_worker(self, name: str, coin_id: str) -> None:
        try:
            coin = api.fetch_coin(coin_id)
            text = (
                f"{name}\n"
                f"Price: ${api.current_price(coin):,.2f}\n"
                f"24h change: {api.change_24h(coin):+.2f}%"
            )
            self.root.after(0, lambda: self.coin_result.config(text=text))
        except api.CoinGeckoError as exc:
            self.root.after(0, lambda: self._error(str(exc)))

    # ----- Tab 2: market overview ----------------------------------------
    def _build_market_tab(self, notebook: ttk.Notebook) -> None:
        tab = ttk.Frame(notebook)
        notebook.add(tab, text="Market Overview")

        controls = ttk.Frame(tab)
        controls.pack(fill="x", pady=8)
        ttk.Button(controls, text="Load top 10", command=self._on_load_markets).pack(side="left", padx=6)
        ttk.Button(controls, text="Plot prices", command=lambda: self._plot("prices")).pack(side="left")
        ttk.Button(controls, text="Plot 24h change", command=lambda: self._plot("change")).pack(side="left", padx=6)

        columns = ("Coin", "Symbol", "Price (USD)", "24h Change (%)")
        self.tree = ttk.Treeview(tab, columns=columns, show="headings", height=12)
        for col in columns:
            self.tree.heading(col, text=col)
            self.tree.column(col, width=140, anchor="center")
        self.tree.pack(expand=True, fill="both", padx=8, pady=8)

    def _on_load_markets(self) -> None:
        Thread(target=self._load_markets_worker, daemon=True).start()

    def _load_markets_worker(self) -> None:
        try:
            markets = api.fetch_markets(per_page=10)
            self.root.after(0, lambda: self._populate_markets(markets))
        except api.CoinGeckoError as exc:
            self.root.after(0, lambda: self._error(str(exc)))

    def _populate_markets(self, markets: list[dict]) -> None:
        self._markets = markets
        self.tree.delete(*self.tree.get_children())
        for m in markets:
            self.tree.insert(
                "", "end",
                values=(
                    m.get("name"),
                    (m.get("symbol") or "").upper(),
                    f"${m.get('current_price', 0):,.2f}",
                    f"{m.get('price_change_percentage_24h') or 0:+.2f}",
                ),
            )

    def _plot(self, kind: str) -> None:
        if not self._markets:
            messagebox.showinfo("No data", "Load the market data first.")
            return
        import matplotlib.pyplot as plt

        df = analysis.markets_to_dataframe(self._markets)
        analysis.plot_prices(df) if kind == "prices" else analysis.plot_24h_change(df)
        plt.show()

    def _error(self, message: str) -> None:
        self.coin_result.config(text="")
        messagebox.showerror("Error", message)


def main() -> None:
    root = tk.Tk()
    CryptoApp(root)
    root.mainloop()


if __name__ == "__main__":
    main()
