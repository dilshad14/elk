

REM delete all first

kubectl delete -f ./00_kibana_deployment.yaml
kubectl delete -f ./01_kibana_service.yaml


@echo off
set /p resp=" do u wish to deploy artifacts  (y/n): "


if %resp%==y kubectl create -f ./00_kibana_deployment.yaml && kubectl create -f ./01_kibana_service.yaml
