cd image/

# Build the image
docker build -f Dockerfile -t k8s-content-gen:v1 .

# Load the image into the K8s cluster
# Replace <YOUR_CLUSTER_NAME> with your kind cluster name (kind get clusters)
kind load docker-image k8s-content-gen:v1 --name <YOUR_CLUSTER_NAME>

cd ..
