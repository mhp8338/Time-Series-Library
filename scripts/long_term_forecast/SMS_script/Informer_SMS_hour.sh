export CUDA_VISIBLE_DEVICES=2

model_name=Informer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_max_grid_activity.csv \
  --model_id MSS_96_48_48 \
  --model $model_name \
  --data sms_hour_max \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id MSS_96_48_48 \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id MSS_96_48_24 \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_max_grid_activity.csv \
  --model_id MSS_96_48_24 \
  --model $model_name \
  --data sms_hour_max \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_max_grid_activity.csv \
  --model_id MSS_48_24_16 \
  --model $model_name \
  --data sms_hour_max \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id MSS_48_24_16 \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_mean_grid_activity.csv \
  --model_id MSS_48_24_8 \
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
  --itr 1 \
  --d_model 128

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path hourly_max_grid_activity.csv \
  --model_id MSS_48_24_8 \
  --model $model_name \
  --data sms_hour_max \
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
  --itr 1 \
  --d_model 128