## 7.6. Написание собственных провайдеров для Terraform

# 1.
1 ) 

- resource: https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/provider.go#L411

- data_source: https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/provider.go#L169

2 )

- С каким другим параметром конфликтует name? `name_prefix`
    https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/resource_aws_sqs_queue.go#L56 

- Какая максимальная длина имени? `80`
    https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/validators.go#L1038

- Какому регулярному выражению должно подчиняться имя? ``(`^[0-9A-Za-z-_]+(\.fifo)?$`)``
    https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/validators.go#L1041