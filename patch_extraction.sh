#!/bin/bash

typ=("Normal" "Tumor")
mag=(20.0)

for j in {0..1}; do
for i in {0..5}; do
python create_patches_fp.py --source ~/../../mnt/nvme0n1/Dataset/classification/histopathology_classification/camelyon/train/${typ[$j]} --save_dir ~/../../mnt/nvme0n1/Dataset/classification/histopathology_classification/camelyon/CLAM_256x256/train/${typ[$j]}/${mag[$i]} --patch_size 256 --seg --patch --stitch --patch_level $(($i + 1))

done
done
