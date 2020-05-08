
## Automação API com Robot Framework

## Instalar

- Primeiramente instale python3  na sua máquina.
  URL:https://www.python.org/

rode o comando dentro do projeto: pip install -r requirements.txt para instalar as dependências


## Rodar
- Dentro da pasta raiz no terminal, rode o comando a seguir para a execução do cenário de weather:

robot -d ./results -i weather -v ENV_NAME:env tests

-  -d ./results     |  tag para guardar o resultado dentro da pasta results
-  -i busca         |  tag para rodar todos os testes
-  -v ENV_NAME:env  |  tag para rodar os testes no ambiente desejado
-  tests            |  local onde se encontra as especificações dos cenários

## Arquitetura

resources
 -  keywords - Pasta com palavras chaves(comandos) para interação com API
 -  service_objects - Pasta com endpoints e variáveis para a requisição
 -  support
    -   arquivos com suporte para automação, environments, URI etc.
results - Pasta com relatório do cenários executados e logs para consulta
test - Especificações dos cenários automatizados
requirements - Arquivo com bibliotecas versionadas utilizadas no projeto com Robot Framework
