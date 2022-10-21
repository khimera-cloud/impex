# impex
Experimental VM import-export scripts between AWS EC2 and GCE

This is a set of scripts I wrote to test the official APIs for Importing/Exporting VMs of AWS EC2 and Google Compute Engine.
Probably they are not usable right away, but may provide a nice reference later for academical purposes.

The conclusion of this experiment is
**The offical APIs at the time (fall 2022) where slow to export, and even more slower to import.**

# AWS
The import process is extremly slow, because of additional checks and conversions on the Cloud Provider's side.

The Import API is also very limited in acceptable OSes for the Imported VMs.
[Here is the complete list of available OSes for AWS EC2 Import] (https://docs.aws.amazon.com/vm-import/latest/userguide/prerequisites.html#vmimport-operating-systems)

This is because of the older XEN-based Hypervisor limitations, I shall repeat the tests with the new Nitro (KVM-based) instance types.

# GCE
The import and export functions work fairly well, and relatively easy to use.

## See the command line interfaces reference for both:
[AWS EC2 CLI reference] (https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/index.html)
[GCE CLI reference] (https://cloud.google.com/sdk/gcloud/reference)
