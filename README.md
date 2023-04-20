# Group_5_Project_1
## Portfolio Powerhouse
### **Team Members: Athura Thavathasan, Nicholas Gracan, Brandon Petrie, Pablo Aray Acevedo**
*Presentation April 19, 2023*

## Motivation
`Define the core message or hypothesis of the project:`

We believe that investment choices can be better optimized with the use of various, rigorous data analysis techniques that utilize quantitative statistics to produce portfolio options for all types of investors. Exploring the risk and returns of various assets across different investments will allow us to better and more accurately position those stocks within the correct portfolio. 

`Describe the questions that were asked, and why they were asked:`

The question that led us to the idea for this project was that we wanted to know if random stocks from various financial industries could be analyzed based on various risk and return metrics that would allow us to optimize portfolio creation to better suit different investors risk and return profiles. If investors were able to collect a group of stocks they might be interested in and run them through our code, it would produce an analysis notebook that would quickly provide quantitative information and insight into the different characteristics of each portfolio option and the characteristics of the assets they are made up of. 

`Describe whether the questions were answered to your satisfaction, and briefly summarize the findings:`

Based on our analysis, we are satisfied with the outcomes of our project.  The main question of our project was to see if we could pull historical data from random stocks from Yahoo Finance and filter them into three different portfolio's with different risk and return charactoristics.  Through our code we were able to successfully filter data on random stocks, for the metrics we were interested in, and create three different portfolios based on those metrics.  The purpose of the analysis we are performing in our notebook was to create three different portfolios: aggressive, moderate and conservative; as you can see from our notebook we were able to successfully produce the output we were aiming for.  

##Questions & Data

`Provide more detail on the questions posed, including what kind of data was needed to answer them, and where it was found:`

To create our different portfolios we needed historical time-series closing price data on all the different stocks and the benchmark we were using for the analysis. To retrieve this data, we set a 5-year time period for our query and utilized the yahoo finance library provider in our jupyter notebook to pull the data from yahoo finance and convert it into pandas dataframes from there. To perform the calculations for the average returns, cumulative returns, rolling standard deviation and beta we needed to convert the closing prices from the yahoo data on the stocks and benchmark, to daily returns for each asset. 

##Data Cleanup & Exploration

`Describe the exploration and cleanup process:`

During the data exploration and cleanup process we needed to retrieve data on all the stocks and produce a single dataframe that contained all the information we needed for analysis. We then used pandas to calculate the daily returns of all stocks and drop any null values in the data frame. The data frame was checked for any missing or duplicated data points before moving forward with the analysis. 

Once the analysis was completed on all stocks, the data from the analysis was then manipulated through four metrics and returned 3 separate dataframes which would then be our three portfolios.




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
