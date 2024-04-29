export CUDA_VISIBLE_DEVICES=2

model_name=Informer
# 144
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path minute_max_grid_activity.csv \
  --model_id SMS_288_144_144 \
  --model $model_name \
  --data sms_minute_max \
  --features M \
  --seq_len 288 \
  --label_len 144 \
  --pred_len 144 \
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
  --data_path minute_mean_grid_activity.csv \
  --model_id SMS_288_144_144 \
  --model $model_name \
  --data sms_minute_mean \
  --features M \
  --seq_len 288 \
  --label_len 144 \
  --pred_len 144 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128
#288
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path minute_mean_grid_activity.csv \
  --model_id SMS_576_144_288 \
  --model $model_name \
  --data sms_minute_mean \
  --features M \
  --seq_len 576 \
  --label_len 144 \
  --pred_len 288 \
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
  --data_path minute_max_grid_activity.csv \
  --model_id SMS_576_144_288 \
  --model $model_name \
  --data sms_minute_max \
  --features M \
  --seq_len 576 \
  --label_len 144 \
  --pred_len 288 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128
# 576
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path minute_max_grid_activity.csv \
  --model_id SMS_1152_288_576 \
  --model $model_name \
  --data sms_minute_max \
  --features M \
  --seq_len 1152 \
  --label_len 288 \
  --pred_len 576 \
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
  --data_path minute_mean_grid_activity.csv \
  --model_id SMS_1152_288_576 \
  --model $model_name \
  --data sms_minute_mean \
  --features M \
  --seq_len 1152 \
  --label_len 288 \
  --pred_len 576 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128
# 1008
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/sms/ \
  --data_path minute_mean_grid_activity.csv \
  --model_id MSS_2016_504_1008 \
  --model $model_name \
  --data sms_minute_mean \
  --features M \
  --seq_len 2016 \
  --label_len 504 \
  --pred_len 1008 \
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
  --data_path minute_max_grid_activity.csv \
  --model_id MSS_2016_504_1008 \
  --model $model_name \
  --data sms_minute_max \
  --features M \
  --seq_len 2016 \
  --label_len 504 \
  --pred_len 1008 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128
