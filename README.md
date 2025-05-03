# 🚀 AWS Essentials Lab

This project covers the foundational AWS services and CLI commands needed for a Cloud/DevOps role. You'll practice launching EC2 instances, configuring IAM roles, interacting with S3, and using the AWS CLI efficiently.

---

## 📋 What You’ll Learn

- Configure AWS CLI and credentials
- Launch EC2 instances manually and via CLI
- Connect to instances using SSH
- Create and manage S3 buckets
- Upload/download files to/from S3
- Attach IAM roles to EC2 securely
- Automate instance setup using shell scripts

## ⚙️ Getting Started

### 🔧 Configure AWS CLI

```bash
aws configure
````

Fill in:

* AWS Access Key
* Secret Key
* Default region (e.g., `us-east-1`)
* Output format (e.g., `json`)

---

## 🖥️ Launch & Connect to EC2

1. Launch a **t2.micro** instance with **Amazon Linux 2**.
2. Open port 22 in security group.
3. SSH into the instance:

```bash
chmod 400 your-key.pem
ssh -i your-key.pem ec2-user@<public-ip>
```

---

## ☁️ S3 Commands via CLI

```bash
aws s3 mb s3://my-devops-lab-bucket
aws s3 cp file.txt s3://my-devops-lab-bucket/
aws s3 cp s3://my-devops-lab-bucket/file.txt .
```

---

## 📁 Scripts Included

### `create-s3-bucket.sh`

```bash
#!/bin/bash
aws s3 mb s3://$1
```

### `upload-to-s3.sh`

```bash
#!/bin/bash
aws s3 cp $1 s3://$2/
```

### `ec2-instance-setup.sh`

```bash
#!/bin/bash
sudo yum update -y
sudo yum install -y docker git
sudo systemctl start docker
sudo systemctl enable docker
```

---

## 🧪 Try This

* Upload a file from local to S3
* SSH into EC2, download it from S3
* Run the `ec2-instance-setup.sh` script to install Docker

---
