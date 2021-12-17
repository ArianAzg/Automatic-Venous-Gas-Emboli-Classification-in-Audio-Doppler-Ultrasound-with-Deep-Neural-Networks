# Automatic-Venous-Gas-Emboli-Classification-with-Deep-Neural-Networks

Overview
------------

A novel deep learning model has been developed to classify the Venous Gas Emboli (VGE) grade in Doppler ultrasound audio recordings. To date, this is the first attempt to incorporate deep learning model into VGE detection and classification in audio Doppler ultrasound.

First, several hours of synthetic data were generated and collected according to Spencer scale in the laboratory settings. Then, the synthetic data were superimposed with cardiac signal to simulate the behavior of real audio Doppler ultrasound. Later, a novel squeeze-and-excitation deep learning model is designed to effectively classify VGE grade. A large amount of real data was annotated recently and used to fine-tune the developed model for practical purposes.

The synthetic phase of the developed model including synthetic data generation and model training is depicted in the following figure: 

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146570909-c05c1aaf-6cb1-4a66-98b8-9894f5ba0200.jpg" width="800" align="center">
</p>

The architecture of the designed model is shown below:

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146574698-3e53aad8-1193-4115-a111-f68fb82b7ecd.png" width="600" align="center">
</p>

Requirements
------------

The code is written in Python 3.9 and uses Keras and TensorFlow. All the required packages can be installed using the following command:
    
    $ pip install -r requirements.txt

How to run
----------

- **Synthetic data organization/division**

The synthetic data after collection is prepared and organized in MATLAB. First, the model is trained on synthetic data. Before running the code, you are required to organize the dataset into training, validation, and test sets. This step can be done by the MATLAB code called **_Train_test_validation_division.m_**, where the data folder must be set correctly for this MATLAB code. An example of data folder structure is shown below:

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146580139-01e66e9f-a2df-48c1-92a8-6b0ec2822790.jpg" width="600" align="center">
</p>

- **Pre-processing steps for real data**

The real audio Doppler recordings vary in duration. The very first step required to take is to reshape the real data to make it compatible with model developed for synthetic data. Moreover, the sampling frequency needs to be set to 8 kHz to consider 5-seconds of audio signal as input. These pre-processing steps are written in MATLAB code called _**Real_data_organzier.m**_, where the correct location of real audio Doppler recordings must be set before running the code. 

Similar to synthetic data organization, the orgnazied real data must be split into Training, Validation, Test sets accordingly. The MATLAB code **_Train_test_validation_division_real_data.m_** is written to perform this division. 

- **Running the model**

The Python code called _**AudioDopplerAutomaticVenousGasEmboliClassification.ipynb**_ is written in Jupyter Notebook IDE. To make the usage of code easier, the code has been section-wise. It is critical to set all the required paths correctly before running the code. 


License and Citation
---------
The codes are licensed under GPL-2.0 license. 

For any utilization of the code content of this repository, the following paper needs to be cited by the user: 

> D.Q. Le*, A. Azarang*, A. Hoang, L. Blogg, P.A. Dayton, R. Lance, M. Natoli, A. Gatrell, R.E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade Classification in Doppler Ultrasound Audio Recordings", Under Review in _IEEE Transactions on Biomdeical Engineering_.

***Authors contributed equally**
