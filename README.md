# ruby-api-test
Teste de API com Ruby, HTTParty, Cucumber e Rspec

## Configuração do ambiente

### 1 - Instalar o homebrew

Acessar o site abaixo, copiar o comando de instalação e executar no terminal.

```bash
https://brew.sh/index_pt-br
```

### 2 - Instalar e configurar o rbenv

No terminal, digitar os seguintes comandos:

```bash
rbenv install 2.7.2
```
Nesse caso, você pode verificar qual a versão mais atual e substituí-la à frente do comando rbenv install.

```bash
brew install rbenv ruby-build
```

```bash
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
```

```bash
source ~/.bash_profile
```

```bash
rbenv global 2.7.2
```

### 3 - Instalar a versão do Bundler

No terminal, realizar a instalação através do seguinte comando:

```bash
gem install bundler
```

## Execução dos testes

Depois de realizar a configuração do ambiente e baixar o repositório:

* Abrir o terminal;
* Acessar a pasta do projeto;
* Executar o comando abaixo:

```bash
bundle install
```

Em seguida, acessar na pasta feature/gherkins o arquivo de teste e executar o seguinte comando:

```bash
bundle exec cucumber -t @ -p hml
```

Onde o @ é o nome do teste - logo acima do cenário no arquivo gherkin. Exemplo:
```bash
bundle exec cucumber -t @vr_api_get_validar_chave -p hml
```