# Scoop Nonportable

This is a [Scoop](https://github.com/lukesampson/scoop) [bucket](https://github.com/lukesampson/scoop/wiki/Buckets) which contains nonportable application.

[Scoop](https://github.com/lukesampson/scoop) is an excellent package manager for Windows. It allows installing, uninstalling and updating apps from the command line. The [Scoop repository](https://github.com/lukesampson/scoop) contains many useful application and there are many more in the [extras bucket](https://github.com/lukesampson/scoop-extras). A bucket is a collection of application manifests. An app manifest is a recipe for installing software.

# The problem with portable apps

There is a problem with many applications in the Scoop and extras buckets. Many of them are portable. A portable application is an application that keeps its data in the application folder which leads to many kinds of problems.

1. If you update a portable app with Scoop, then you normally lose all application data. Scoop has a [workaround](https://github.com/lukesampson/scoop/wiki/Persistent-data) for this, but not all app manifests have this workaround.
2. If you install a portable app using Scoop, you will lose[^1] all app data of the previous installation of the app.
3. If you uninstall a portable app using Scoop, you will lose all app data of the portable app[^2].

[^1]: It will remain there physically, but the portable installation will not use it.

[^2]: It will remain there physically, but the nonportable installation will not use it.

# This buck

This bucket contains only nonportable (normal) versions of apps. To add this bucket to Scoop execute

```
scoop bucket add nonportable https://github.com/oltolm/scoop-nonportable
```
