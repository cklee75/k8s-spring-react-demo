## Readme

backend 
eval $(minikube docker-env)
mvn spring-boot:build-image -Dspring-boot.build-image.imageName=ademide/demo-backend

frontend
cd frontend/
docker build -t ademide/demo-frontend -f frontend.Dockerfile .

k8s
cd ..
kubectl apply -f k8s/

expose port
sudo -E kubectl port-forward svc/demo-frontend 80:80
