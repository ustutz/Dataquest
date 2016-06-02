import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns

sns.set_style("whitegrid")
data = np.random.normal(size=(20, 6)) + np.arange(6) / 2

f, ax = plt.subplots()
sns.violinplot(data)
sns.despine(offset=10, trim=True);

plt.show()