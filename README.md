# aws-circleci-laradock

CI flow of aws - circleci - laradock

## laradock
```
git clone https://github.com/Laradock/laradock.git
cd laradock
cp env-sample .env
docker-compose up -d nginx
docker-compose exec --user=laradock workspace bash
composer create-project --prefer-dist laravel/laravel sample
exit
vi .env # APP_CODE_PATH_HOST=../sample
docker-compose stop
docker-compose up -d nginx
```

