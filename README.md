## Automação da Infraestrutura: Implementação de IaC com Terraform na MyCloud

Este projeto visa implementar o uso de terraform no MyCloud, e através ferramenta de automação de infraestrutura, transformar a maneira como interagimos com infraestrutura dentro da organização. 

### Pré requisitos

Necessário ter o terraform instalado na máquina local que irá se conectar com a cloud provider,
Segue o link com o passo a passo para a instalação:

```
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```
É importante mapear as variáveis de ambiente utilizadas nos scripts, você pode mapeá-las
no arquivo .bashrc ou .zshrc do seu linux, windows pra que né?

As variáveis são as seguintes:

```
export TF_VAR_cloudstack_api_url=url_da_api
export TF_VAR_cloudstack_api_key=chave_da_api
export TF_VAR_cloudstack_secret_key=chave_secreta
```
Dessa forma quando o shell ser iniciado ele já irá conhecer o conteúdo dessas variáveis.

### Para executar este projeto, seguimos conforme abaixo: 

```
git clone https://github.com/afro-juliano/IaC-com-Terraform-MyCloud.git
```

Entramos no diretório criado e podemos prosseguir com:
```
# Entra no diretório que consta os arquivos HCL 
cd Iac-com-Terraform_MyCloud/Iac/

# Inicializa o terraform
terraform init

# Cria o plano de execução e salva ele em um arquivo plan
terraform plan -out plan

# Executa o plano
terraform apply "plan"
```

