psql:
	docker run -it --rm \
		-e PGPASSWORD=abc123 \
		--link my-pg:postgres \
		--net mytest_default \
		postgres \
		psql -h postgres -U postgres

up:
	docker-compose -p mytest up
