# San Francisco Moving Violation Trends, Forecasts, and Associations with Driver Demographics

### 1.	Was there a monthly trend in counts of traffic stops for moving violations in San Francisco between 2007 and 2016?
#### Negative Binomial Regression Testing for Monthly Trend in Moving Violations between Jan 2007 and Jun 2016
Results confirmed there was a significant negative trend in counts of moving violations in June, November, and December compared at a 90% confidence level.

### 2.	Can the expected number of moving violations in San Francisco be forecasted with a prediction interval for a month outside of the data’s time period, July 2016?
#### ARIMA Model for Forecasting Moving Violation Count
Using monthly stop data between July 2011 to June 2016, an ARIMA model predicted that July 2016 would have between 3,888 and 5,416 moving violations with 90% confidence. The ARIMA model used non-season AR(2) and MA(1) terms, a seasonal AR(2) term, and a seasonal period of 12 months.

### 3.	Were there three-way interactions between drivers’ race and sex and receiving a traffic citation following a moving violation in San Francisco between 2007 and 2016?
#### Three-way Chi-Square Tests for Independence and Cramer’s V Statistics for Determining the Relationship Between Driver Gender and Race and Receiving a Citation
Tests concluded that there was a significant, moderately sized relationship between race and receiving a citation from a moving violation for male drivers between 2007 and June 2016. Specifically, individual pairwise comparison tests and Cramer’s V statistics evidenced that Asian/Pacific Islander and Black male drivers and Black and other race male drivers had significantly different associations with receiving a moving violation citation at a moderate level.

[chi_squared_three_way_independence_testing.sas](https://github.com/sienaroma/sf_moving_violations/blob/main/chi_squared_three_way_independence_testing.sas)
