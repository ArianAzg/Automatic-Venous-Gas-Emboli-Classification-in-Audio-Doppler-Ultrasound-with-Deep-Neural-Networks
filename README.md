# Automatic-Venous-Gas-Emboli-Classification-with-Deep-Neural-Networks

Overview
------------

A novel deep learning model has been developed to classify the Venous Gas Emboli (VGE) grade in Doppler ultrasound audio recordings. To date, this is the first attempt to incorporate deep learning model into VGE detection and classification in audio Doppler ultrasound.

First, several hours of synthetic data were generated and collected according to Spencer scale in the laboratory settings. Then, the synthetic data were superimposed with cardiac signal to simulate the behavior of real audio Doppler ultrasound. Later, a novel squeeze-and-excitation deep learning model is designed to effectively classify VGE grade. A large amount of real data was annotated recently and used to fine-tune the developed model for practical purposes.

The synthetic phase of the developed model including synthetic data generation and model training is depicted in the following figure: 

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146570909-c05c1aaf-6cb1-4a66-98b8-9894f5ba0200.jpg" width="800" align="center" alt>
<h2 align="center">Synthetic data generation and training phases</h2>
</p>

The architecture of the designed model is shown below:

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146574698-3e53aad8-1193-4115-a111-f68fb82b7ecd.png" width="500" align="center">
<h2 align![Network_Architecture](https://user-images.githubusercontent.com/48659018/177012032-36d164cf-4423-46f9-8f89-a77a2607c2de.jpg)
="center">Designed 1-D network for VGE grade classfication</h2>
</p>




Requirements
------------

The Python code is written in Python 3.9 and uses Keras and TensorFlow. The developed MATLAB codes are based on R2021b version. All the required Python packages can be installed using the following command:
    
    $ pip install -r requirements.txt

How to run
----------

- **Synthetic data organization/division**

The synthetic data after collection is prepared and organized in MATLAB. First, the model is trained on synthetic data. Before running the code, you are required to organize the dataset into training, validation, and test sets. This step can be done by the MATLAB code called **_Train_test_validation_division.m_**, where the data folder must be set correctly for this MATLAB code. An example of data folder structure is shown below:

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146580139-01e66e9f-a2df-48c1-92a8-6b0ec2822790.jpg" width="600" align="center">
<h2 align="center">Example of correct location path</h2>
</p>

- **Pre-processing steps for real data**

The real audio Doppler recordings vary in duration. The very first step required to take is to reshape the real data to make it compatible with model developed for synthetic data. Moreover, the sampling frequency needs to be set to 8 kHz to consider 5-seconds of audio signal as input. These pre-processing steps are written in MATLAB code called _**Real_data_organzier.m**_, where the correct location of real audio Doppler recordings must be set before running the code. To date, the available data for fine-tuning step is depicted in the following figure:

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146588159-c80407e9-fd7f-435a-bfeb-1401f46ecccf.png" width="500" align="center">
<h2 align="center">Available real Doppler recordings data for fine-tuning</h2>
</p>


Similar to synthetic data organization, the orgnazied real data must be split into Training, Validation, Test sets accordingly. The MATLAB code **_Train_test_validation_division_real_data.m_** is written to perform this division. 

- **Running the model**

The Python code called _**AudioDopplerAutomaticVenousGasEmboliClassification.ipynb**_ is written in Jupyter Notebook IDE. To make the usage of code easier, the code has been section-wise. It is critical to set all the required paths correctly before running the code. 


Classification results: Synthetic and real modes
----------

- **Synthetic data results**

The confusion matrix for synthetic data test set on trained mode is shown below: 

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146588454-0248ea2f-c00c-4bbf-a7b6-e4e80f75bb4b.png" width="400" align="center">
</p>

5-class classification accuracy:
| VGE Grade | Accuracy |
| --- | --- |
| Grade 0 | 80% |
| Grade 1 | 60% |
| Grade 2 | 54% |
| Grade 3 | 83% |
| Grade 4 | 97% |
| Average | 76% |


Binary classification accuracy (low VGE grade (0 - 2) vs. high VGE grade (3 and 4): 
| VGE Level | Accuracy |
| --- | --- |
| Low grade  | 98% |
| High grade | 96% |
| Average | 97% |


- **Real data results**

The confusion matrix for precordial region and subclavian veins are shown below (left: precordial, right: subclavian): 

<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146592437-fe5db22f-8c8a-4d77-b4d7-90290eee48ff.png" width="400" align="center">
<img src="https://user-images.githubusercontent.com/48659018/146592476-a4223461-806a-425b-b5b7-3e9c44c1893f.png" width="400" align="center">
</p>

5-class classification accuracy:
| Class No. | Accuracy |
| --- | --- |
| Grade 0 | 95.5% |
| Grade 1 | 66.7% |
| Grade 2 | 94.1% |
| Grade 3 | 90.2% |
| Grade 4 | 50% |
| Average | 79.3% |

Binary classification accuracy (low VGE grade (0 - 2) vs. high VGE grade (3 and 4): 
| VGE Level | Accuracy |
| --- | --- |
| Low grade  | 92.7% |
| High grade | 83.3% |
| Average | 88% |


License and Citation
---------
The codes are licensed under GPL-2.0 license. 

For any utilization of the code content of this repository, the following paper needs to be cited by the user: 

> D.Q. Le*, A. Azarang*, A. Hoang, L. Blogg, P.A. Dayton, R. Lance, M. Natoli, A. Gatrell, R.E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade Classification in Doppler Ultrasound Audio Recordings", Under Review in _IEEE Transactions on Biomdeical Engineering_.

***Authors contributed equally**
