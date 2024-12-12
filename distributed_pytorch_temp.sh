NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=20 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=True \
training.ema_validate=True \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="rstp" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="rstp_finetune/august_15/baseline-ema-eda-bboxxvlm" \
wandb.wandb_experiment_name="<ema><eda><bboxxvlm>" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=70 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.rstp_train_file_path='["annotations/json_format/rstp_train_with_bbox.json"]' \
datamodule_args.do_eda=True \
datamodule_args.use_bbox=True \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": 0.8}"

NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=12 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=False \
training.ema_validate=False \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="rstp" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="rstp_finetune/august_15/baseline-eda" \
wandb.wandb_experiment_name="<eda>" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=0 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.rstp_train_file_path='["annotations/json_format/rstp_train.json"]' \
datamodule_args.do_eda=True \
datamodule_args.use_bbox=False \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": -0.8}"

NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=12 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=False \
training.ema_validate=False \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="rstp" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="rstp_finetune/august_15/baseline" \
wandb.wandb_experiment_name="baseline" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=0 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.rstp_train_file_path='["annotations/json_format/rstp_train.json"]' \
datamodule_args.do_eda=False \
datamodule_args.use_bbox=False \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": -0.8}"

NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=20 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=True \
training.ema_validate=True \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="cuhk" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="cuhk_finetune/august_15/baseline-ema-eda-bboxxvlm" \
wandb.wandb_experiment_name="<ema><eda><bboxxvlm>" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=70 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.cuhk_train_file_path='["annotations/json_format/cuhk_train_with_bbox.json"]' \
datamodule_args.do_eda=True \
datamodule_args.use_bbox=True \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": 0.8}"

NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=12 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=False \
training.ema_validate=False \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="cuhk" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="cuhk_finetune/august_15/baseline-eda" \
wandb.wandb_experiment_name="<eda>" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=0 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.cuhk_train_file_path='["annotations/json_format/cuhk_train.json"]' \
datamodule_args.do_eda=True \
datamodule_args.use_bbox=False \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": -0.8}"

NCCL_P2P_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1,2,3 \
torchrun --nproc_per_node=4 \
--rdzv_endpoint=localhost:6961 \
--rdzv_id=4 --rdzv_backend=c10d --nnodes=1 base_train.py \
--cfg-path=config/demo_aptm_config.yaml \
--cfg-options \
model.pretrained_model_path="/dscilab_dungvo/workspace/BA-PRE_THESIS/dscilab_tbps/checkpoints/aptm_rf_2/backbone_may9_hap_albef/2024-05-09_14-46-42-<pretrain<synth_pedes><albef_architecture><all_gather_aptm><2M><init-weight=hap_albef>/best_itm_rmean.pt" \
training.validate_by_step=False \
training.optimizer.optimizer_name="Adam8bit" \
training.optimizer.schedule_by_epoch=True \
training.optimizer.lr_scheduler_name="WarmupCosineAnnealingLR" \
training.patience=12 \
training.activation_checkpointing=False \
training.k_test=64 \
training.enable_amp=True \
training.enable_tf32=True \
training.enable_full_half_precision=False \
training.ema_training=False \
training.ema_validate=False \
training.half_precision_format="bfloat16" \
training.find_unused_parameters=False \
model.use_fp32_layer_norm=True \
model.mlm_args.mlm_probability=0.2 \
model.lm_args.init_weight_from_mlm_head=False \
model.lm_args.use_mlm_head_as_lm_head=False \
model.use_switch_mlm_lm_mode=False \
datamodule_args.erasing_p=0.5 \
training.train_batch_size=170 \
model.vision_encoder_args.name_vision_encoder="hap" \
model.vision_encoder_args.pretrained_path="" \
datamodule_args.max_seq_len=56 \
datamodule_args.height=256 \
datamodule_args.width=128 \
model.vision_encoder_args.img_size="[256, 128]" \
datamodule_args.name_dataset="cuhk" \
wandb.wandb_project_name="aptm_rf_finetune_2" \
wandb.wandb_group_name="cuhk_finetune/august_15/baseline" \
wandb.wandb_experiment_name="baseline" \
wandb.wandb_tags="" \
wandb.wandb_notes="" \
model.load_ema_weight=False \
training.max_epochs=180 \
training.validation_start_epoch=0 \
training.optimizer.learning_rate_scale=2.0 \
training.optimizer.adam_weight_decay=0.02 \
training.optimizer.warmup_epochs=15 \
training.optimizer.delay_epochs=25 \
training.optimizer.warmup_factor=0.2 \
training.optimizer.warmup_method="linear" \
training.optimizer.adam_betas="[0.9, 0.98]" \
training.optimizer.learning_rate=7.5e-05 \
training.optimizer.eta_min_lr=1.0e-07 \
model.use_spda_attention=False \
model.use_spda_attention_for_ema=True \
model.use_heatmap_to_bbox=False \
constant_args.cuhk_train_file_path='["annotations/json_format/cuhk_train.json"]' \
datamodule_args.do_eda=False \
datamodule_args.use_bbox=False \
model.weight_loss_dict="{\"itm_loss\": 1.0, \"itc_loss\": 1.0, \"mlm_loss\": 1.0, \"lm_loss\": -1.0, \"bbox_loss\": -0.8}"

