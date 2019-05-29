# terraform_0_12_example

## Example usage of terraform 0.12
- add file terraform.tfvars with following content:
```
access_key = "XXXXXXXXXXXXXXXXXXXXX"
secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
region     = "us-east-1"
amis = {
  "us-east-1" = "ami-b374d5a5"
  "us-west-2" = "ami-def456"
}

```

- note that if file is not with name **terraform.tfvars** or **<any_name>.auto.tfvars** terraform will not going to use it automatically

