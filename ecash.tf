##resource "aws_elasticache_cluster" "myecash" {
  ##cluster_id           = "myecash"
  ##engine               = "redis"
  ##node_type            = "cache.t2.micro"
  ##num_cache_nodes      = 1
  ##parameter_group_name = "default.redis3.2"
  ##engine_version       = "3.2.10"
  ##port                 = 6379
  ##security_group_ids   = [module.network.pub_sg_id, module.network.private_sg_id, module.network.db_sg_id]
  ##subnet_group_name    = module.network.ecash_subnets_name

  ##depends_on = [module.network]
##}