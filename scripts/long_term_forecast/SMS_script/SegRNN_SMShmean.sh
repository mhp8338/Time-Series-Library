export CUDA_VISIBLE_DEVICES=1
export CUDA_LAUNCH_BLOCKING=1

model_name=SegRNN

seq_len=96
for pred_len in 24 48 96 120
do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id SMShmean_$seq_len'_'$pred_len \
  --model $model_name \
  --data sms_hour_mean \
  --features M \
  --seq_len $seq_len \
  --pred_len $pred_len \
  --seg_len 24 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5\
  --d_model 512 \
  --dropout 0.5 \
  --learning_rate 0.0001 \
  --des 'Exp' \
  --itr 1
done
