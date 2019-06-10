workflow "Deploy to AWS S3" {
  on = "push"
  resolves = ["Deploy to S3"]
}

action "Deploy to S3" {
  uses = "actions/aws/cli@master"
  runs = "s3"
  args = "sync ./ s3://level.software/ --dryrun"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
