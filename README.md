# oanhnn/docker-php

## Docker image.

Image | Base Image | Badges
------|------------|------- 
[`oanhnn/php:7.1-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.1-alpine/Dockerfile) | `alpine:3.7` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.1-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.1-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.1-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-alpine)
[`oanhnn/php:7.1-cli-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.1-cli-alpine/Dockerfile) | `php:7.1-cli-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.1-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-cli-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.1-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-cli-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.1-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-cli-alpine)
[`oanhnn/php:7.1-fpm-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.1-fpm-alpine/Dockerfile) | `php:7.1-fpm-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.1-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-fpm-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.1-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-fpm-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.1-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.1-fpm-alpine)
[`oanhnn/php:7.1-laravel`](https://github.com/oanhnn/docker-php/blob/master/7.1-laravel/Dockerfile) | `oanhnn/php:7.1-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.1-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.1-laravel) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.1-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.1-laravel) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.1-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.1-laravel)
[`oanhnn/php:7.2-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.2-alpine/Dockerfile) | `alpine:3.8` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.2-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.2-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.2-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-alpine)
[`oanhnn/php:7.2-cli-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.2-cli-alpine/Dockerfile) | `php:7.2-cli-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.2-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-cli-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.2-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-cli-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.2-cli-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-cli-alpine)
[`oanhnn/php:7.2-fpm-alpine`](https://github.com/oanhnn/docker-php/blob/master/7.2-fpm-alpine/Dockerfile) | `php:7.2-fpm-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.2-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-fpm-alpine) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.2-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-fpm-alpine) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.2-fpm-alpine.svg)](https://microbadger.com/images/oanhnn/php:7.2-fpm-alpine)
[`oanhnn/php:7.2-laravel`](https://github.com/oanhnn/docker-php/blob/master/7.2-laravel/Dockerfile) | `oanhnn/php:7.2-alpine` | [![](https://images.microbadger.com/badges/version/oanhnn/php:7.2-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.2-laravel) [![](https://images.microbadger.com/badges/image/oanhnn/php:7.2-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.2-laravel) [![](https://images.microbadger.com/badges/commit/oanhnn/php:7.2-laravel.svg)](https://microbadger.com/images/oanhnn/php:7.2-laravel)

## Build

[![Build Status](https://travis-ci.org/oanhnn/docker-php.svg?branch=master)](https://travis-ci.org/oanhnn/docker-php)

## Features

- [x] Base from PHP official image (tags: `7.x-cli-alpine`, `7.x-fpm-alpine`)
- [x] Using packages of Alpine OS (tags: `7.x-alpine`)
- [x] Install some PHP extensions: bcmath, gd, gmp, intl, opcache, pdo_mysql, pdo_pgsql, pcntl, zip, redis, imagick, xdebug

## Usage

- Use like with official image
- Set environment variable `PHP_ENABLE_XDEBUG=1` to enable XDebug extension

## Contributing

All code contributions must go through a pull request and approved by a core developer before being merged. 
This is to ensure proper review of all the code.

Fork the project, create a feature branch, and send a pull request.

If you would like to help take a look at the [list of issues](https://github.com/oanhnn/docker-php/issues).

## License

This project is released under the MIT License.   
Copyright © 2018 [Oanh Nguyen](https://github.com/oanhnn)   
Please see [License File](https://github.com/oanhnn/docker-php/blob/master/LICENSE) for more information.
