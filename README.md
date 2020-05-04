# Description
Rails plugin template with Docker.

# How to use
## Generate template
```bash:bash
$ git clone https://github.com/masayuki-0319/rails_plugin_template.git

# Case1: Shell script
$ chmod 777 create_gem_template.sh
$ create_gem_template.sh $GEM_NAME

# Case2: Manual command
$ docker-compose run -rm app bundle gem $GEM_NAME --test=rspec --mit --no-coc
$ cp -rf ./docker docker-compose.yml $GEM_NAME
$ cat <<TEXT >> .gitignore
$GEM_NAME/*
TEXT
$ cd $GEM_NAME/
$ git init
$ git commit -am "first commit"
```

```bash:bash
# Start development
$ docker-compose up -d
```

# References

- [Docker で Bundler を使って Ruby の gem を作成する方法 \- Qiita](https://qiita.com/ogomr/items/80d639854068fd582d05)
