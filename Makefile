## PostgreSQL
psql:
	docker run -it --rm \
		-e PGPASSWORD=abc123 \
		--link my-pg:postgres \
		--net mytest_my_network \
		postgres \
		psql -h postgres -U postgres

