provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "OS Management Service Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "Zyhq:AP-CHUNCHEON-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaadz6b4mvf5xd3ow5kb25id5kxyko33a2c4jb2bn7hnjjrvqwfwzca"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaamweps7gltjuygqr6id4xju2hvp7q7lyjiav4qfevkwuyaf7wthsa"
	}
	display_name = "instance-20230126-2232"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCNMEfKx7GH+6fZMPLCWZSAaV2S3inm+56wDB0dJz8Al80Q1iK+kJcKTEJ8w3bqHfftT8kX3iXJBUVGxjNAyLPMV76iZB8Mp490nSbe0IYATk55JPV9k8tLLdukD20LVN3fD3z+XHV54bjd7i6/YV1eY5miiBGueLrhtyFRW9H+Yc7K2SU7b8J/KiDmpiiJi1kBfqTN5fnKCAP6AOzF+wunQk2Ip1zZn277HeyFYa/7SRncP3gz6B8JxSFXyaal4s334tdQPgiGiE1hzmP+YX6D/uCv1MGKoQQ4ToPvix1eRQ9T2pRL2rrqnNx+bqGixV5imla5DTKvknUh2xTXQJj3 ssh-key-2023-01-26"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "22"
		ocpus = "3"
	}
	source_details {
		boot_volume_size_in_gbs = "100"
		boot_volume_vpus_per_gb = "10"
		source_id = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaa6applp6c7xghyubifi24e22hzfrbeinm2vqrerr7yjb6ngtpfyla"
		source_type = "image"
	}
}
