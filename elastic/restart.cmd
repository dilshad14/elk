

REM delete all first

kubectl delete -f ./05_es_service.yaml
kubectl delete -f ./04_es_deployment.yaml
kubectl delete -f ./03_es_configmap.yaml
REM kubectl delete -f ./01_es_pv.yaml
kubectl delete -f ./02_es_pvc.yaml
kubectl delete -f ./00_es_local_storage_class.yaml


@echo off
set /p resp=" do u wish to deploy artifacts  (y/n): "


if %resp%==y kubectl create -f ./00_es_local_storage_class.yaml && kubectl create -f ./01_es_pv.yaml && kubectl create -f ./02_es_pvc.yaml && kubectl create -f ./03_es_configmap.yaml && kubectl create -f ./04_es_deployment.yaml && kubectl create -f ./05_es_service.yaml
