workflow "Deploy to AWS S3" {
  on = "push"
  resolves = ["Deploy to S3"]
}

action "Deploy to S3" {
  uses = "actions/aws/cli@master"
  runs = "sync"
  args = "./ s3://level.software/"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
