build:
	docker build -t elliottregan/sass-utility-module . $(c)

run:
	docker run --rm -it \
	--name sass-utility-module \
	-v `pwd`:/app \
	-v /app/node_modules \
	elliottregan/sass-utility-module $(c)

develop:
	make run c="npm run dev"

update:
	make run c="npm update"

audit-fix:
	make run c="npm audit fix"