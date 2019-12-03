HUGO := hugo

.PHONY: dep build build-production build-prod prod serve

build-prod: build-production

prod: build-production

dep:
	git submodule update --init --recursive

update-dep:
	git submodule update --init --recursive --remote

build: 
	$(HUGO) ${extra_args}

build-production:
	HUGO_ENV=production $(HUGO) --minify --cleanDestinationDir ${extra_args}

serve:
	$(HUGO) serve ${extra_args}

deploy:
	rclone sync --config scripts/deploy.rclone.conf --ignore-times ./public deploy:"garykim.dev"
