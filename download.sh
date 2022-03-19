echo "Downloading RGBD Freiburg1_XYZ dataset..."
wget https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_xyz.tgz
tar -xvzf ./rgbd_dataset_freiburg1_xyz.tgz
mv ./rgbd_dataset_freiburg1_xyz ./data
# rename files to get rid of dot in filename
for i in ./data/rgb/*; do 
    mv $i $(echo $i | sed "s/\./_/2");
done
