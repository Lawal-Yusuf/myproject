This is my project on my powerbi for superstore analysis visualization.
making use of card chart for the analysis of the total profit and total sales to get the round total figures for the total profit&sale made.
For the segment,region and category visual I make use of slicers and mark a dropdown filters in order to maximize the output to enable easy assement.
For the sum of sales by year,state with highest and lowest sale,sum of state by segment,the visual analysis is made with the donut chart to show the trend of the sales,inaccordance with the highest and lowest market trends and pattern for significant insight.For the state with highest and lowest sale it show califonia has the highest sale,for the sale by year,it shows 2014 generate most revenue.
The number of order for order base on month and year the visual is made with line chart for their supply.
For the top 10 customer the visual is made with clustered column chart to show case the name  of the top customer.
The top 5 profitable product make use of stacked column chart to get the trends of product with high sales.
For the profit margin by product category make use of pie chart to get the insight of  product  and  how there profit varies.
For the increase and decline of sale in region make use of line chart to get their trend with show the west has the highest sale .
For the top pick of sales make use of gauge chart to visualize the sale trends.

My project on northwind dataset for sql.
This report provides a comprehensive analysis of the SQL queries contained in the file for nortwind.
The queries aim to extract insights such as customer distribution, product inventory levels, sales performance, and employee activity. This report breaks down the valid queries by business area, explains the purpose of each, identifies and corrects the faulty queries, and provides recommendations for a more in-depth analysis.
The SQL script investigates the following areas:
The queries explore the geographic distribution of customers and their purchasing behavior.
It also provide insights into order patterns and employee performance in handling sales.
A key query identifies products with low stock levels (unitsinstock < 10), which is critical for reordering and preventing stockouts. It also identifies all discontinued products.
Employee & Supplier Information:Queries retrieve employees based on their hire date and format their names for better readability.
Supplier Data: The script filters suppliers by country (USA), which could be a first step in analyzing the supply chain. 

Adidas US sales Analysis with Excel.
This report provides a detailed analysis of the Adidas US sales data for the years 2020 and 2021. The primary dataset contains transactional sales records across various retailers, regions, and product categories. The total revenue generated during this period was approximately $899.76 million, with a total operating profit of $339.69 million, yielding an average operating margin of about 37.8%.
The analysis reveals that West Gear was the top-performing retailer by a significant margin in both revenue and profit. The most lucrative product category is Men's Street Footwear, which is the highest-selling product across most retailers. Sales are distributed across three methods: In-store, Online, and Outlet, with In-store and Online sales showing the highest profitability. The West region emerges as the most significant market, contributing the largest share of both sales and profit.

                                           MY PROJECT ON AI_JOB DATASET FOR PYTHON
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
df =pd.read_csv("ai_job_dataset.csv") this is used in calling out the file
df.isnull().sum()  this is use to check for error and empty spaces
What are the top 10 most common AI job titles?
print("top 10 most Ai job titles:",df['job_title'].head(10))
What cities/locations post the most AI jobs?
print("cities who post the most ai jobs:",df['company_location'].value_counts())
What are the most in-demand skills?
print(" what are the most in-demand skills:",df['required_skills'].value_counts().head())
What's the average salary by job title or experience level?
print(" average salary by job title or experience level:",df.groupby('job_title')['salary_usd'].mean().sort_values(ascending=False).head(5))
what is the common job type(eg.remote, full time)
print(" the common job title:",df['employment_type'].value_counts())
job count by title visual using bar chart.
job_counts = df['job_title'].value_counts().nlargest(5) plt.figure(figsize=(8, 5))
plt.bar(job_counts.index, job_counts.values, color=['red', 'green', 'blue', 'skyblue'])
plt.title('Job Count by Title')
plt.xlabel('Job Title')
plt.ylabel('Count')
plt.xticks(rotation=40)
plt.show()
pie chat for job distribution with their location
company_location = df['company_location'].value_counts()
plt.figure(figsize=(8, 8))
plt.pie(company_location, labels=company_location.index, autopct='%1.1f%%', startangle=130)
plt.title('Distribution of Companies by Location')
plt.show()
line plot for remote rating
remote= df['remote_ratio'].value_counts()
plt.figure(figsize = (8,3))
plt.plot(remote.index, remote.values,marker = 'o' , color ='green')
plt.title('remote rating')
plt.xlabel('remote')
plt.show()
Introduction This report provides an analysis of the AI job market based on the provided dataset. The analysis explores various aspects of AI job postings, including popular job titles, key locations, in-demand skills, salary trends, and common employment types. The findings are supported by data visualizations to offer a clear and comprehensive understanding of the current landscape of AI careers. Key Findings The analysis of the AI job dataset reveals several key trends in the industry: • Top AI Job Titles: The most frequently occurring job titles are "AI Research Scientist" and "AI Software Engineer," indicating a high demand for both research and development roles in the field. Other common titles include "AI Specialist," "NLP Engineer," and "AI Consultant." • Top Job Locations: Germany leads in the number of AI job postings, followed closely by Denmark, France, and Canada. This suggests a strong and widespread demand for AI talent across Europe and North America. • Most In-Demand Skills: The most sought-after skills are a combination of "Python, TensorFlow, and PyTorch," highlighting the importance of these technologies in the AI/ML space. • Average Salary by Job Title: "AI Specialist" commands the highest average salary, followed by "Machine Learning Engineer" and "Head of AI." This reflects the high value placed on specialized AI expertise. • Common Employment Types: The most common employment type is "Full-Time (FT)," followed by "Freelance (FL)," "Contract (CT)," and "Part-Time (PT)." This indicates that while full-time positions are the most prevalent, there is also a significant market for flexible work arrangements. Visualizations The following visualizations provide a graphical representation of the key findings: • Job Count by Title (Bar Chart): This chart illustrates the top five most common AI job titles, with "AI Specialist" and "Machine Learning Engineer" having the highest counts. • Distribution of Companies by Location (Pie Chart): This chart shows the geographic distribution of AI job postings, with Germany having the largest share (5.4%). • Remote Rating (Line Plot): This plot indicates the distribution of jobs based on their remote work options. A significant number of jobs offer a 50% remote work option, followed by fully remote (100%) and fully on-site (0%) positions. This report provides a snapshot of the AI job market, highlighting the key roles, skills, and locations that are currently in demand. The findings can be valuable for job seekers, employers, and anyone interested in understanding the trends shaping the future of work in artificial intelligence.
