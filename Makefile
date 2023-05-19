.PHONY: tests dependencies coverage docker-build docker-tests docker-coverage
default:
	@printf "$$HELP"

# Docker commands
docker-build:
	docker build -t java-docker-bootstrap .

docker-tests:
	@docker run --rm -t -v ${PWD}:/var/www/html/app java-docker-bootstrap /var/www/html/app/gradlew -q giveProperName

docker-bash:
	@docker run --rm -it -v ${PWD}:/var/www/html/app java-docker-bootstrap bash


define HELP
# Local commands
	- make dependencies\tInstall the dependencies using composer
	- make tests\t\tRun the tests
# Docker commands
	- make docker-build\t\tCreates a PHP image with xdebug and install the dependencies
	- make docker-tests\t\tRun the tests on docker
	- make docker-bash\t\tEnter to container
 Please execute "make <command>". Example make help

endef

export HELP
