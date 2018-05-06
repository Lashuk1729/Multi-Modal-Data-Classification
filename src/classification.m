labels = reshape(ground_truth,size(ground_truth,1)*size(ground_truth,2),1);
features = reshape(A,size(A,1)*size(A,2),1);
svm_model = fitcsvm(double(features),labels);

[pred_labels, score] = predict(svm_model,double(features));
res = reshape(pred_labels,size(ground_truth,1),size(ground_truth,2));