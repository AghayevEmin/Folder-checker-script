import boto3

def lambda_handler(event, context):
    ec2 = boto3.resource('ec2')
    instance_id = event['detail']['instance-id']
    instance = ec2.Instance(instance_id)
    instance_type = instance.instance_type
    if 'windows' in instance_type.lower():
        # Execute Windows script
        # ...
    else:
        # Execute Linux script
        # ...
