#!/bin/bash

# Author      : Balaji Pothula <balaji.pothula@techie.com>,
# Date        : Wednesday, 29 December 2021,
# Description : Get EC2 Instance Metadata.

readonly               document=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document)
readonly                  pkcs7=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/pkcs7)
readonly                rsa2048=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/rsa2048)

readonly                 ami_id=$(curl --silent http://169.254.169.254/latest/meta-data/ami-id)
readonly       ami_launch_index=$(curl --silent http://169.254.169.254/latest/meta-data/ami-launch-index)
readonly      ami_manifest_path=$(curl --silent http://169.254.169.254/latest/meta-data/ami-manifest-path)
readonly               hostname=$(curl --silent http://169.254.169.254/latest/meta-data/hostname)
readonly        instance_action=$(curl --silent http://169.254.169.254/latest/meta-data/instance-action)
readonly            instance_id=$(curl --silent http://169.254.169.254/latest/meta-data/instance-id)
readonly    instance_life_cycle=$(curl --silent http://169.254.169.254/latest/meta-data/instance-life-cycle)
readonly          instance_type=$(curl --silent http://169.254.169.254/latest/meta-data/instance-type)
readonly         local_hostname=$(curl --silent http://169.254.169.254/latest/meta-data/local-hostname)
readonly             local_ipv4=$(curl --silent http://169.254.169.254/latest/meta-data/local-ipv4)
readonly                    mac=$(curl --silent http://169.254.169.254/latest/meta-data/mac)
readonly                profile=$(curl --silent http://169.254.169.254/latest/meta-data/profile)
readonly         reservation_id=$(curl --silent http://169.254.169.254/latest/meta-data/reservation-id)
readonly        security_groups=$(curl --silent http://169.254.169.254/latest/meta-data/security-groups)

readonly                    ami=$(curl --silent http://169.254.169.254/latest/meta-data/block-device-mapping/ami)
readonly                   ebs1=$(curl --silent http://169.254.169.254/latest/meta-data/block-device-mapping/ebs1)

readonly                history=$(curl --silent http://169.254.169.254/latest/meta-data/events/maintenance/history)
readonly              scheduled=$(curl --silent http://169.254.169.254/latest/meta-data/events/maintenance/scheduled)

readonly             configured=$(curl --silent http://169.254.169.254/latest/meta-data/hibernation/configured)

readonly               iam_info=$(curl --silent http://169.254.169.254/latest/meta-data/iam/info)

readonly               ec2_info=$(curl --silent http://169.254.169.254/latest/meta-data/identity-credentials/ec2/info)

readonly                vhostmd=$(curl --silent http://169.254.169.254/latest/meta-data/metrics/vhostmd)

readonly          device_number=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/device-number)
readonly           interface_id=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/interface-id)
readonly    macs_local_hostname=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/local-hostname)
readonly            local_ipv4s=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/local-ipv4s)
readonly               macs_mac=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/mac)
readonly               owner_id=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/owner-id)
readonly     security_group_ids=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/security-group-ids)
readonly   macs_security_groups=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/security-groups)
readonly              subnet_id=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/subnet-id)
readonly subnet_ipv4_cidr_block=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/subnet-ipv4-cidr-block)
readonly                 vpc_id=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/vpc-id)
readonly    vpc_ipv4_cidr_block=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/vpc-ipv4-cidr-block)
readonly   vpc_ipv4_cidr_blocks=$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs/$(curl --silent http://169.254.169.254/latest/meta-data/network/interfaces/macs)/vpc-ipv4-cidr-blocks)

readonly      availability_zone=$(curl --silent http://169.254.169.254/latest/meta-data/placement/availability-zone)
readonly     ailability_zone_id=$(curl --silent http://169.254.169.254/latest/meta-data/placement/availability-zone-id)

readonly            public_keys=$(curl --silent http://169.254.169.254/latest/meta-data/public-keys)
readonly          public_keys_0=$(curl --silent http://169.254.169.254/latest/meta-data/public-keys/0)


echo "Document               : $document"
echo "PKCS7                  : $pkcs7"
echo "RSA2048                : $rsa2048"

echo "AMI ID                 : $ami_id"
echo "AMI Launch Index       : $ami_launch_index"
echo "AMI Manifest Path      : $ami_manifest_path"
echo "Hostname               : $hostname"
echo "Instance Action        : $instance_action"
echo "Instance ID            : $instance_id"
echo "Instance Life Cycle    : $instance_life_cycle"
echo "Instance Type          : $instance_type"
echo "Local Hostname         : $local_hostname"
echo "Local IPv4             : $local_ipv4"
echo "MAC                    : $mac"
echo "Profile                : $profile"
echo "Reservation ID         : $reservation_id"
echo "Security Groups        : $security_groups"

echo "AMI                    : $ami"
echo "EBS1                   : $ebs1"

echo "History                : $history"
echo "Scheduled              : $scheduled"

echo "Configured             : $configured"

echo "IAM Info               : $iam_info"

echo "EC2 Infor              : $ec2_info"

echo "V. Host M. D.          : $vhostmd"

echo "Device Number          : $device_number"
echo "Interface ID           : $interface_id"
echo "Local Hostname         : $macs_local_hostname"
echo "Local IPv4s            : $local_ipv4s"
echo "MAC                    : $macs_mac"
echo "Owner ID               : $owner_id"
echo "Security Group IDs     : $security_group_ids"
echo "Security Groups        : $macs_security_groups"
echo "Subnet ID              : $subnet_id"
echo "Subnet IPv4 CIDR Block : $subnet_ipv4_cidr_block"
echo "VPC ID                 : $vpc_id"
echo "VPC IPv4 CIDR Block    : $vpc_ipv4_cidr_block"
echo "VPC IPv4 CIDR Blocks   : $vpc_ipv4_cidr_blocks"

echo "Availability Zone      : $availability_zone"
echo "Availability Zone ID   : $ailability_zone_id"

echo "Public Keys            : $public_keys"
echo "Public Keys 0          : $public_keys_0"
