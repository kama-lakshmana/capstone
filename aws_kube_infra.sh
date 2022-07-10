count=$(grep -i eksctl-capstone output.txt | wc -l)
if [[ $count -gt 0 ]]
    then 
    echo "Skipping Cluster creation .. Infrastructure Exists"
    else
    echo "Creating AWS Kubernetes cluster"
    eksctl create cluster --name capstone-udacity --version 1.19 --region $AWS_DEFAULT_REGION --nodegroup-name capstone --node-type t3.large --nodes-min 2 --nodes-max 4 --managed
fi