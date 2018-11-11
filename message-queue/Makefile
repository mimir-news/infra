NAME = $(shell appv name)
IMAGE = $(shell appv image)
VERSION = $(shell appv version)

export MESSAGE_QUEUE_IMAGE=$(IMAGE)


build:
	mypy build-image.py
	python build-image.py

run:
	docker run -d --name mq --hostname mq \
		--network=mimir-net -p 5672:5672 -p 15672:15672 \
	    $(IMAGE)	

run-producer:
	mypy --ignore-missing-imports clients/producer.py
	python clients/producer.py

run-worker:
	mypy --ignore-missing-imports clients/worker.py
	python clients/worker.py
