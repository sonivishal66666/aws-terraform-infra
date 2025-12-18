<h1 align="center">🚀 AWS Infrastructure Automation with Terraform</h1>

<p align="center">
  <img src="https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge&logo=terraform" />
  <img src="https://img.shields.io/badge/DevOps-Automation-blue?style=for-the-badge" />
</p>

<p align="center">
  <b>Production-style AWS infrastructure built using Infrastructure as Code (Terraform)</b>
</p>

<hr/>

<h2>📌 Project Overview</h2>

<p>
This project demonstrates the <b>design, provisioning, automation, and debugging</b> of a
<b>production-style AWS infrastructure</b> using <b>Terraform</b>.
</p>

<p>
The focus is not just on creating resources, but on applying
<b>real-world DevOps practices</b> such as reproducibility, automation,
and safe infrastructure lifecycle management.
</p>

<hr/>

<h2>🧱 Architecture</h2>

<ul>
  <li><b>VPC</b> with custom CIDR block</li>
  <li><b>Public Subnet</b></li>
  <li><b>Internet Gateway & Route Table</b></li>
  <li><b>Security Group</b> with controlled ingress/egress</li>
  <li><b>EC2 Instance (Ubuntu 22.04)</b></li>
  <li><b>Nginx</b> installed automatically using <code>user_data</code></li>
</ul>

<p><b>Traffic Flow:</b></p>

<pre>
Internet → Internet Gateway → Route Table
        → Public Subnet → EC2 → Nginx
</pre>

<hr/>

<h2>🛠️ Tech Stack</h2>

<table>
  <tr><td><b>Cloud Provider</b></td><td>AWS (ap-south-1)</td></tr>
  <tr><td><b>Infrastructure as Code</b></td><td>Terraform</td></tr>
  <tr><td><b>Compute</b></td><td>EC2 (Ubuntu 22.04)</td></tr>
  <tr><td><b>Networking</b></td><td>VPC, Subnet, IGW, Route Table</td></tr>
  <tr><td><b>Security</b></td><td>Security Groups</td></tr>
  <tr><td><b>Web Server</b></td><td>Nginx</td></tr>
</table>

<hr/>

<h2>📁 Repository Structure</h2>

<pre>
aws-terraform-infra/
├── provider.tf
├── variables.tf
├── vpc.tf
├── network.tf
├── security.tf
├── ec2.tf
├── outputs.tf
└── README.md
</pre>

<hr/>

<h2>⚙️ Key Highlights</h2>

<ul>
  <li>Fully automated AWS infrastructure using Terraform</li>
  <li>Clean separation of networking, security, and compute</li>
  <li>Immutable infrastructure approach (destroy & recreate)</li>
  <li>OS-aware automation for Ubuntu EC2 instances</li>
  <li>Reproducible, auditable Infrastructure as Code</li>
</ul>

<hr/>

<h2>🚀 Deployment</h2>

<p><b>Prerequisites:</b></p>
<ul>
  <li>AWS account</li>
  <li>IAM user with programmatic access</li>
  <li>AWS CLI configured</li>
  <li>Terraform installed</li>
</ul>

<p><b>Commands:</b></p>

<pre>
terraform init
terraform plan
terraform apply
</pre>

<p>
After deployment, open the EC2 public IP in a browser:
</p>

<pre>
http://&lt;public-ip&gt;
</pre>

<p>
You should see the <b>Nginx Welcome Page</b>.
</p>

<hr/>

<h2>🧹 Cleanup</h2>

<pre>
terraform destroy
</pre>

<p>
<b>Note:</b> Infrastructure is intentionally destroyed after validation
to avoid unnecessary AWS charges. It can be recreated at any time using Terraform.
</p>

<hr/>

<h2>🧠 Real-World Problems Solved</h2>

<ul>
  <li>SSH key lifecycle and rotation issues</li>
  <li>AMI vs OS differences (Ubuntu vs Amazon Linux)</li>
  <li>Correct SSH usernames per OS</li>
  <li>OS-specific <code>user_data</code> bootstrapping</li>
  <li>Terraform state awareness</li>
  <li>Safe destroy & recreate strategy</li>
</ul>

<hr/>

<h2>🔮 Future Enhancements</h2>

<ul>
  <li>Remote Terraform state (S3 + DynamoDB)</li>
  <li>Application Load Balancer</li>
  <li>Auto Scaling Groups</li>
  <li>GitHub Actions (CI/CD)</li>
  <li>Multi-environment setup</li>
  <li>Kubernetes integration</li>
</ul>

<hr/>

<h2>👤 Author</h2>

<p>
<b>Vishal Soni</b><br/>
Aspiring DevOps / Cloud Engineer<br/>
Focused on cloud infrastructure, automation, and real-world problem solving
</p>

<hr/>

<p align="center">
⭐ If you found this project useful, consider starring the repository.
</p>
