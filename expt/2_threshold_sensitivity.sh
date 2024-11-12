#### Experiment: Filtering Threshold Sensitivity

### Setting: 
### 154 test examples
### filtering_threshold = [0.4, 0.7, 1.0]

logfile_base="expt/2_threshold_sensitivity"

#################################################################################################
################################################################################################# improved_RAG
#################################################################################################
#################################################################################################
model="improved_RAG"
filtering_threshold=0.4
seed=10

logfile="${logfile_base}_${model}_threshold_${filtering_threshold}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
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
    --save_every 250 \
    --filtering_threshold $filtering_threshold \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position 3 \
    --num_documents_in_context 7 \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="improved_RAG"
filtering_threshold=0.7
seed=10

logfile="${logfile_base}_${model}_threshold_${filtering_threshold}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
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
    --save_every 250 \
    --filtering_threshold $filtering_threshold \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position 3 \
    --num_documents_in_context 7 \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="improved_RAG"
filtering_threshold=1.0
seed=10

logfile="${logfile_base}_${model}_threshold_${filtering_threshold}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
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
    --save_every 250 \
    --filtering_threshold $filtering_threshold \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position 3 \
    --num_documents_in_context 7 \
    --get_documents_without_answer True \
    >> $logfile 2>&1
