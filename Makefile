## PostgreSQL
psql:
	docker run -it --rm \
		-e PGPASSWORD=abc123 \
		--link my-pg:postgres \
		postgres \
		psql -h postgres -U postgres
