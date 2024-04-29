export CUDA_VISIBLE_DEVICES=1
export CUDA_LAUNCH_BLOCKING=1

model_name=TimesNet

# 定义两个列表，一个是pred_len，另一个是对应的seq_len
pred_lens=(144 288 576 1008)
seq_lens=(288 576 1152 2016)  # 这里根据你的需要设置seq_len的值
label_lens=(144 144 288 504) # 这里根据你的需要设置seq_len的值

# 获取pred_lens列表的长度
pred_len_length=${#pred_lens[*]}

# 遍历pred_lens列表
for ((i = 0; i < pred_len_length; i++)); do
  pred_len=${pred_lens[$i]}
  seq_len=${seq_lens[$i]}
  label_len=${label_lens[$i]}

  python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path ./dataset/sms/ \
    --data_path minute_max_grid_activity.csv \
    --model_id SMSmmax_$seq_len'_'$pred_len \
    --model $model_name \
    --data sms_minute_max \
    --features M \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 5 \
    --dec_in 5 \
    --c_out 5 \
    --d_model 16 \
    --d_ff 16 \
    --dropout 0.5 \
    --des 'Exp' \
    --itr 1 \
    --top_k 5
done
