# Enables VPC Peering Between 2 different networks
resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = var.DEFAULT_VPC_ID
  peer_vpc_id   = aws_vpc.main.id
  auto_accept   = true                            # This works only if both the VPC's are in the same account.
}
