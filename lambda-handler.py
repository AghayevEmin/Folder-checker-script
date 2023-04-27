import boto3

s3 = boto3.client('s3')

def lambda_handler(event, context):
    # Download the Linux script from S3
    s3.download_file('my-bucket', 'my-linux-script.sh', '/tmp/my-linux-script.sh')
    
    # Download the Windows script from S3
    s3.download_file('my-bucket', 'my-windows-script.ps1', '/tmp/my-windows-script.ps1')
    
    # Execute the appropriate script based on the instance type
    ec2 = boto3.resource('ec2')
    instance_id = event['detail']['instance-id']
    instance = ec2.Instance(instance_id)
    instance_type = instance.instance_type
    
    if 'windows' in instance_type.lower():
        # Execute the Windows script
        subprocess.check_output(['powershell.exe', '-File', '/tmp/my-windows-script.ps1', arg1, arg2])
    else:
        # Execute the Linux script
        subprocess.check_output(['bash', '/tmp/my-linux-script.sh', arg1, arg2])
