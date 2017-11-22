import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from tpot import TPOTClassifier

data = pd.read_csv("data/encoded_features.csv")
features = data.iloc[:,:10]
targets = data.iloc[:,10]

X_train, X_test, y_train, y_test = train_test_split(features, targets, test_size=0.3)

tpot = TPOTClassifier(generations=250, population_size=250, verbosity=2)
tpot.fit(X_train, y_train)
