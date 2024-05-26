terraform {
  backend "s3" {
    bucket = "week4-todo-tf-s3"
    key    = "backend/ToDo-App.tfstate"
    region = "us-east-1"
    dynamodb_table = "week4-todo-tf-db"
  }
}

