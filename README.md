# Description
Rails plugin template with Docker.

# How to use
## Generate template
```bash:bash
$ git clone https://github.com/masayuki-0319/rails_plugin_template.git

$ docker-compose run -rm app bundle gem ${GEM_NAME} --test=rspec --mit --no-coc

$ cp -rf ./docker docker-compose.yml ${GEM_NAME}

$ cat <<TEXT >> .gitignore
${GEM_NAME}/*
TEXT

$ cd ${GEM_NAME}/

$ git init

$ git commit -am "first commit"

# Start development
$ docker-compose up -d
```

# References

- [Docker で Bundler を使って Ruby の gem を作成する方法 \- Qiita](https://qiita.com/ogomr/items/80d639854068fd582d05)
