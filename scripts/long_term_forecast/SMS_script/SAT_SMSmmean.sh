export CUDA_VISIBLE_DEVICES=1
export CUDA_LAUNCH_BLOCKING=1

model_name=SAT

# 定义两个列表，一个是pred_len，另一个是对应的seq_len
pred_lens=(144 288 576 1008)
seq_lens=(288 576 1152 2016) # 这里根据你的需要设置seq_len的值
label_lens=(0 0 0 0)         # 这里根据你的需要设置seq_len的值

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
    --data_path minute_mean_grid_activity.csv \
    --model_id SMSmmean_$seq_len'_'$pred_len \
    --model $model_name \
    --data sms_minute_mean \
    --features M \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --enc_in 5 \
    --dec_in 5 \
    --c_out 5 \
    --d_model 64 \
    --d_ff 16 \
    --dropout 0.5 \
    --learning_rate 0.001 \
    --train_epochs 10 \
    --patience 5 \
    --des 'Exp' \
    --itr 1 \
    --batch_size 128 \
    --down_sampling_layers 3 \
    --down_sampling_method avg \
    --down_sampling_window 2 \
    --channel_independence 0 \
    --n_heads 8
done
