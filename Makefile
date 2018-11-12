init:
	echo "Installing Python Dependencies"
	virtualenv -p python2 env
	./env/bin/pip install -r requirements.txt

run-python: FORCE
	echo "Running python service"
	./env/bin/python application.py

thrift: FORCE
	thrift -version
	thrift -r --gen py geometry.thrift

FORCE:
