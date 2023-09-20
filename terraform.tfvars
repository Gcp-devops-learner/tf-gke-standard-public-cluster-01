project_id   = "km1-runcloud"
cluster_name = "gke-terraform-project"
region       = "europe-west2"



node_pools = [
    {
      name            =  "node-pool"
      machine_type    =  "e2-standard-2"
      node_locations  =  "europe-west2-b,europe-west2-c"
      min_count       = 2
      max_count       = 2
      disk_size_gb    = 30
      spot            = false
      auto_upgrade    = true
      auto_repair     = true
      autoscaling     = true
      service_account = "sricharank-google-com@km1-runcloud.iam.gserviceaccount.com"
    },
  ]