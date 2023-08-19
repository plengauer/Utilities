wget https://s3.amazonaws.com/amazoncloudwatch-agent/debian/amd64/latest/amazon-cloudwatch-agent.deb &&
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb &&
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard &&
rm amazon-cloudwatch-agent.deb
