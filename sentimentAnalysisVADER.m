function[sentiment, scores] = sentimentAnalysisVADER(input_text):
Doc = tokenizedDocument(input_text);
[vaderScore, positiveScore, 
    negativeScore, neutralScore] = vaderSentimentScores(Doc);
if vaderScore >= 0.3
    sentiment = "positive";
elseif vaderScore <= -0.3
    sentiment = "negative";
else
    sentiment = "neutral";

