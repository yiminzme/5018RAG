
#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python src/generate_answers_llm_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position 3 \
    --num_documents_in_context 7 \
    --get_documents_without_answer True \
    --batch_size 18 \
    --save_every 250