# Group_5_Project_1
## Portfolio Powerhouse
### **Team Members: Athura Thavathasan, Nicholas Gracan, Brandon Petrie, Pablo Aray Acevedo**
*Presentation April 19, 2023*

### Importing Libraries
We imported yfinance to pull data from yahoo finances website.
We used pandas to create dataframes with that data.
We used matplotlib to create graphs.
Np was used in calculating the metrics in our function.
We contemplated using seaborn to spruce up the graphs
Datetime was used to put the time stamps into a unified way for the program to run smoothly
sys
sqlalchemy was used to query data from sql and create the list of tickers.
haloviews?

### SQL Data
The first thing we did was create an engine
We then created a query to pull ticker data from sql.
From that data we created a pandas data frame.

### Variable Declaration
From that dataframe we created a list of tickers.
Start and end dates were defined along with the benchmark ticker

### Function
A function was created, to create a dataframe that included all the tickers from the ticker list and found four metrics: beta, standard deviation, sharpe_ratio and average returns
The function starts by defining its paramaters( the ticker list, benchmark data, start date and end date)
The function begins by pulling the close prices for all of the tickers
It then computes them into daily percentage
Outside of the function the benchmark data close is downloaded in.  This was done outside so the same data wouldn't be downloaded 27 times.
The ticker and benchmark data is then cleaned removing nulls.
The next step was to define the metrics, numpy was used here.
The function the computes the metrics.
A for loop was then used to call this function run through all the metricsfor each ticker and computes a dictionary, the next line converts the dictionary into a data frame.

### Filtering Stocks
Now that we had a data frame of all the tickers and their metrics we could start filtering the tickers into individualized portfolios based on risk.
In this section we defined the filtering parameters for standard deviation, beta and sharpe_ratio.  The paramaters we decided to use was by takeing the the the lowest and highest value for each metric dividing them into thirds.
From the dataframe, the tickers ran through each of the different parameters and were filtered into three portfolios: low, medium level and high level risk.

### Portfolio Creation
The three different portfolios had varrying amounts of stocks in them. We then plotted the average returns for each of the tickers.
We decided 5 different shares was the max we would want in a portfolio, so we used the nlargest function and set n to 5.  This helped create the stocks with the highest performance per portfolio

