FROM rust:1.65-buster

WORKDIR /usr/app

ENV PATH=/usr/local/cargo/bin:$PATH

# SERVER
COPY relay-server relay-server
RUN rustup default stable
RUN cargo install --path ./relay-server

CMD relay-server --secret-key-seed 0 --port 4001
