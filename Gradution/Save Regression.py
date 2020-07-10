import numpy as np
from sklearn import metrics
from sklearn.linear_model import LinearRegression
import pandas as pd
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
from sklearn.externals import joblib
from sklearn.svm import SVC
from sklearn.tree import DecisionTreeClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from sklearn.naive_bayes import GaussianNB
from sklearn import svm

data = pd.read_csv("Regression.csv")
data.drop('Next Level', axis=1)# 1 Dividing the data into attributes and labels
y = data['Next Level']
#print(y.nunique())
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20,random_state=53)

Model = LinearRegression()
Model.fit(X_train, y_train)
print("LR-->LinearRegression")

# save the model to disk
joblib.dump(Model, 'Save_Regression.pkl')

pred = Model.predict(X_test)
print(pred)

print("Mean Squared Error = ", mean_squared_error(y_test, pred))

