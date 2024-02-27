#!/bin/bash

python -m pdb llava/eval/model_vqa_loader.py \
    --model-path /mnt/petrelfs/share_data/chenlin/llava/pretrained/llava/llava-v1.5-13b \
    --question-file /mnt/petrelfs/share_data/chenlin/llava/data/eval/pope/coco/coco_pope_popular.json \
    --image-folder /mnt/petrelfs/share_data/chenlin/llava/data/eval/pope/val2014 \
    --answers-file ./playground/data/eval/pope/answers/llava-v1.5-13b.jsonl \
    --temperature 0 \
    --conv-mode vicuna_v1

# python llava/eval/eval_pope.py \
#     --annotation-dir ./playground/data/eval/pope/coco \
#     --question-file ./playground/data/eval/pope/llava_pope_test.jsonl \
#     --result-file ./playground/data/eval/pope/answers/llava-v1.5-13b.jsonl
