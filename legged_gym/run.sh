
python legged_gym/scripts/train.py --run_name 0326-2  --sim_device cuda:0 --rl_device cuda:0 --task=g1    #  --headless --no_wandb
python legged_gym/scripts/play.py --load_run 0326-6    --sim_device cuda:0 --rl_device cuda:0 --task=g1   --checkpoint -1 #    --checkpoint -1

CUDA_LAUNCH_BLOCKING=1


huggingface-cli download --repo-type dataset fleaven/Retargeted_AMASS_for_robotics --local-dir ./AMASS  --local-dir-use-symlinks False

sudo aria2c --conf-path=/etc/aria2/aria2.conf -D
./hfd.sh fleaven/Retargeted_AMASS_for_robotics --dataset


tensorboard --logdir=/home/mycode/humanplus/HST/legged_gym/logs/rough_g1/0322-1