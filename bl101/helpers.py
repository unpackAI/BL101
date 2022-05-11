# Standard library imports
from datetime import datetime

# Third party imports
#import numpy as np
#import pandas as pd
#import yfinance as yf
#import plotly.graph_objs as go
# Third party imports

def test(x="Hello!"):
    print(x,  " Now is: ", datetime.now())
    return x

def get_crypto_data(tickers='ETH-USD', plot=False, period = '22h', interval = '15m'):
    """Return and plot Cryptocurrency price from Yahoo Finance for up to 60 days.

    Args:
        tickers (str): The crypto symbol from yahoo finance (e.g.: https://finance.yahoo.com/cryptocurrencies)
        plot (bool): Plots price chart
            (default is False)
        period (str): how long from now into the past price data (max: 60 days). Possible formats are "2d" (2 days), "12h" (12 hours).
            (default is "7d")
        interval (str): time interval of prices 

    Returns:
        Pandas DataFrame: table of open, close, etc. prices for the crypto
    """
    # Check Crypto Availability
    if tickers in ['ETH-USD', 'BTC-USD']:
        # Get Cryptocurrency data
        data = yf.download(tickers=tickers, period = period, interval = interval)

        if plot:
            #declare figure
            fig = go.Figure()

            #Candlestick
            fig.add_trace(go.Candlestick(x=data.index,
                            open=data['Open'],
                            high=data['High'],
                            low=data['Low'],
                            close=data['Close'], name = 'market data'))

            # Add titles
            fig.update_layout(
                title=f'{tickers} live share price evolution',
                yaxis_title=f'{tickers} Price')

            # X-Axes
            fig.update_xaxes(
                rangeslider_visible=True,
                rangeselector=dict(
                    buttons=list([
                        dict(count=15, label="15m", step="minute", stepmode="backward"),
                        dict(count=45, label="45m", step="minute", stepmode="backward"),
                        dict(count=1, label="HTD", step="hour", stepmode="todate"),
                        dict(count=6, label="6h", step="hour", stepmode="backward"),
                        dict(step="all")
                    ])
                )
            )

            #Show
            fig.show()
        
        return data
    else:
        print("Sorry, your Cryptocurrency is not in our list!")