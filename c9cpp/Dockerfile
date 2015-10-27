FROM c9

USER root
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y llvm-3.5 llvm-3.5-dev lvm-3.5-runtime libclang-3.5-dev libclang1-3.5 clang-format-3.5
USER user
WORKDIR /home/user/c9
RUN npm install clang_tool
RUN mkdir -p plugins && cd plugins && git clone https://github.com/invokr/c9.ide.language.cpp
RUN sed -i 's/\(.*\)\(return plugins;.*\)/\1plugins.push("plugins\/c9.ide.language.cpp\/cpp")\n\1\2/' /home/user/c9/configs/client-default.js
WORKDIR /home/user/mozilla-central
