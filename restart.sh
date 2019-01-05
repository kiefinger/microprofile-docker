docker stop  $(docker ps -a -q)
docker rm  $(docker ps -a -q)
if [ x$1 = "xrun"  ]
then
	./run.sh
	docker ps -a -q
	CI=$(docker ps -a -q)
fi

