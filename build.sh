if [[ ${EUID} -ne 0 ]]; then
	echo "This script must be run as root"
	exit 1
fi

# ---------------------------
# Build Custom Repository
# ---------------------------

cd customrepo && ./build.sh && cd ..

# ---------------------------
# Build ISO
# ---------------------------

cd releng

# Clean up
sudo rm -rf ./work/*
sudo rm -rf ./out

# Change root ownership
sudo chown -R root:root root-image

# Call the original build script
sudo ./build.sh -v

# Change ownership back
sudo chown -R bryan:users root-image

cd ..
