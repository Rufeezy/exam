1 ЗАДАНИЕ: Собрать образ и с помощью docker-compose запустить и проверить его.

1) Скопировать репозиторий на сервер master, где установлены пакеты Jenkins, ansible и docker.
2) Написать Dockerfile для сборки образа.
3) После того как собрали образ, написать docker-compose.yaml для того чтобы запустить и проверить контейнеры
	docker-compose будет состоять из двух контейнеров, так как наш микросервис работает с redis, для быстрой работы.

2 ЗАДАНИЕ: Настройка Jenkins и создание Jenkinsfile

1) В вашем пайплайне должно быть 2 стейджа это build и deploy, и сделать trigger, чтобы при изменении кода ваше приложение автоматически пересобиралось.
2) В стейдже build вы должны собрать приложение NodeJS с помощью Dockerfile и запушить его в свой Docker registry на DockerHUB.
3) В стейдже deploy должен запускаться playbook.yaml
	Содержимое playbook.yaml:
		Установить Docker и docker-compose на Server1 и Server2
		Отправить docker-compose на сервера
		Сделать Docker login
		Запустить docker-compose.yaml
	
Ссылки для быстрого поиска:
https://docs.docker.com/compose/gettingstarted/ - docker-compose
https://docs.docker.com/language/nodejs/build-images/ -  NodeJS Dockerfile
https://www.jenkins.io/doc/book/pipeline/jenkinsfile/  - Jenkinsfile
https://docs.ansible.com/ansible/latest/network/getting_started/first_playbook.html - playbook.yaml
