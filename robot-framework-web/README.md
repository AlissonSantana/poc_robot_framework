
## Automação Web com Robot Framework

## Instalar

- Primeiramente instale python3  na sua máquina.
  URL:https://www.python.org/

- Instale o chromedriver
  URL:https://chromedriver.chromium.org/downloads

rode o comando dentro do projeto: pip install -r requirements.txt para instalar as dependências


## Rodar
- Dentro da pasta raiz no terminal, rode o comando a seguir para a execução do cenário de busca:

robot -d ./results -i busca -v ENV_NAME:env tests


-  -d ./results     |  tag para guardar o resultado dentro da pasta results
-  -i busca         |  tag para rodar todos os testes
-  -v ENV_NAME:env  |  tag para rodar os testes no ambiente desejado
-  tests            |  local onde se encontra as especificações dos cenários

## Arquitetura

resources
 -  keywords - Pasta com palavras chaves(comandos) para interação com elementos WEB
 -  page_objects - Pasta com as classes propriedades e métodos que serão usados como keywords.
 -  support
    -   config - Pasta com confugurações dos projeto, ex: Ambiente, instâncias do projeto, variáveis, etc.
    -   data - Pasta com massa de dados para automação dos cenários
results - Pasta com relatório do cenários executados e logs para consulta
test - Especificações dos cenários automatizados do CCAP
requirements - Arquivo com bibliotecas versionadas utilizadas no projeto com Robot Framework
