# Install some packages

# List of packages for container default project
pkgs=["Plots","NetCDF"]

# Install them
using Pkg
for pkg in pkgs
   Pkg.add(pkg)
end