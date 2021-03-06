# Masters
output "aws_launch_configuration_masters" {
  value = "${module.masters.aws_launch_configuration}"
}

output "subnet_ids_masters" {
  value = "${module.masters.subnet_ids}"
}

output "aws_lbs_masters" {
  value = "${module.masters.aws_lbs}"
}

output "cluster_id" {
  value = "${module.masters.cluster_id}"
}

# Workers
output "aws_launch_configuration_workers" {
  value = "${module.workers.aws_launch_configuration}"
}

output "subnet_ids_workers" {
  value = "${module.workers.subnet_ids}"
}

# TNC
output "private_zone_id" {
  value = "${aws_route53_zone.tectonic_int.id}"
}

output "tnc_elb_dns_name" {
  value = "${module.vpc.aws_elb_tnc_dns_name}"
}

output "tnc_elb_zone_id" {
  value = "${module.vpc.aws_elb_tnc_zone_id}"
}
