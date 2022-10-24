#!/bin/sh
EXP=exp_voc
TYPE=ms
THR=0.25

# CUDA_VISIBLE_DEVICES=0 python ./scripts/test_l2g_voc.py \
#     --img_dir=../cs701/public/val_image/ \
#     --test_list=../cs701/public/submission/label.txt \
#     --batch_size=1 \
#     --dataset=pascal_voc \
#     --input_size=224 \
# 	--num_classes=20 \
#     --thr=${THR} \
#     --restore_from=./runs/${EXP}/model/pascal_voc_epoch_13.pth \
#     --save_dir=./runs/${EXP}/${TYPE}/attention/ \
#     --multi_scale \
#     --cam_png=./runs/${EXP}/cam_png/

CUDA_VISIBLE_DEVICES=0 python ./scripts/test_l2g_voc.py \
    --img_dir=../cs701/public/val_image/ \
    --test_list=../cs701/public/submission/label_.txt \
    --batch_size=1 \
    --dataset=pascal_voc \
    --input_size=224 \
	--num_classes=20 \
    --thr=${THR} \
    --restore_from=./runs/public_pretrained.pth \
    --save_dir=./runs/${EXP}/${TYPE}/attention/ \
    --multi_scale \
    --cam_png=./runs/${EXP}/cam_png/

# CUDA_VISIBLE_DEVICES=1 python3 scripts/evaluate_mthr_voc.py \
#     --datalist ./data/voc12/train_aug.txt \
#     --gt_dir ./data/voc12/SegmentationClassAug/ \
#     --save_path ./runs/${EXP}/${TYPE}/result.txt \
#     --pred_dir ./runs//${EXP}/${TYPE}/attention/
