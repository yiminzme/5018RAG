#!/bin/bash

# cd ..

python src/read_generation_results_improved.py \
    --output_dir data/gen_res_cot \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position 3 \
    --num_documents_in_context 7 \
    --get_documents_without_answer True 

