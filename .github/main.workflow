workflow "Deploy to AWS S3" {
  on = "push"
  resolves = ["Deploy to S3"]
}

action "Deploy to S3" {
  uses = "actions/aws/cli@efb074ae4510f2d12c7801e4461b65bf5e8317e6"
  runs = "sync"
  args = "[./, S3_URI]"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY", "S3_URI"]
}
