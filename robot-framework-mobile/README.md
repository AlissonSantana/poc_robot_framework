
## Automação Mobile com Robot Framework

## Pré requisitos
**Python**
**Pip** ( Gerenciador de pacotes)
**Java JDK**
**Android SDK**
**Appium**

Configure o **JAVA_HOME** na sua **.bash_profile**
```bash
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
```

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
 -  keywords - Pasta com palavras chaves(comandos) para interação com elementos mobile
 -  screens -  Pasta com os locators
 -  support
    -  Pasta com configurações dos projeto, ex: Ambiente, instâncias do projeto, variáveis, etc
results - Pasta com relatório do cenários executados e logs para consulta
test - Especificações dos cenários automatizados
requirements - Arquivo com bibliotecas versionadas utilizadas no projeto com Robot Framework
