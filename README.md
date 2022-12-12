gasp-dockerfiles is an different way to call the containers used in an AppSec Pipeline based on the AppSec Pipeline Specification and compatable with it.  See the spec at https://github.com/appsecpipeline/AppSecPipeline-Specification

docker build -f ./gasp-base . -t mtesauro/gasp-base:1.0.0 

docker build -f ./gasp-git . -t mtesauro/gasp-git:1.0.0

docker build -f ./gasp-bandit . -t mtesauro/gasp-bandit:1.0.0

docker build -f ./gasp-defectdojo . -t mtesauro/gasp-defectdojo:1.0.0

These dockerfiles were created to use with [gasp-docker](https://github.com/appsecpipeline/gasp-docker)

The gasp-docker projects is a proof of concept implementation of the [Appsec Pipeline Specification](https://github.com/appsecpipeline/AppSecPipeline-Specification)
