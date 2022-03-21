# Lambda function

## TODO

- [PLT-495](https://craftmachine.atlassian.net/browse/PLT-495)
- [PLT-496](https://craftmachine.atlassian.net/browse/PLT-496)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alarm\_arn | The ARN of actions to execute when this alarm transitions into an OK/Alarm state from any other state. | `any` | n/a | yes |
| allow\_origin\_url | Determines which resource can be accessed by content operating within the current origin | `string` | `""` | no |
| api\_gateway\_stage\_name | Stage name in API Gateway for endpoints. | `string` | `"api"` | no |
| api\_key\_required | Is api\_key required for this endpoint. | `bool` | `true` | no |
| aws\_region | LAMBDA ####################################################################### | `string` | `"us-east-1"` | no |
| batch\_size | The largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to 10. | `number` | `10` | no |
| concurrency | n/a | `number` | `1` | no |
| cors\_enabled | Is cors enabled for this endpoint. | `bool` | `false` | no |
| environment | The Lambda environment's configuration settings. Adds kinesis\_stream\_name, sns\_stream\_name. | `map(string)` | `{}` | no |
| function\_errors\_alarm\_period | n/a | `string` | `"60"` | no |
| function\_errors\_alarm\_threshold | n/a | `string` | `"1"` | no |
| function\_errors\_datapoints | n/a | `string` | `"2"` | no |
| function\_errors\_evaluation\_periods | n/a | `string` | `"2"` | no |
| handler\_name | The function entrypoint in your code. Default lambda\_function.lambda\_function. | `string` | `""` | no |
| http\_method | The HTTP method (GET, POST, PUT, DELETE, HEAD, OPTION, ANY) when calling the associated lambda. Is used only if path specified. | `string` | `""` | no |
| iterator\_age\_alarm\_threshold | n/a | `string` | `"1200000"` | no |
| kinesis\_event\_source\_arn | The event source ARN - Kinesis stream. Will be used only if kinesis\_event\_source\_enabled = true. | `string` | `""` | no |
| kinesis\_event\_source\_enabled | n/a | `bool` | `false` | no |
| kinesis\_retention\_period | The amount of time Kinesis stream stores unprocessed events. Defaults to 24 hours. | `number` | `24` | no |
| kinesis\_shard\_count | The amount of time Kinesis stream shards. Defaults to 1. | `number` | `1` | no |
| layers | List of lambda layer ARNs | `list(string)` | `[]` | no |
| logs\_errors\_alarm\_period | n/a | `string` | `"60"` | no |
| logs\_errors\_alarm\_threshold | n/a | `string` | `"1"` | no |
| logs\_errors\_datapoints | n/a | `string` | `"2"` | no |
| logs\_errors\_evaluation\_periods | n/a | `string` | `"2"` | no |
| memory\_size | Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. | `number` | `128` | no |
| name | Name of your lambda function. | `any` | n/a | yes |
| output\_kinesis\_stream\_enabled | n/a | `bool` | `false` | no |
| output\_sns\_stream\_enabled | n/a | `bool` | `false` | no |
| output\_sqs\_stream\_enabled | n/a | `bool` | `false` | no |
| package | The path to the function's deployment package within the local filesystem. If not defined, functions/${var.name}/function/ folder will be used. | `string` | `""` | no |
| parent\_id | The ID of the parent API resource. | `string` | `""` | no |
| path | The last path segment of this API resource. | `string` | `""` | no |
| policy\_json | n/a | `string` | `""` | no |
| policy\_json\_enabled | n/a | `bool` | `false` | no |
| rest\_api\_id | The ID of the associated REST API. | `string` | `""` | no |
| runtime | The runtime environment for the Lambda function you are uploading. Default python3.6. | `string` | `"python3.9"` | no |
| schedule\_expression | The scheduling expression. For example, cron(0 20 \* \* ? \*) or rate(5 minutes). Default is none. Will be used only if schedule\_expression\_enabled = true. | `string` | `""` | no |
| schedule\_expression\_enabled | n/a | `bool` | `false` | no |
| sns\_event\_source\_arn | The event source ARN - SNS topic. Will be used only if sns\_event\_source\_enabled = true. | `string` | `""` | no |
| sns\_event\_source\_enabled | n/a | `bool` | `false` | no |
| sqs\_content\_based\_deduplication | n/a | `bool` | `false` | no |
| sqs\_event\_source\_arn | The event source ARN - SQS queue. Will be used only if sqs\_event\_source\_enabled = true. | `string` | `""` | no |
| sqs\_event\_source\_enabled | n/a | `bool` | `false` | no |
| sqs\_fifo\_queue | n/a | `bool` | `false` | no |
| sqs\_message\_retention\_seconds | n/a | `number` | `345600` | no |
| sqs\_visibility\_timeout\_seconds | n/a | `number` | `30` | no |
| tags | A mapping of tags to assign to the object. Will be used for all resources that allow tags assignment. | `map(string)` | `{}` | no |
| timeout | The amount of time your Lambda Function has to run in seconds. Defaults to 30. | `number` | `30` | no |
| vpc\_enabled | n/a | `bool` | `false` | no |
| vpc\_security\_group\_ids | Will be used only if vpc\_enabled = true. | `list(string)` | `[]` | no |
| vpc\_subnet\_ids | Will be used only if vpc\_enabled = true. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| api\_gateway\_resource\_id | n/a |
| function\_arn | n/a |
| function\_name | n/a |
| invoke\_url | n/a |
| output\_kinesis\_stream\_arn | n/a |
| output\_kinesis\_stream\_name | n/a |
| output\_sns\_stream\_arn | n/a |
| output\_sns\_stream\_name | n/a |
| output\_sqs\_stream\_arn | n/a |
| output\_sqs\_stream\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
