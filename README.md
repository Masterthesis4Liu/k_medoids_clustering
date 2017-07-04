# k_medoids_clustering
optimal solution of k_means_clustering

Because the k_means_clustering performs not so good, using the K_medoids_clustering as the optimal solution.

the difference between k_means-clustering and k_medoids-clustering:
kmedoids uses the k-means++ algorithm for choosing initial cluster medoid positions.

The k-means++ algorithm uses an heuristic to find centroid seeds for k-means clustering. k-means++ improves the running time of Lloyd's
algorithm, and the quality of the final solution.

Reference of k_means_clustering and k-means++ algorithm: https://de.mathworks.com/help/stats/kmeans.html
Reference of k_medoids_clustering: https://de.mathworks.com/help/stats/kmedoids.html
