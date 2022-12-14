build: centos-7.2009.5-202103011045.qcow2
	docker build -t vsb-ves-ce .

centos-7.2009.5-202103011045.qcow2:
	wget https://downloads.volterra.io/releases/images/2021-03-01/centos-7.2009.5-202103011045.qcow2
	qemu-img resize centos-7.2009.5-202103011045.qcow2 50G

push:
	docker tag vsb-ves-ce marcelwiget/vsb-ves-ce
	docker push marcelwiget/vsb-ves-ce

apply:
	envsubst < mwce1.yaml | kubectl apply -f -
	envsubst < mwce2.yaml | kubectl apply -f -
	envsubst < mwce3.yaml | kubectl apply -f -

delete:
	kubectl delete -f mwce1.yaml
	kubectl delete -f mwce2.yaml
	kubectl delete -f mwce3.yaml
