#Docker Spring
https://spring.io/guides/gs/spring-boot-docker/#scratch

#./gradlew build docker
./gradlew build

https://spring.io/guides/gs/spring-boot-docker/

https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/

docker build -t com.fsistemas/dockerboot-demo .
docker build -t spring-boot-app .

docker run -p 8080:8080 -t com.fsistemas/dockerboot-demo
docker run -p 8080:8080 -t com.fsistemas/dockerboot-demo -rm

##Docker/Gradle:
https://stackoverflow.com/questions/46792438/build-gradle-project-inside-a-docker
https://codefresh.io/docs/docs/learn-by-example/java/gradle/
https://aboullaite.me/multi-stage-docker-java/
https://stackoverflow.com/questions/58921992/build-docker-image-that-used-java-11
https://github.com/WISVCH/docker-spring-boot-base
https://dzone.com/articles/spring-boot-run-and-build-in-docker

##Memory & Settings:
https://merikan.com/2019/04/jvm-in-a-container/


#Kubernetes:
https://itnext.io/migrating-a-spring-boot-service-to-kubernetes-in-5-steps-7c1702da81b6

kubectl apply -f secrets.yml
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl apply -f ingress.yml

#kubectl set image deployment/spring-boot-deployment spring-boot-app=your-new-image
kubectl scale deployment spring-boot-deployment --replicas=10

#Scaling
https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#scaling-a-deployment

kubectl apply -f 01-deployment-full.yml

Logs:
kubectl logs --follow  spring-boot-deployment-546dcbf4df-xwnjh

https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#configure-probes
https://blog.papertrailapp.com/how-to-live-tail-kubernetes-logs/

kubectl scale deployment spring-boot-deployment --replicas=10

kubectl get rs

kubectl get pods

kubectl describe deployments

https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/

kubectl delete -f ingress.yml
kubectl delete -f service.yml
kubectl delete -f deployment.yml

https://kubernetes.io/docs/concepts/services-networking/ingress/

https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/

https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/

https://kubernetes.io/docs/concepts/services-networking/service/

