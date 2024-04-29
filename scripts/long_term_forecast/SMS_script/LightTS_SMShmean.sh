export CUDA_VISIBLE_DEVICES=1

model_name=LightTS

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id sms_hour_mean_96_96 \
  --model $model_name \
  --data sms_hour_mean \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1\
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id sms_hour_mean_96_192 \
  --model $model_name \
  --data sms_hour_mean \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1\
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id sms_hour_mean_96_336 \
  --model $model_name \
  --data sms_hour_mean \
  --features M \
  --seq_len 48 \
  --label_len 24 \
  --pred_len 16 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1\
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id sms_hour_mean_96_720 \
  --model $model_name \
  --data sms_hour_mean \
  --features M \
  --seq_len 48 \
  --label_len 24 \
  --pred_len 8 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1\
  --d_model 128