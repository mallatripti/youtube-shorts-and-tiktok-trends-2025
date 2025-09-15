Title : YouTube Shorts and TikTok Trends 2025

Project Overview : This project analyzes a dataset of trending content from YouTube Shorts and TikTok to uncover key trends and patterns. Using SQL, I've cleaned and aggregated the data to answer a series of questions about content performance, music trends, and geographic popularity.

Introduction : YouTube Shorts and TikTok trends are very popular these days so I've tried to show trends and patterns using SQL.
This project demonstrates my proficiency in Data cleaning, manipulation, and complex aggregation in SQL.

Data Source : The data for this project comes from the "YouTube Shorts and TikTok Trends" dataset on Kaggle. It contains information on various trending videos, including their platform, location, themes, music genres, and engagement metrics.
Link : https://www.kaggle.com/datasets/tarekmasryo/youtube-shorts-and-tiktok-trends-2025

Analysis:

-- Shows all data from trends
SELECT \* FROM trends;

-- Shows column details
PRAGMA table_info(trends);

-- Shows total number of data
SELECT count(\*) FROM trends;

-- View the first 10 rows to see what the data looks like
SELECT \* FROM trends LIMIT 10;

-- Check for distinct platforms
SELECT DISTINCT platform FROM trends;

-- Count how many videos are from Youtube Shorts vs TikTok
SELECT platform, count(\*) as video_count
FROM trends
group by platform
ORDER by video_count;

-- Find most common video category
SELECT category , count(\*) as category_count
FROM trends
group by category
order by category_count DESC
LIMIT 5 ;

-- Show top 5 countries by views
SELECT country,
sum(views) as total_views
FROM trends
GROUP by country
ORDER by total_views
limit 5;

-- Average engagement rate by region
SELECT region, avg(engagement_rate) as avg_engagement_rate
FROM trends
GROUP by region
order by avg_engagement_rate DESC;

-- Most popular music tracks
SELECT music_track, sum(likes) as total_likes
FROM trends
GROUP by music_track
ORDER by total_likes DESC
LIMIT 10;

-- Video length by category
SELECT category, avg(duration_sec) as avg_duration
FROM trends
GROUP by category
ORDER by avg_duration DESC;
