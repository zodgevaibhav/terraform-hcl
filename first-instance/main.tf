resource "google_compute_instance" "default"{
    name="my-first-machine"
    machine_type="n1-standard-1"
    zone="us-central1-a"

    boot_disk{
        initialize_params{
            image="ubuntu-os-cloud/ubuntu-1604-lts"
        }
    }

    network_interface {
        network = "default"
    }

    service_account{
        scopes=["userinfo-email", "compute-ro","storage-ro"]
    }
}