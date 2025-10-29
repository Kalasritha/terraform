This project provisions an Amazon EKS-cluster using Terraform.
It includes configuration for:

-   AWS Provider setup
-   VPC creation
-   IAM ROLES
-   VARIABLES
-   tfvars
-   Security groups
- EKS Cluster
|__eks.tf
|__eks-addons
-  Outputs for easy access

*STRUCTURE OF THE PROJECT*

terraform-eks-cluster/
│
├── main.tf              # EKS cluster and node group definitions
├── vpc.tf               # VPC, subnets, and networking resources
├── iam.tf               # IAM roles and policies for EKS and nodes
├── provider.tf          # AWS provider setup
├── variables.tf         # Input variable definitions
├── terraform.tfvars     # Variable values
├── outputs.tf           # Cluster and node group outputs
└── README.md            # Documentation
