## Zipkin Server With RabbitMQ

## Usage
`$ docker run --restart=always --name zipkin -d -e RABBIT_URI=amqp://guest:guest@172.17.0.4:5672/sleuth srfaytkn/zipkin`