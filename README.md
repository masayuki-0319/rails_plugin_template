# Description
Rails plugin template with Docker.

# How to use

```env:.env
# ./.env

# Change to your gem name.
GEM_NAME=gem_name

# Change to your development versions.
BUNDLER_VERSION=2.1.4
RUBY_VERSION=2.7.1-alpine3.11
```

```bash:bash
$ git clone https://github.com/masayuki-0319/rails_plugin_template.git

$ docker-compose up -d

$ rails plugin new ${gem_name} -m ./rails_plugin_template.rb
```

# References

- [Docker で Bundler を使って Ruby の gem を作成する方法 \- Qiita](https://qiita.com/ogomr/items/80d639854068fd582d05)
