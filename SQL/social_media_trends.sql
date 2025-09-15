SELECT * FROM trends;
PRAGMA table_info(trends);
SELECT count(*) FROM trends;


-- View the first 10 rows to see what the data looks like
SELECT * FROM trends LIMIT 10;

-- Check for distinct platforms
SELECT DISTINCT platform FROM trends;

-- Count how many videos are from Youtube Shorts vs TikTok 
SELECT platform, count(*) as video_count
FROM trends
group by platform
ORDER by video_count;

-- Find most common video category
SELECT category , count(*) as	category_count
FROM trends
group by category
order by category_count DESC;

-- Show top 5 countries by views
SELECT country, 
sum(views) as total_views
FROM trends
GROUP by country
ORDER by total_views
limit 5;

-- Average engagement rate by region
SELECT  region, avg(engagement_rate) as avg_engagement_rate
FROM trends
GROUP by region
order by avg_engagement_rate DESC;

-- Most popular music tracks
SELECT music_track, sum(likes) as total_likes
FROM trends
GROUP by music_track
ORDER by total_likes DESC
LIMIT 10;





