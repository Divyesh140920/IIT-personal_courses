"""CoinGecko API client.

Pure data-access layer with no GUI dependencies, so it can be reused from the
Tkinter app, a notebook, or tests. No API key is required for these endpoints.
"""

from __future__ import annotations

import requests

API_BASE = "https://api.coingecko.com/api/v3"
DEFAULT_TIMEOUT = 10

# Friendly name -> CoinGecko coin id.
SUPPORTED_COINS = {
    "Bitcoin": "bitcoin",
    "Ethereum": "ethereum",
    "Ripple": "ripple",
    "Litecoin": "litecoin",
    "Cardano": "cardano",
    "Solana": "solana",
    "Dogecoin": "dogecoin",
}


class CoinGeckoError(RuntimeError):
    """Raised when the API cannot be reached or returns unexpected data."""


def fetch_coin(coin_id: str, timeout: int = DEFAULT_TIMEOUT) -> dict:
    """Return the full CoinGecko record for a single coin.

    Raises :class:`CoinGeckoError` on any network or data problem.
    """
    url = f"{API_BASE}/coins/{coin_id}"
    params = {
        "localization": "false",
        "tickers": "false",
        "community_data": "false",
        "developer_data": "false",
    }
    try:
        response = requests.get(url, params=params, timeout=timeout)
        response.raise_for_status()
        return response.json()
    except requests.exceptions.RequestException as exc:
        raise CoinGeckoError(f"Unable to fetch data for '{coin_id}': {exc}") from exc


def fetch_markets(
    coin_ids: list[str] | None = None,
    vs_currency: str = "usd",
    per_page: int = 10,
    timeout: int = DEFAULT_TIMEOUT,
) -> list[dict]:
    """Return market data (price, market cap, 24h change) for several coins.

    With no ``coin_ids``, returns the top ``per_page`` coins by market cap.
    """
    url = f"{API_BASE}/coins/markets"
    params: dict[str, object] = {
        "vs_currency": vs_currency,
        "order": "market_cap_desc",
        "per_page": per_page,
        "page": 1,
        "sparkline": "false",
    }
    if coin_ids:
        params["ids"] = ",".join(coin_ids)
    try:
        response = requests.get(url, params=params, timeout=timeout)
        response.raise_for_status()
        return response.json()
    except requests.exceptions.RequestException as exc:
        raise CoinGeckoError(f"Unable to fetch market data: {exc}") from exc


def current_price(coin: dict) -> float:
    """Extract the USD spot price from a :func:`fetch_coin` record."""
    return float(coin["market_data"]["current_price"]["usd"])


def change_24h(coin: dict) -> float:
    """Extract the 24-hour percentage change from a :func:`fetch_coin` record."""
    return float(coin["market_data"]["price_change_percentage_24h"])
