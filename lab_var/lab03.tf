locals {
  lab03 = {
    ##########################
    # S3 CONFIG
    ##########################
    s3 = {
      pipeline_artifact = {
        module_name = "pipeline-artifact"
      }
      s3_storage = {
        module_name = "s3-storage"
      }
    }

    ec2 = {
      ec1 = {
        name = "test"
        type = "t2.micro"
      }
    }

  }
}