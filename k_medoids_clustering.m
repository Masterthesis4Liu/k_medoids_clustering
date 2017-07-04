close all;
clear;
clc;

data = csvread('output_without_y.csv');

list_average_silhouette = [];
for i=3:20
    opts = statset('Display','iter','MaxIter',10000);
    [idx,C,sumd,D,midx,info] = kmedoids(data,i,'Distance','correlation','Start','sample','replicates',20,'Options',opts);%Distance influence on the resluts.
    hold on;
    figure(i);
    [silh,h] = silhouette(data,idx,'correlation');
    h = gca;
    h.Children.EdgeColor = [0.8 0.8 1];
    xlabel('Silhouette Value');
    ylabel('Cluster')   
    mean_silh = mean(silh);
    fprintf('The average silhouette of Cluster%d is:%d\n',i,mean_silh);
    list_average_silhouette(end+1) = mean_silh;
end
disp(list_average_silhouette');
plot(3:20,list_average_silhouette,'b--o');
xlabel('Number of clusters');
ylabel('Average silhouette of Cluster');

[idx,C,sumd,D,midx,info] = kmedoids(data,15,'Distance','correlation','replicates',20,'Options',opts);

%calculate the percentage of each cluster.
idx_nrs = histc(idx, 1:max(idx));   
idx_pctg = idx_nrs/size(idx,1); 
hist_idc_pctg = [idx_pctg'; 1:max(idx)];
% fprintf('The percentage of each cluster are:\n');
% disp(hist_idc_pctg);

%show the centroid index of each cluster.
centroid_index = [];
for j=1:size(C,1)
    t = ismember(data,C(j,:),'rows');
    index = find(t == 1);
    centroid_index(end+1) = index;
end
show_matrix = [1:max(idx);idx_pctg';centroid_index];
disp(show_matrix);
