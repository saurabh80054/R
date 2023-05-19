library(datasets) # contains iris dataset
library(cluster)  # clustering algorithms
library(factoextra) # visualization
library(purrr) # to use map_dbl() function

# Load and preprocess the dataset

df <- iris[, 1:4]
# Missing value treatment
df <- na.omit(df)
# Scaling features
df <- scale(df)

# Calculating distance between rows
d <- dist(df, method="euclidean")
d
# Hierarchical Clustering
hc1 <- hclust(d, method = "complete")
plot(hc1, cex = 0.6, hang=-1)
# Visualising cluster
sub_grps <- cutree(hc1, k=3)
fviz_cluster(list(data = df, cluster = sub_grps))

# Grouping dendogram
plot(hc1, cex = 0.6, hang=-1)
rect.hclust(hc1, k = 3, border=2:4)
