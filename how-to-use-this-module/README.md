# iac-modulo-github
Repositório IaC para o módulo github

## Dependências

Para realizar os teste localmente é necessário:

```
terraform >= 1.0.0
GITHUB_TOKEN = <seu_token>
```

[Documentação GitHub Token](https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

[Atalho do GitHub Token no seu Profile](https://github.com/settings/tokens)


## Utilizando o módulo

### Primeiro Passo:

Acesse este repósitorio:

```
cd ./how-to-use-this-module/
```

Inicialize o Terraform
```
terraform init
```

### Segundo Passo:

Personalize o `terrafile.tf`:
```
organization = "seu-time"
team_members = ["user1", "user2"]
team_name    = "developers"
```

Tente criar o primeiro plan:
```
terraform plan
```

Obs.: Caso retorne erro 401, verifique seu GITHUB_TOKEN. Caso 404 verique a permissão que possui dentro da organização. 

### Terceiro Passo:

Aplique suas mudanças:
```
terraform apply
```
