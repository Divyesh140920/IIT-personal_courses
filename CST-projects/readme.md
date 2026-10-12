# Crypto Market Explorer

A Python desktop application (Tkinter) that fetches **live** cryptocurrency
data from the free [CoinGecko API](https://www.coingecko.com/en/api) and
visualizes the current top market. Built as a CST course project and rebuilt
with a clean, modular structure.

## Features

- **Coin Lookup** — pick a coin and fetch its current USD price and 24-hour
  change in real time.
- **Market Overview** — load the top 10 coins by market cap into a sortable
  table, then plot current prices (log scale) or 24-hour change.
- **Responsive UI** — network calls run on background threads and update the
  interface safely via the Tk event loop, so the window never freezes.

## Tech

Tkinter (GUI) · Requests (HTTP) · Pandas (data) · Matplotlib + Seaborn (charts)

## Project structure

| File | Responsibility |
|------|----------------|
| `app.py` | Tkinter GUI and event handling (entry point). |
| `data_fetch.py` | CoinGecko API client — no GUI dependencies, reusable. |
| `data_analysis.py` | Builds DataFrames and charts from fetched market data. |

## Setup

```bash
pip install -r requirements.txt
python app.py
```

No API key is required — CoinGecko's public endpoints are used.

## What changed in this rewrite

- **Removed the duplicated monolith.** The project previously shipped both a
  single-file `GUI_Application.py` *and* a partial modular split. It is now
  one coherent app with a clean separation of concerns.
- **Real data everywhere.** The old "Stock Data" tab and the analysis chart
  used hard-coded fake numbers. The app now fetches real market data from
  CoinGecko for both the table and the plots.
- **Decoupled the API layer** from Tkinter (it raises `CoinGeckoError`
  instead of popping message boxes), so it can be reused or tested headless.
- **Thread-safe UI updates** via `root.after`, request timeouts, and read-only
  dropdowns.
- Removed the auto-generated Colab headers (which linked to a private
  notebook) and pinned dependency versions.

> Screenshots in this folder show an earlier version of the interface.

## Possible next steps

- Embed the charts directly in the window (via `FigureCanvasTkAgg`) instead of
  opening a separate Matplotlib window.
- Add historical price charts using CoinGecko's `market_chart` endpoint.
- Cache responses to stay within public rate limits.
