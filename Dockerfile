FROM ubuntu:18.04

RUN apt-get -qq update && apt-get -qq install -y curl ca-certificates libssl1.0.0 libssl-dev
RUN curl -L -o /usr/local/bin/mbt https://bintray.com/buddyspike/bin/download_file?file_path=mbt_linux_x86_64%2F0.21.0%2F0.21.0%2Fmbt_linux_x86_64 \
        && chmod +x /usr/local/bin/mbt

CMD ["mbt"]
