# rabbitmq-delayed-message-exchange
Docker image of RabbitMQ with management and compatible version of the delayed message exchange plugin.
RabbitMQ with management and compatible version of the delayed message exchange plugin.

## Versions
- [latest](https://github.com/AllJointTW/rabbitmq-delayed-message-exchange/blob/master/Dockerfile)
- [3.7.17-management-alpine](https://github.com/AllJointTW/rabbitmq-delayed-message-exchange/blob/3.7.17-management-alpine/Dockerfile)

## Running
### Image
  docker run alljoint/rabbitmq-delayed-message-exchange:latest

### Docker Compose Sample:
```yaml
version: '3.7'

services:
  rabbit:
    image: alljoint/rabbitmq-delayed-message-exchange:latest
    environment:
      - RABBITMQ_DEFAULT_USER=root
      - RABBITMQ_DEFAULT_PASS=pass

    ports:
      - 5672:5672
      - 15672:15672
```

## Environment
The environment variables are the same as the [official image](https://hub.docker.com/_/rabbitmq)
- Sample
  - RABBITMQ_DEFAULT_USER=root
  - RABBITMQ_DEFAULT_PASS=pass


