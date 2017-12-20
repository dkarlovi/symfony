QA_DOCKER_IMAGE=dkarlovi/phpqa-toolbox:latest
QA_DOCKER_COMMAND=docker run -it --rm -v "$(shell pwd):/project" -w /project ${QA_DOCKER_IMAGE}

phpstan:
	sh -c "${QA_DOCKER_COMMAND} phpstan analyse --configuration phpstan.neon --level 0 src/N"

##
# Special operations
##

.PHONY: phpstan
