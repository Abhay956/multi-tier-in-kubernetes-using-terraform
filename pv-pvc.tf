resource "kubernetes_persistent_volume_claim" "example" {
  metadata {
	name = "${var.pvc-name}"
  }
  spec {
	storage_class_name = "manual"
	access_modes = ["ReadWriteMany"]
	resources {
  	requests = {
    	storage = "5Gi"
  	}
	}
	volume_name = "${var.pv-name}"
  }
}

resource "kubernetes_persistent_volume" "example" {
  metadata {
	name = "${var.pv-name}"
  }
  spec {
	storage_class_name = "manual"
	capacity = {
  	storage = "10Gi"
	}
	access_modes = ["ReadWriteMany"]
	persistent_volume_source {
	nfs {
    	path = "/data-store"
    	server = "controlplane"
    	}
 	}
  	}
	}


