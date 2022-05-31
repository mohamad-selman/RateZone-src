import joblib
import pandas as pd
import string
import re
# import nltk
# nltk.download('stopwords')
from nltk.corpus import stopwords
from django.contrib.staticfiles.storage import staticfiles_storage

# Preprocessing. For ML prediction
def preprocess(text):
    # List of punctuations
    punctuations = '''`÷×؛<>_()*&^%][ـ،/:"؟.,'{}~¦+|!”…“–ـ''' # Arabic
    punctuations += string.punctuation # English

    # Stop words
    stop_words = stopwords.words('arabic') # Arabic
    stop_words = stop_words + stopwords.words('english') # English

    # Arabic diacritics
    arabic_diacritics = re.compile('''
                                ّ    | # Shadda
                                َ    | # Fatha
                                ً    | # Tanwin Fath
                                ُ    | # Damma
                                ٌ    | # Tanwin Damm
                                ِ    | # Kasra
                                ٍ    | # Tanwin Kasr
                                ْ    | # Sukun
                                ـ     # Tatwil/Kashida
                            ''', re.VERBOSE)
    # Remove punctuations
    translator = str.maketrans('', '', punctuations)
    text = text.translate(translator)

    # Remove diacritics
    text = re.sub(arabic_diacritics, '', text)

    # Normalize text (remove longation)
    text = re.sub("[إأآا]", "ا", text)
    text = re.sub("ى", "ي", text)
    text = re.sub("ؤ", "ء", text)
    text = re.sub("ئ", "ء", text)
    text = re.sub("ة", "ه", text)
    text = re.sub("گ", "ك", text)

    # Remove repeating char
    text = re.sub(r'(.)\1+', r'\1', text)

    # Remove stop words
    text = ' '.join(word for word in text.split() if word not in stop_words)

    return text

def predict(s):
    s = preprocess(s)
    model = joblib.load('main/static/ML/model.pkl')
    return model.best_estimator_.predict([s])[0]
