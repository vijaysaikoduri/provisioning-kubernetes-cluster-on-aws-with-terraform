https://www.terraform.io/docs/providers/aws/


Simply put, EKS is Amazon’s ‘Kubernetes as a service’. It simplifies the process of spinning up and maintaining highly-available Kubernetes clusters in the AWS cloud.

The typical EKS cluster consists of two main components, each running on its own VPC – The Control Plane and Worker Nodes.

Control Plane: Consists of three Kubernetes Master nodes running in three different AZs for high availability. Incoming traffic to Kubernetes API comes through the AWS network load balancer (NLB). The Control Plane runs on the Amazon-controlled VPC that cannot be managed by the customer and is fully managed by Amazon.
Worker Nodes: Run on usual Amazon EC2 instances in the customer-controlled VPC. Any AWS instance type can be used as a worker node. Worker nodes can be accessed via SSH or provisioned with any existing automation.
EKS gives you a lot of flexibility in terms of layout. You can deploy one EKS (read ‘Kubernetes’) cluster per environment, system or application. You can also use a single Amazon EKS cluster to run multiple applications by taking advantage of Kubernetes namespaces and IAM security policies.

Below are the official visuals from AWS that better describe how the typical EKS cluster appears in AWS and how it works.
