# Hacker News Trends Analysis  

## Overview  
Hacker News, a Y Combinator platform, is widely known in the tech industry for sharing news, showcasing projects, and engaging discussions. This project analyzes the **hacker_news** dataset, which includes:  
- `title`: Story title  
- `user`: Submitter  
- `score`: Story score  
- `timestamp`: Submission time  
- `url`: Story link  

Using SQL, the project answers key questions:  
1. **Top Stories**: Identify the highest-scoring stories.  
2. **User Dominance**: Check if a small percentage of users dominate scores (1-9-90 rule).  
3. **Referral Sources**: Determine which sites (e.g., GitHub, Medium) contribute most to Hacker News.  
4. **Optimal Posting Time**: Analyze the best times for submitting stories to maximize scores.  

## Objective  
To extract meaningful trends, evaluate user participation, and suggest strategies for better engagement on Hacker News.  

# Hacker News Trends Analysis

## Understanding the Dataset

### 1. Top 5 Stories with Highest Scores
```sql
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;
```

## Hacker News Moderating

### 2. Total Score of All Stories
```sql
SELECT SUM(score) AS total_score
FROM hacker_news;
```

### 3. Users with Combined Scores Over 200
```sql
SELECT user, SUM(score) AS total_user_score
FROM hacker_news
GROUP BY user
HAVING total_user_score > 200;
```

### 4. Percentage of Points by Power Users
```sql
SELECT (SUM(score) * 1.0 / (SELECT SUM(score) FROM hacker_news)) * 100 AS percentage
FROM hacker_news
WHERE user IN (
  SELECT user
  FROM hacker_news
  GROUP BY user
  HAVING SUM(score) > 200
);
```

### 5. Rickroll Link Count by User
```sql
SELECT user, COUNT(*) AS rickroll_count
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user;
```

## Which Sites Feed Hacker News?

### 6. Categorize Stories by Source
```sql
SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
END AS Source
FROM hacker_news;
```

### 7. Count Stories from Each Source
```sql
SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
END AS Source, COUNT(*) AS story_count
FROM hacker_news
GROUP BY 1;
```

## What's the Best Time to Post a Story?

### 8. Extract and Explore Timestamp
```sql
SELECT timestamp
FROM hacker_news
LIMIT 10;
```

### 9. Extract Hour from Timestamp
```sql
SELECT timestamp, strftime('%H', timestamp) AS hour
FROM hacker_news
GROUP BY 1
LIMIT 20;
```

### 10. Average Score and Story Count by Hour
```sql
SELECT strftime('%H', timestamp) AS hour,
       ROUND(AVG(score), 2) AS avg_score,
       COUNT(*) AS story_count
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY hour
ORDER BY avg_score DESC;
```

### 11. Best Hours to Post
```sql
SELECT strftime('%H', timestamp) AS hour,
       ROUND(AVG(score), 2) AS avg_score,
       COUNT(*) AS story_count
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY hour
ORDER BY avg_score DESC;
