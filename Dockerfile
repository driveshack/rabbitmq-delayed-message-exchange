FROM alpine:latest AS base
RUN apk update && apk add --no-cache curl unzip
RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip > ~/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip
RUN unzip ~/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip -d ~/

FROM rabbitmq:3.7.17-management-alpine AS prod
COPY --from=base ~/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange
