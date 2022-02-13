# great_barrier_reef_kaggle

The goal of that challenge was to accurately detect starfish. An F2 score of 0.478 in Public Leaderboard was achieved.

## Models and Splits

YOLOv5 was the model used. Many different models with different number of parameters were trained. More specifically, we trained YOLOv5m, YOLOv5x, and YOLOv5l6, as defined in https://github.com/ultralytics/yolov5. For each of those YOLO versions we trained 3 models, each trained on 2 out of 3 videos in our dataset, leaving the third for validation. Training parameters for versions YOLOv5m, YOLOv5x were left to the default ones, whereas for YOLOv5l6 the parameters used can be found in file hyp.scratch. 

Models trained using University of Groningen Cluster. For that, a virtual environment was created and the Bash files needed to initialize the Jupyter notebook to create training folders, as well as the file to initialize training can be found in this repository (jupyter.sh and BashHS2.sh).

In Inference mode the best results were achieved with an ensemble of 2 models of YOLOv5l6 (trained on videos 0,2 and 0,1) and 1 from YOLOv5m (trained on videos 0,1), using Non-maximum suppresion (NMS) method. Many different combinations of those models were tested, as well as only inference using one model only. The best threshold found was 0.2 for the IOU. No systematic evaluation of the model performance was performed, which is a major limitation of our approach. Trial and error was what we used to optimize performance of the test set. 

This was our first participation in such a competition. Focus was given into creating a running pipeline and run inference using our trained models. A more systematic approach will be followed in future competitions. 

Useful Sources can be found at the end of great-barrier_kaggle-inference.ipynb file.
