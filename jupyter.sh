#!/bin/bash

##SBATCH --cpus-per-task=6
##SBATCH --partition=gpu
##SBATCH --gres=gpu:1
##v100:
##SBATCH --mem=24GB
##SBATCH --job-name=train
##SBATCH --time=10:00:00
##SBATCH --time=20:00:00
##SBATCH --output=slurm-train.out


#SBATCH --nodes=1
##SBATCH --tasks-per-node=4
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=03:00:00
#SBATCH --job-name=jupyter
#SBATCH --mem=24G
##SBATCH --partition=vulture

module purge
module load Python/3.7.4-GCCcore-8.3.0
module load IPython/7.9.0-fosscuda-2019b-Python-3.7.4
module load OpenCV

source ~/virtual_env/myenv/bin/activate

#source ~/virtual_env/jupyter_tunnel/bin/activate

jupyter notebook --no-browser --ip=$( hostname )


##module load fosscuda/2019b
#module purge
#module load Python/3.7.4-GCCcore-8.3.0
 
#source /data/$USER/great_reef/.envs/reef_env/bin/activate
##module load TensorFlow/2.3.1-fosscuda-2019b-Python-3.7.4
##module load TensorFlow/1.15.2-fosscuda-2019b-Python-3.7.4
##module load TensorFlow/2.0.0-foss-2019a-Python-3.7.2
##module load PyTorch/1.6.0-fosscuda-2019b-Python-3.7.4
##module load h5py/2.10.0-fosscuda-2019b-Python-3.7.4
#module load OpenCV
##module load Python/3.7.4-GCCcore-8.3.0
##module load CUDA/10.1.243-GCC-8.3.0
##module load cuDNN/7.6.4.38-gcccuda-2019b


##module load OpenCV 
##module load SimpleITK 
##it will cause issues because we don't have it installed as a module. And when you install it under python/pip it will be available automatically 
##when you load up the same Python version.
#cd yolov5

#python -u train.py --img 1280 --batch 4 --epochs 20 --data reef.yaml --weights yolov5s.pt
#--workers 2
#deactivate
#python -u detect.py --weights runs/train/exp6/weights/best.pt --img 1280 --conf 0.1 --source C:/Users/soyrl/Desktop/reef_inference/with_an/video_2/ --save-txt --save-conf --save-crop
#step1_preprocess_luna16_sagital_cornoral_cleaned.py ##step3predict_2d_efficientunet_cleaned.py 
##step9_noduleCADEvaluationLUNA16_cleaned.py 
##step8_create_submission_file_cleaned.py 
##step7_predict_nodule_classifier_dense3D_cleaned.py
##step4_refine_FP_results_cleaned.py
##step7_predict_nodule_classifier_dense3D_cleaned.py
##step5_preprocess_data32_cleaner.py 
##step4_refine_FP_results_cleaned.py
##step2axial_train_2d_efficientunet_cleaned.py
##step3predict_2d_efficientunet_cleaned.py 
##step2axial_train_2d_efficientunet_cleaned.py
##step1_preprocess_luna16_MIP_cleaned.py
##step1_preprocess_luna16_sagital_cornoral_cleaned.py
