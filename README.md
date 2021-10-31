## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

Precisa colocar a variável GITHUB_TOKEN com o token github com permissão de repositório.

A organização precisa ter ao menos um repositório. 

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team_membership.team_membership](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/team_membership) | resource |
| [github_team_repository.manage_access_repository](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/team_repository) | resource |
| [github_repositories.repositories](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/repositories) | data source |
| [github_team.team](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/team) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | (Required)This is the target GitHub organization | `string` | n/a | yes |
| <a name="input_team_members"></a> [team\_members](#input\_team\_members) | List of team members | `list(string)` | n/a | yes |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | the team's full name | `string` | n/a | yes |

## Outputs

No outputs.

## Como usar este módulo:

Para saber mais como usar este modulo [acesse este documento](how-to-use-this-module/README.md)