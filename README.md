<!-- markdownlint-disable MD014 -->

# scoop-nonportable

A [Scoop](https://scoop.sh/) bucket for nonportable applications.

    $ scoop bucket add nonportable

Pull requests are welcome!

## Benefits of nonportable applications

The majority of applications in the other known buckets are portable. Portable applications keep all of their data in their installation directory, and this can cause several issues:

* If a portable application is updated using Scoop, all data is lost unless persistent data is defined correctly in the manifest.
* If a portable application is uninstalled using Scoop, all data is lost.
