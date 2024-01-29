resource "kubernetes_persistent_volume_claim" "example" {
  metadata {
	name = "exampleclaimname"
  }
  spec {
	storage_class_name = "manual"
	access_modes = ["ReadWriteMany"]
	resources {
  	requests = {
    	storage = "5Gi"
  	}
	}
	volume_name = "examplevolumename"
  }
}

resource "kubernetes_persistent_volume" "example" {
  metadata {
	name = "examplevolumename"
  }
  spec {
	storage_class_name = "manual"
	capacity = {
  	storage = "10Gi"
	}
	access_modes = ["ReadWriteMany"]
	persistent_volume_source {
	nfs {
    	path = "/var/lib/mysql"
    	server = "controlplane"
    	}
 	}
  	}
	}


