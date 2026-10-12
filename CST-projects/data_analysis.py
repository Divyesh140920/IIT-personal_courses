"""Analysis and visualization helpers.

Operates on **real** market data fetched from CoinGecko (passed in by the
caller), rather than hard-coded sample numbers.
"""

from __future__ import annotations

import pandas as pd


def markets_to_dataframe(markets: list[dict]) -> pd.DataFrame:
    """Turn ``fetch_markets`` output into a tidy DataFrame."""
    rows = [
        {
            "Coin": m.get("name", m.get("id", "?")),
            "Symbol": (m.get("symbol") or "").upper(),
            "Price (USD)": m.get("current_price"),
            "24h Change (%)": m.get("price_change_percentage_24h"),
            "Market Cap (USD)": m.get("market_cap"),
        }
        for m in markets
    ]
    return pd.DataFrame(rows)


def plot_prices(df: pd.DataFrame):
    """Return a matplotlib Figure of current price by coin (log scale)."""
    import matplotlib.pyplot as plt
    import seaborn as sns

    fig, ax = plt.subplots(figsize=(8, 5))
    sns.barplot(data=df, x="Symbol", y="Price (USD)", ax=ax, color="#3b82f6")
    ax.set_yscale("log")  # prices span many orders of magnitude
    ax.set_title("Current Price by Coin (log scale)")
    ax.set_xlabel("")
    fig.tight_layout()
    return fig


def plot_24h_change(df: pd.DataFrame):
    """Return a matplotlib Figure of 24h % change, colored by sign."""
    import matplotlib.pyplot as plt
    import seaborn as sns

    colors = ["#16a34a" if v >= 0 else "#dc2626" for v in df["24h Change (%)"].fillna(0)]
    fig, ax = plt.subplots(figsize=(8, 5))
    sns.barplot(
        data=df, x="Symbol", y="24h Change (%)", ax=ax,
        hue="Symbol", palette=colors, legend=False,
    )
    ax.axhline(0, color="#6b7280", linewidth=0.8)
    ax.set_title("24-Hour Price Change")
    ax.set_xlabel("")
    fig.tight_layout()
    return fig
