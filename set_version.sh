#!/bin/bash

# Get the latest tag
latest_tag=$(git describe --tags --abbrev=0)

# Extract major, minor, and patch versions
major_version=$(echo $latest_tag | cut -d. -f1)
minor_version=$(echo $latest_tag | cut -d. -f2)
patch_version=$(echo $latest_tag | cut -d. -f3)

# Increment the version based on your versioning strategy
# For example, incrementing the patch version for a new release
new_patch_version=$((patch_version + 1))

# Set the new version
new_version="$major_version.$minor_version.$new_patch_version"

echo $new_version
