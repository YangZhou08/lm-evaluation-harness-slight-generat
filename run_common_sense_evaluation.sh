if [ "$1" = "none" ]; then
    model_name="TinyLlama/TinyLlama-1.1B-intermediate-step-1431k-3T" 
else
    model_name="$1"
fi

lm-eval --model hf --model_args pretrained=$model_name --tasks piqa --device cuda:0 --batch_size 8
lm-eval --model hf --model_args pretrained=$model_name --tasks hellaswag --device cuda:0 --batch_size 8 
lm-eval --model hf --model_args pretrained=$model_name --tasks winogrande --device cuda:0 --batch_size 8 
lm-eval --model hf --model_args pretrained=$model_name --tasks arc_easy --device cuda:0 --batch_size 8 
lm-eval --model hf --model_args pretrained=$model_name --tasks arc_challenge --device cuda:0 --batch_size 8 
lm-eval --model hf --model_args pretrained=$model_name --tasks mmlu --device cuda:0 --batch_size 8 
lm-eval --model hf --model_args pretrained=$model_name --tasks mmlu --device cuda:0 --batch_size 8 --num_fewshot 5 
