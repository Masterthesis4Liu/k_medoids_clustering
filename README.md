# k_medoids_clustering
optimal solution of k_means_clustering

Because the k_means_clustering performs not so good, using the K_medoids_clustering as the optimal solution.

the difference between k_means-clustering and k_medoids-clustering:
kmedoids uses the k-means++ algorithm for choosing initial cluster medoid positions.

The k-means++ algorithm uses an heuristic to find centroid seeds for k-means clustering. k-means++ improves the running time of Lloyd's
algorithm, and the quality of the final solution.

Reference of k_means_clustering and k-means++ algorithm: https://de.mathworks.com/help/stats/kmeans.html
Reference of k_medoids_clustering: https://de.mathworks.com/help/stats/kmedoids.html

'plus' (default): Select k observations from X according to the k-means++ algorithm for cluster center initialization.
'sample': Select k observations from X at random.
'cluster': Perform preliminary clustering phase on a random subsample (10%) of X. This preliminary phase is itself initialized using 'sample': that is, the observations are selected at random.

I choose 15 as the number of clusters, although the value of average silhouette is besser when the nummer of clusters equal to 3. 
because i think, when we divided the datasets only into 3 groups, it's so small.

when you guys have any idea, just write down!!!
