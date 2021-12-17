# Automatic-Venous-Gas-Emboli-Classification-with-Deep-Neural-Networks

Overview
------------

A novel deep learning model has been developed to classify the Venous Gas Emboli (VGE) grade in Doppler ultrasound audio recordings. To date, this is the first attempt to incorporate deep learning model into VGE detection and classification in audio Doppler ultrasound.

First, several hours of synthetic data were generated and collected according to Spencer scale in the laboratory settings. Then, the synthetic data were superimposed with cardiac signal to simulate the behavior of real audio Doppler ultrasound. Later, a novel squeeze-and-excitation deep learning model is designed to effectively classify VGE grade. A large amount of real data was annotated recently and used to fine-tune the developed model for practical purposes.

The synthetic phase of the developed model including synthetic data generation and model training is depicted in the following figure: 

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146570909-c05c1aaf-6cb1-4a66-98b8-9894f5ba0200.jpg" width="800" align="center">
</p>


Requirements
------------

The code is written in Python 3.9 and uses Keras and TensorFlow. Recent versions of TensorFlow, sklearn, networkx, numpy, and scipy are required. All the required packages can be installed using the following command:
    
    $ pip install -r requirements.txt

How to run
----------







License and Citation
---------
The codes are licensed under GPL-2.0 license. 

For any utilization of the code content of this repository, the following paper needs to be cited by the user: 

> D. Q. Le*, A. Azarang*, A. Hoang, L. Blogg, P. A. Dayton, R. Lance, M. Natoli, A. Gatrell, R. E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade Classification in Doppler Ultrasound Audio Recordings", Under Review in _IEEE Transactions on Biomdeical Engineering_.

***Authors Contributed Equally**
