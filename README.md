# sentinel-tfc-standard-set
A set of 5 TFC policies in one policy set to comply with the TFC Standard feature limits. This should give you a good idea of the capabilities of Sentinel for your organization! All policies are advisory and therefore will not effect your current workspaces if they fail. This lets you explore Sentinel risk free!

Steps to apply this policy:
1. Fork this repo into a repo which is connected to your TFC organization
2. Navigate to your settings page for the TFC organization
3. Select "Policy Sets" under the "Integrations" section
4. Select "Connect a new policy set" button in the upper right corner
5. Follow the workflow to select your forked repository from the list. This assumes your organization already has a connection made between TFC and your VCS. 
6. Keep all default settings, set an optional description if desired. 
7. Run a plan on any workspace to see your new policies in action!

Policies used:
1. Intel EC2 instance optimization (https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-instance-deny-unapproved-instance-types.md)
2. EBS volume encryption (https://github.com/SPHTech-Platform/policy-library-aws/blob/main/docs/policies/ebs-volume-must-be-encrypted.md)
3. S3 bucket encryption (https://github.com/SPHTech-Platform/policy-library-aws/blob/main/docs/policies/s3-should-have-encryption-enabled.md)
4. No security group ingress from 0.0.0.0/0 to port 22 (https://github.com/hashicorp/policy-library-aws-networking-terraform/blob/main/docs/policies/deny-public-ssh-acl-rules.md)
5. Default security group of every VPC restricts all traffic (https://github.com/hashicorp/policy-library-aws-networking-terraform/blob/main/docs/policies/restrict-all-vpc-traffic-acl-rules.md)
