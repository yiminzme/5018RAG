#### Experiment: Effect of Varying Number of Retrieved Documents

### Setting: 
### 154 test examples
### num_documents_in_context = [3, 7, 11], gold_position = [1, 3, 5]

logfile_base="expt/1_number_of_docs"

#################################################################################################
################################################################################################# improved_RAG
#################################################################################################
#################################################################################################
model="improved_RAG"
num_documents_in_context=3
gold_position=1
seed=10

logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 18 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="improved_RAG"
num_documents_in_context=7
gold_position=3
seed=10
logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 18 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="improved_RAG"
num_documents_in_context=11
gold_position=5
seed=10

logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 9 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results_improved.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type improved \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1





#################################################################################################
################################################################################################# w_RAG
#################################################################################################
#################################################################################################
model="w_RAG"
num_documents_in_context=3
gold_position=1
seed=10

logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 18 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type classic \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="w_RAG"
num_documents_in_context=7
gold_position=3
seed=10

logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 18 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type classic \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1
#################################################################################################
model="w_RAG"
num_documents_in_context=11
gold_position=5
seed=10

logfile="${logfile_base}_${model}_num_docs_${num_documents_in_context}_gold_pos_${gold_position}_seed_${seed}.log"
> $logfile
python -u src/generate_answers_llm.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --model_max_length 4096 \
    --load_full_corpus False \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    --batch_size 9 \
    --save_every 250 \
    --seed $seed \
    >> $logfile 2>&1

python -u src/read_generation_results.py \
    --output_dir data/gen_res \
    --llm_id meta-llama/Llama-2-7b-chat-hf \
    --use_test False \
    --prompt_type classic \
    --use_random False \
    --use_adore False \
    --gold_position $gold_position \
    --num_documents_in_context $num_documents_in_context \
    --get_documents_without_answer True \
    >> $logfile 2>&1
