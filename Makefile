HUGO := hugo

.PHONY: dep build build-production build-prod prod serve

build-prod: build-production

prod: build-production

dep:
	git submodule update --init --recursive

update-dep:
	git submodule update --init --recursive --remote

build: static/js/dist
	$(HUGO) ${extra_args}

build-production: static/js/dist
	HUGO_ENV=production $(HUGO) --minify --cleanDestinationDir ${extra_args}

serve: static/js/dist
	$(HUGO) serve ${extra_args}

deploy:
	rclone sync --config scripts/deploy.rclone.conf --ignore-times ./public deploy:"garykim.dev"

static/js/dist: node_modules scripts/js.sh
	npm run build

node_modules: package.json
	npm i
