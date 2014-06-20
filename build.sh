# ---------------------------
# Build Custom Repository
# ---------------------------

./customrepo/build.sh

# ---------------------------
# Build ISO
# ---------------------------

# Clean up
rm -rf ./releng/work/*
rm -rf ./releng/out

# Change root ownership
chown -R root:root ./releng/root-image

# Call the original build script
./releng/build.sh -v

# Change ownership back
chown -R bryan:users releng/root-image
