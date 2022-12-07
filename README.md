# Carbon Case Deployment Configuration

This repository contains configuration files and instructions for the deployment of the carbon case application on a Docker/Portainer server.

NB: Where you read `energietransitiewindesheim.nl` below, you should subsitute your own domain.

## Table of contents
- [Prerequisites](#prerequisites)
- [Deploying](#deploying)
- [Updating](#updating)
- [Features](#features)
- [Status](#status)
- [License](#license)
- [Credits](#credits)

## Prerequisites

This repository assumes that the configuration will be deployed on the following infrastructure:
- Linux server (Ubuntu 20.04)
- Docker
- Portainer
- Running Traefik container on `web` network.

### Domain setup

The configuration will use Traefik to route the domains below to their respective containers.

#### Production environment

- `carboncase.energietransitiewindesheim.nl`: Landing page.
- `app.carboncase.energietransitiewindesheim.nl`: App frontend.
- `dash.carboncase.energietransitiewindesheim.nl`: Management dashboard frontend.
- `api.app.carboncase.energietransitiewindesheim.nl`: App API backend.
- `api.dash.carboncase.energietransitiewindesheim.nl`: Management dashboard API backend.

#### Test environment

- `app.carboncase.tst.energietransitiewindesheim.nl`: App frontend.
- `dash.carboncase.tst.energietransitiewindesheim.nl`: Management dashboard frontend.
- `api.app.carboncase.tst.energietransitiewindesheim.nl`: App API backend.
- `api.dash.carboncase.tst.energietransitiewindesheim.nl`: Management dashboard API backend.
- `deploy.carboncase.tst.energietransitiewindesheim.nl`: Webhook to update test container images.

## Deploying

Use the following steps to deploy a Portainer stack. 
> At Windesheim we use Portainer stacks, but the docker-compose files can also be deployed without Portainer, using [Docker Compose](https://docs.docker.com/get-started/08_using_compose/#run-the-application-stack).

Add a new stack according to the following steps:
1. Go to `stacks` in portainer.
2. Click on `Add stack`.
3. Give the stack a name.
4. Select `git repository` as the build method.
5. Set the `repository URL` to: 
    ```
    https://github.com/energietransitie/carboncase-deployment-configuration
    ```
6. Leave the `repository reference` to use the default.
7. Set the `compose path` to point to the docker-compose.yml you want to deploy.
    - Use the following path for production:
        ```
        production/docker-compose.yml
        ```
    - Use the following path for test:
        ```
        test/docker-compose.yml
        ```
8. Add the corresponding environment variables for the environment ([production](#production) or [test](#test)). Click on `Add an environment variable` to add additional variables.
9. Click on `Deploy the stack`.

### Production

The production environment requires the following enironment variables to be set in the Portainer stack.

#### `WP_DB_USER`

This environment variable is used to set the database user for the wordpress database.

Example values: `wordpress` or `user`

#### `WP_DB_PASSWORD`

This environment variable is used to set the database password for the wordpress database.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `APP_TAG`

This environment variable is used to set the tag for the carbon case app image.

Example values: `v1.0.0` or `v1.0.0-rc.1`

#### `APP_API_TAG`

This environment variable is used to set the tag for the carbon case app API image.

Example values: `v1.0.0` or `v1.0.0-rc.1`

#### `MANAGEMENT_TAG`

This environment variable is used to set the tag for the carbon case management image.

Example values: `v1.0.0` or `v1.0.0-rc.1`

#### `MANAGEMENT_API_TAG`

This environment variable is used to set the tag for the carbon case management API image.

Example values: `v1.0.0` or `v1.0.0-rc.1`

#### `MSSQL_SA_PASSWORD`

This environment variable is used to set the database system administrator password.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `DB_DATABASE`

This environment variable is used to set which database should be created.

Example values: `app` or `test`

#### `DB_USER`

This environment variable is used to set the database user for the app database.

Example values: `app` or `user`

#### `DB_PASSWORD`

This environment variable is used to set the database password for the app database.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `Authentication:JwtBearer:SecretKey`

This environment variable is used to set the key used for signing the JWT token used for user authorization. NOTE: this must be a string that is at least 128 bit.

Example values: `YzhSGXWIWqjDvSlUbDUWC6jlPGy9vdlPPHnDHI63v50wcN4l1k4BreFaw6pC5BgUlBzyxvhBhpokNrg9lfmjt2V7geo9CniLV2bu` or `pl0vyh6y3tDvHHCBcfj6knlhN9lW9FjDGUGxgLNeqz2XbU7rpdVleDIWuSa2hmYvwBglir4Bvzk5VogbPwl46U5InSWPP1BCo9jC`

#### `Email:User`

This environment variable is used to set the email account username which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `test@test.nl` or `hello@carboncasecalculator.example`

#### `Email:Password`

This environment variable is used to set the email account password which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `Email:DisplayName`

This environment variable is used to set the email account display name which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `Energietransitie Windesheim` or `Carbon Case Calculator`


### Test

The test environment requires the following enironment variables to be set in the Portainer stack.

#### `MSSQL_SA_PASSWORD`

This environment variable is used to set the database system administrator password.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `DB_DATABASE`

This environment variable is used to set which database should be created.

Example values: `app` or `test`

#### `DB_USER`

This environment variable is used to set the database user for the app database.

Example values: `app` or `user`

#### `DB_PASSWORD`

This environment variable is used to set the database password for the app database.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `Authentication:JwtBearer:SecretKey`

This environment variable is used to set the key used for signing the JWT token used for user authorization. NOTE: this must be a string that is at least 128 bit.

Example values: `YzhSGXWIWqjDvSlUbDUWC6jlPGy9vdlPPHnDHI63v50wcN4l1k4BreFaw6pC5BgUlBzyxvhBhpokNrg9lfmjt2V7geo9CniLV2bu` or `pl0vyh6y3tDvHHCBcfj6knlhN9lW9FjDGUGxgLNeqz2XbU7rpdVleDIWuSa2hmYvwBglir4Bvzk5VogbPwl46U5InSWPP1BCo9jC`

#### `Email:User`

This environment variable is used to set the email account username which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `test@test.nl` or `hello@carboncasecalculator.example`

#### `Email:Password`

This environment variable is used to set the email account password which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `78sb6g654b56sdv7s89dv` or `as78sdv78sfdv67sdv5dc8sdv09sv`

#### `Email:DisplayName`

This environment variable is used to set the email account display name which is used for sending e-mails for account confirmation in the management dashboard.

Example values: `Energietransitie Windesheim` or `Carbon Case Calculator`

#### `WATCHTOWER_HTTP_API_TOKEN`

This environment variable is used to set the HTTP API token for watchtower webhook to update the test images.

Example values: `nb4!6&JtB!j82j$tzYb%#kH1` or `l2D@K7zOAjpCMn#I54b^%uv#`

## Updating

When a `docker-compose.yml` for a stack is changed, the new configuration will be updated automatically. This can take up to 10 minutes.

If you wish to update a stack manually (when you want to change environment variables), you can do so by following the steps below:

1. Go to `Stacks` in [portainer](https://docker.energietransitiewindesheim.nl).
2. Click on the stack you want to update.
3. You can change environment here.
4. Click on `Save settings` to save the environment variables.
4. Click on `Pull and redeploy` to update the container(s) with the new configuration.
5. A pop-up will open. Click on `Update` to confirm.
6. The stack will update. Wait for the notification to know that the stack was updated successfully.

## Features
List of features ready and TODOs for future development. Ready:

- [x] Partial docker-compose configuration.

To-do:
- [ ] Finalize docker-compose configuration.
- [ ] Ratelimiting where necessary.

## Status
Project is: _in progress_

Current version is subject to change.

## License

This software is available under the [Apache 2.0 license](./LICENSE), 
Copyright 2022 [Research group Energy Transition, Windesheim University of 
Applied Sciences](https://windesheim.nl/energietransitie) 

## Credits
  
This configuration repository was originally created by:
- Nick van Ravenzwaaij · [@n-vr](https://github.com/n-vr)

<!--
It was extended by:
- Full name · [@user](https://github.com/user) · Twitter [@user](https://twitter.com/user)
--> 

Product owner:
- Henri ter Hofte · [@henriterhofte](https://github.com/henriterhofte) · Twitter [@HeNRGi](https://twitter.com/HeNRGi)

We use and gratefully acknowlegde the efforts of the makers of the following technologies:
- [WordPress](https://wordpress.org), licensed under [GPLv2 (or later)](https://wordpress.org/about/license/)
- [MariaDB](https://github.com/MariaDB/server), licensed under [GNU GPL-2.0](https://github.com/MariaDB/server/blob/10.9/COPYING)
- [carboncase-frontend](https://github.com/energietransitie/carboncase-frontend), licensed under [Apache-2.0](https://github.com/energietransitie/carboncase-frontend/blob/main/LICENSE)
- [carboncase-management](https://github.com/energietransitie/carboncase-management), licensed under [Apache-2.0](https://github.com/energietransitie/carboncase-management/blob/main/LICENSE)
- [carboncase-api](https://github.com/energietransitie/carboncase-api), licensed under [Apache-2.0](https://github.com/energietransitie/carboncase-api/blob/main/LICENSE)
