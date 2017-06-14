psql:
	docker run -it --rm \
		--link my-pg:postgres \
		--net `docker inspect my-pg -f "{{.HostConfig.NetworkMode}}"` \
		postgres \
		psql -h postgres -U postgres
