import joblib
import pandas as pd
from sklearn import metrics, svm
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from numpy.core.tests.test_scalarinherit import C
from sklearn.metrics import f1_score
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
from sklearn.tree import DecisionTreeRegressor, tree, DecisionTreeClassifier
from sklearn.decomposition.pca import PCA
from sklearn.linear_model import LogisticRegression
import libsvm
import numpy as np

data = pd.read_csv("Classification.csv")
X = data.drop('Next Level', axis=1) #1 Dividing the data into attributes and labels
y = np.array(data['Next Level'])
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20, random_state=12)

Model = svm.SVC(kernel='linear')
Model.fit(X_train, y_train)


# save the model to disk
joblib.dump(Model, 'Save_Classification.pkl')

pred = Model.predict(X_test)
print(pred)
# print(confusion_matrix(y_test, pred))

print("acuracy:", metrics.accuracy_score(y_test, pred))
#precision score
print("precision:", metrics.precision_score(y_test, pred, average='weighted'))
#recall score
print("recall", metrics.recall_score(y_test, pred, average='weighted'))
print(metrics.classification_report(y_test, pred))