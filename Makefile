
.PHONY: env clean build test run_interactive publish deploy run

build:
	@echo "MAKE build ==========================================="
	 ./build-maven.sh

copy:
	@echo "MAKE copy ==========================================="
	 ./copy-artifacts.sh

docker-run:
	@echo "MAKE docker-run ==========================================="
	 ./docker-run.sh

docker-build:
	@echo "MAKE docker-build ==========================================="
	 ./docker-build.sh
