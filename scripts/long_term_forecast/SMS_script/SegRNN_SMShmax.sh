export CUDA_VISIBLE_DEVICES=1
export CUDA_LAUNCH_BLOCKING=1
#model_name=SegRNN
#
#python -u run.py \
#  --task_name long_term_forecast \
#  --is_training 1 \
#  --root_path ./dataset/sms/ \
#  --data_path hourly_max_grid_activity.csv \
#  --model_id sms_hour_max_96_96 \
#  --model $model_name \
#  --data sms_hour_max \
#  --features M \
#  --seq_len 96 \
#  --label_len 48 \
#  --pred_len 48 \
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 5 \
#  --dec_in 5 \
#  --c_out 5 \
#  --des 'Exp' \
#  --itr 1\
#  --d_model 128

model_name=SegRNN

seq_len=96
for pred_len in 24 48 96 120
do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_max_grid_activity.csv \
  --model_id SMShmax_$seq_len'_'$pred_len \
  --model $model_name \
  --data sms_hour_max \
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