output "hosted_zone_id" {
  description = "Route 53 Hosted Zone ID"
  value       = module.dns_module.hosted_zone_id
}