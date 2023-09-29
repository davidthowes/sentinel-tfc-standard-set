policy "intel-aws-instance-deny-unapproved-instance-types" {
  source = "https://registry.terraform.io/v2/policies/intel/intel-aws/2.3.0/policy/intel-aws-instance-deny-unapproved-instance-types.sentinel?checksum=sha256:b0f3af7fcfe8b92ba02b4c1be4ee229d15854298387c070d324d7a6bf2d41cdb"
  enforcement_level = "advisory"
}

policy "ebs-volume-must-be-encrypted" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/ebs-volume-must-be-encrypted.sentinel?checksum=sha256:c7ad02e59b3214ea94770c82ca8c6443ad0e8e0ba24652ebb52fc6e5556e2e61"
  enforcement_level = "advisory"
}

policy "s3-should-have-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/s3-should-have-encryption-enabled.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "deny-public-ssh-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-ssh-acl-rules.sentinel?checksum=sha256:b56a7869c9ddd2bece7de8d251de106e072407207247e6f94e001b6eba22c71b"
  enforcement_level = "advisory"
}

policy "restrict-all-vpc-traffic-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/restrict-all-vpc-traffic-acl-rules.sentinel?checksum=sha256:b58e49dbd2e4795481c4af970aaf6dc883bdf5b6fb9cb47e331aa44883e8301d"
  enforcement_level = "advisory"
}

import "static" "approved" {
  source = "./approved.json"
  format = "json"
}

module "policy_summary" {
  source = "https://registry.terraform.io/v2/policies/intel/intel-aws/2.3.0/policy-module/policy_summary.sentinel?checksum=sha256:9f74775725d54b9004533fcabcdd01bd9b13da059cdcac0e1795f05a4bebfb7a"
}

module "tfplan-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfplan-functions.sentinel?checksum=sha256:b7590b6f1729e957cd2d2fec048babcd5f5b4a3bbe90dba14eb8bb5da024ff66"
}

module "tfstate-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfstate-functions.sentinel?checksum=sha256:53eeec20c431053b9402e565f66a2aaba415f26a59ab202e128e88b4a392954f"
}

module "tfconfig-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfconfig-functions.sentinel?checksum=sha256:dd41e7150e1189676f37bbf5c3aeae7791cc9793d921f19ba4f7bcbd42e21cb9"
}

module "aws-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/aws-functions.sentinel?checksum=sha256:b6f0301884456544f2d5ae708918e08419fe4e9b8abee65314a109497f2ef725"
}