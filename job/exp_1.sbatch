#!/bin/bash
#SBATCH --job-name=test          # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --gpus=1                 # number of GPUs per node(only valid under large/normal partition)
#SBATCH --time=00:40:00          # total run time limit (HH:MM:SS)
#SBATCH --partition=normal       # partition(large/normal/cpu) where you submit
#SBATCH --account=mscbdt2024     # only require for multiple projects

python src/generate_answers_llm_improved.py     --output_dir data/gen_res     --llm_id meta-llama/Llama-2-7b-chat-hf     --model_max_length 4096     --load_full_corpus False     --use_random False     --use_adore False     --gold_position 4     --num_documents_in_context 9     --get_documents_without_answer True     --batch_size 18     --save_every 2 --max_dataset_size 154
python src/generate_answers_llm_improved.py     --output_dir data/gen_res     --llm_id meta-llama/Llama-2-7b-chat-hf     --model_max_length 4096     --load_full_corpus False     --use_random False     --use_adore False     --gold_position 4     --num_documents_in_context 10     --get_documents_without_answer True     --batch_size 18     --save_every 2 --max_dataset_size 154
