# Movie Recommendation System

## Project Overview

In this project, four different recommendation engines are built based on various ideas and algorithms to recommend movies. The goal is to compare their effectiveness and combine them into a hybrid system for more personalized recommendations.

## Code Files and Their Usage

### `movie_recommending_systems.ipynb`
This Jupyter Notebook contains the entire workflow for building and evaluating different recommendation systems. It includes the following key components:

1. **Introduction**:
   - Combines different recommendation algorithms (content-based, popularity-based, and collaborative filtering) to build an ensemble hybrid movie recommender system.
   - Utilizes both a full dataset and a smaller dataset due to computing power limitations.

2. **Simple Recommender**:
   - Uses overall TMDB Vote Count and Vote Averages to build Top Movies Charts, both in general and for specific genres.
   - Implements the IMDB Weighted Rating Metric to calculate ratings for sorting movies.
   - Provides generalized recommendations based on movie popularity and genre.

3. **Content-Based Recommender**:
   - Builds two content-based engines:
     - One uses movie overviews and taglines as input.
     - The other uses metadata such as cast, crew, genre, and keywords.
   - Incorporates a filter to give greater preference to movies with more votes and higher ratings.

4. **Collaborative Filtering**:
   - Utilizes the Surprise Library to build a collaborative filter based on Singular Value Decomposition (SVD).
   - Achieves an RMSE of less than 1, indicating good prediction accuracy.
   - Provides estimated ratings for given users and movies, making recommendations based on similar users' preferences.

5. **Hybrid Recommender**:
   - Combines ideas from content-based and collaborative filtering engines.
   - Inputs: User ID and the title of a movie.
   - Outputs: Similar movies sorted based on expected ratings for that particular user.
   - Provides personalized and tailored recommendations for users.

## Conclusion

The project demonstrates the development and evaluation of different recommendation systems for movies, culminating in a hybrid recommender that offers personalized suggestions. By integrating content-based and collaborative filtering techniques, the hybrid system delivers more accurate and user-specific movie recommendations.
