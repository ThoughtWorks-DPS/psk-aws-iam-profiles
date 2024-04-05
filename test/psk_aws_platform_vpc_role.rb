require 'awspec'

describe iam_role('PSKPlatformVPCRole') do
  it { should exist }
  it { should have_iam_policy('PSKPlatformVPCRolePolicy') }

  it { should be_allowed_action('ec2:Accept*') }
  it { should be_allowed_action('ec2:AdvertiseByoipCidr') }
  it { should be_allowed_action('ec2:AllocateAddress') }
  it { should be_allowed_action('ec2:AllocateIpamPoolCidr') }
  it { should be_allowed_action('ec2:ApplySecurityGroupsToClientVpnTargetNetwork') }
  it { should be_allowed_action('ec2:Assign*') }
  it { should be_allowed_action('ec2:Associate*') }
  it { should be_allowed_action('ec2:Attach*') }
  it { should be_allowed_action('ec2:Authorize*') }
  it { should be_allowed_action('ec2:CreateClientVpnEndpoint') }
  it { should be_allowed_action('ec2:CreateClientVpnRoute') }
  it { should be_allowed_action('ec2:CreateCoipPoolPermission') }
  it { should be_allowed_action('ec2:CreateCustomerGateway') }
  it { should be_allowed_action('ec2:CreateDhcpOptions') }
  it { should be_allowed_action('ec2:CreateEgressOnlyInternetGateway') }
  it { should be_allowed_action('ec2:CreateFlowLogs') }
  it { should be_allowed_action('ec2:CreateInternetGateway') }
  it { should be_allowed_action('ec2:CreateIpam*') }
  it { should be_allowed_action('ec2:CreateLocalGateway*') }
  it { should be_allowed_action('ec2:CreateNatGateway') }
  it { should be_allowed_action('ec2:CreateNetwork*') }
  it { should be_allowed_action('ec2:CreatePublicIpv4Pool') }
  it { should be_allowed_action('ec2:CreateRoute*') }
  it { should be_allowed_action('ec2:CreateSecurityGroup') }
  it { should be_allowed_action('ec2:CreateSubnet*') }
  it { should be_allowed_action('ec2:CreateTags') }
  it { should be_allowed_action('ec2:CreateTraffic*') }
  it { should be_allowed_action('ec2:CreateTransitGateway*') }
  it { should be_allowed_action('ec2:CreateVpc*') }
  it { should be_allowed_action('ec2:CreateVpn*') }
  it { should be_allowed_action('ec2:DeleteCarrierGateway') }
  it { should be_allowed_action('ec2:DeleteClientVpnEndpoint') }
  it { should be_allowed_action('ec2:DeleteClientVpnRoute') }
  it { should be_allowed_action('ec2:DeleteCoipPoolPermission') }
  it { should be_allowed_action('ec2:DeleteCustomerGateway') }
  it { should be_allowed_action('ec2:DeleteDhcpOptions') }
  it { should be_allowed_action('ec2:DeleteEgressOnlyInternetGateway') }
  it { should be_allowed_action('ec2:DeleteFlowLogs') }
  it { should be_allowed_action('ec2:DeleteInternetGateway') }
  it { should be_allowed_action('ec2:DeleteIpam*') }
  it { should be_allowed_action('ec2:DeleteLocalGateway*') }
  it { should be_allowed_action('ec2:DeleteNatGateway') }
  it { should be_allowed_action('ec2:DeleteNetwork*') }
  it { should be_allowed_action('ec2:DeletePublicIpv4Pool') }
  it { should be_allowed_action('ec2:DeleteRoute*') }
  it { should be_allowed_action('ec2:DeleteSecurityGroup') }
  it { should be_allowed_action('ec2:DeleteSubnet*') }
  it { should be_allowed_action('ec2:DeleteTags') }
  it { should be_allowed_action('ec2:DeleteTraffic*') }
  it { should be_allowed_action('ec2:DeleteTransitGateway*') }
  it { should be_allowed_action('ec2:DeleteVpc*') }
  it { should be_allowed_action('ec2:DeleteVpn*') }
  it { should be_allowed_action('ec2:Deprovision*') }
  it { should be_allowed_action('ec2:Deregister*') }
  it { should be_allowed_action('ec2:Describe*') }
  it { should be_allowed_action('ec2:Detach*') }
  it { should be_allowed_action('ec2:DisableEbsEncryptionByDefault') }
  it { should be_allowed_action('ec2:DisableTransitGatewayRouteTablePropagation') }
  it { should be_allowed_action('ec2:DisableVgwRoutePropagation') }
  it { should be_allowed_action('ec2:DisableVpcClassicLink') }
  it { should be_allowed_action('ec2:DisableVpcClassicLinkDnsSupport') }
  it { should be_allowed_action('ec2:Disassociate*') }
  it { should be_allowed_action('ec2:Enable*') }
  it { should be_allowed_action('ec2:Export*') }
  it { should be_allowed_action('ec2:GetAssociatedEnclaveCertificateIamRoles') }
  it { should be_allowed_action('ec2:GetAssociatedIpv6PoolCidrs') }
  it { should be_allowed_action('ec2:GetCoipPoolUsage') }
  it { should be_allowed_action('ec2:GetConsoleOutput') }
  it { should be_allowed_action('ec2:GetConsoleScreenshot') }
  it { should be_allowed_action('ec2:GetEbsDefaultKmsKeyId') }
  it { should be_allowed_action('ec2:GetEbsEncryptionByDefault') }
  it { should be_allowed_action('ec2:GetFlowLogsIntegrationTemplate') }
  it { should be_allowed_action('ec2:GetIpam*') }
  it { should be_allowed_action('ec2:GetNetwork*') }
  it { should be_allowed_action('ec2:GetPasswordData') }
  it { should be_allowed_action('ec2:GetResourcePolicy') }
  it { should be_allowed_action('ec2:GetSerialConsoleAccessStatus') }
  it { should be_allowed_action('ec2:GetSubnetCidrReservations') }
  it { should be_allowed_action('ec2:GetTransitGateway*') }
  it { should be_allowed_action('ec2:GetVpn*') }
  it { should be_allowed_action('ec2:ImportClientVpnClientCertificateRevocationList') }
  it { should be_allowed_action('ec2:ModifyAddressAttribute') }
  it { should be_allowed_action('ec2:ModifyAvailabilityZoneGroup') }
  it { should be_allowed_action('ec2:ModifyClientVpnEndpoint') }
  it { should be_allowed_action('ec2:ModifyEbsDefaultKmsKeyId') }
  it { should be_allowed_action('ec2:ModifyId*') }
  it { should be_allowed_action('ec2:ModifyIpam*') }
  it { should be_allowed_action('ec2:ModifyNetworkInterfaceAttribute') }
  it { should be_allowed_action('ec2:ModifyPrivateDnsNameOptions') }
  it { should be_allowed_action('ec2:ModifyReservedInstances') }
  it { should be_allowed_action('ec2:ModifySecurityGroupRules') }
  it { should be_allowed_action('ec2:ModifySubnetAttribute') }
  it { should be_allowed_action('ec2:ModifyTraffic*') }
  it { should be_allowed_action('ec2:ModifyTransitGateway*') }
  it { should be_allowed_action('ec2:ModifyVpc*') }
  it { should be_allowed_action('ec2:ModifyVpn*') }
  it { should be_allowed_action('ec2:MonitorInstances') }
  it { should be_allowed_action('ec2:MoveAddressToVpc') }
  it { should be_allowed_action('ec2:MoveByoipCidrToIpam') }
  it { should be_allowed_action('ec2:Provision*') }
  it { should be_allowed_action('ec2:PutResourcePolicy') }
  it { should be_allowed_action('ec2:RegisterTransitGateway*') }
  it { should be_allowed_action('ec2:Reject*') }
  it { should be_allowed_action('ec2:Release*') }
  it { should be_allowed_action('ec2:ReplaceIamInstanceProfileAssociation') }
  it { should be_allowed_action('ec2:ReplaceNetworkAclAssociation') }
  it { should be_allowed_action('ec2:ReplaceNetworkAclEntry') }
  it { should be_allowed_action('ec2:ReplaceRoute') }
  it { should be_allowed_action('ec2:ReplaceRouteTableAssociation') }
  it { should be_allowed_action('ec2:ReplaceTransitGatewayRoute') }
  it { should be_allowed_action('ec2:ReportInstanceStatus') }
  it { should be_allowed_action('ec2:RequestSpotFleet') }
  it { should be_allowed_action('ec2:RequestSpotInstances') }
  it { should be_allowed_action('ec2:ResetAddressAttribute') }
  it { should be_allowed_action('ec2:ResetEbsDefaultKmsKeyId') }
  it { should be_allowed_action('ec2:ResetNetworkInterfaceAttribute') }
  it { should be_allowed_action('ec2:RestoreAddressToClassic') }
  it { should be_allowed_action('ec2:RevokeClientVpnIngress') }
  it { should be_allowed_action('ec2:RevokeSecurityGroupEgress') }
  it { should be_allowed_action('ec2:RevokeSecurityGroupIngress') }
  it { should be_allowed_action('ec2:SearchLocalGatewayRoutes') }
  it { should be_allowed_action('ec2:SearchTransitGatewayMulticastGroups') }
  it { should be_allowed_action('ec2:SearchTransitGatewayRoutes') }
  it { should be_allowed_action('ec2:SendDiagnosticInterrupt') }
  it { should be_allowed_action('ec2:StartNetworkInsightsAccessScopeAnalysis') }
  it { should be_allowed_action('ec2:StartNetworkInsightsAnalysis') }
  it { should be_allowed_action('ec2:StartVpcEndpointServicePrivateDnsVerification') }
  it { should be_allowed_action('ec2:TerminateClientVpnConnections') }
  it { should be_allowed_action('ec2:UnassignIpv6Addresses') }
  it { should be_allowed_action('ec2:UnassignPrivateIpAddresses') }
  it { should be_allowed_action('ec2:UnmonitorInstances') }
  it { should be_allowed_action('ec2:UpdateSecurityGroupRuleDescriptionsEgress') }
  it { should be_allowed_action('ec2:UpdateSecurityGroupRuleDescriptionsIngress') }
  it { should be_allowed_action('ec2:WithdrawByoipCidr') }
  it { should be_allowed_action('rds:CreateDBSubnetGroup') }
  it { should be_allowed_action('rds:ModifyDBSubnetGroup') }
  it { should be_allowed_action('rds:DeleteDBSubnetGroup') }
  it { should be_allowed_action('rds:DescribeDBSubnetGroups') }
  it { should be_allowed_action('rds:AddTagsToResource') }
  it { should be_allowed_action('rds:ListTagsForResource') }
  it { should be_allowed_action('rds:RemoveTagsFromResource') }
end