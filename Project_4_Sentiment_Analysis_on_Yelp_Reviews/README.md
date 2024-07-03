# Sentiment Analysis on Yelp Reviews

## Project Overview

This project conducts sentiment analysis on Yelp reviews using Python, employing various word embedding techniques and an LSTM neural network model. The analysis aims to compare the performance of different word embeddings and build an effective LSTM model for sentiment classification.

## Code Files and Their Usage

### `sentiment_analysis.ipynb`
This Jupyter Notebook contains the entire workflow for the sentiment analysis project. It includes the following key components:

1. **Introduction**:
   - The project uses the Yelp Review Sentiment Dataset from Kaggle.
   - The goal is binary classification, where negative polarity is class 1, and positive polarity is class 2.

2. **Text Cleaning and Preprocessing**:
   - Initial steps to clean and preprocess the text data before feeding it into the models.

3. **Word Embedding Techniques**:
   - **Keras Default Embedding**:
     - Embedding layers in Keras are trained like any other layer to minimize the loss function.
     - The learned embeddings capture the emotional polarity rather than complete word semantics.
   - **GloVe (Global Vectors for Word Representation)**:
     - GloVe is an unsupervised learning algorithm that obtains vector representations for words by training on aggregated global word-word co-occurrence statistics.
   - **Word2Vec**:
     - Word2Vec is a family of model architectures (Continuous Bag-of-Words and Continuous Skip-gram models) used to learn word embeddings from large datasets.
     - Both pre-trained and self-trained embeddings using the Gensim library are explored.

4. **LSTM Neural Network**:
   - Long Short-Term Memory (LSTM) networks are used to process sequences of data, suitable for sentiment analysis tasks.
   - An LSTM model is built and trained using the different word embedding techniques.

5. **Model Training and Evaluation**:
   - Each embedding technique's performance is compared by training the LSTM model and evaluating its accuracy and other relevant metrics.
   - Techniques like stratified sampling are used to handle data imbalance and improve model performance.

## Conclusion

The project successfully demonstrates sentiment analysis on Yelp reviews using different word embedding techniques and an LSTM neural network. By comparing the performance of Keras Default Embedding, GloVe, and Word2Vec embeddings, the analysis identifies the most effective approach for sentiment classification, providing valuable insights for further improvements and applications.
