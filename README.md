# terragrunt-demo

Default value for region -s `eu-central-1`, terragrunt overrides this to west-1 or west-2 depending on respective configuration


Looks good for `west-1`:
```
cd accounts/west-1/
terragrunt apply -auto-approve
...
Outputs:

availability_zones = tolist([
  "eu-west-1a",
  "eu-west-1b",
  "eu-west-1c",
])
region = "eu-west-1"
```

But what's wrong with `west-2`?
```
cd accounts/west-2/
terragrunt apply -auto-approve
...
Outputs:

availability_zones = tolist([
  "eu-west-1a",
  "eu-west-1b",
  "eu-west-1c",
])
region = "eu-west-2"
```

debug