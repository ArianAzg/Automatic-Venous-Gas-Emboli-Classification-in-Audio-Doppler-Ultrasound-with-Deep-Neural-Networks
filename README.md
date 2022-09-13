# Automatic-Venous-Gas-Emboli-Classification-with-Deep-Neural-Networks

Overview
------------

A novel deep learning model has been developed to classify the Venous Gas Emboli (VGE) grade in Doppler ultrasound audio recordings. To date, this is the first attempt to incorporate deep learning model into VGE detection and classification in audio Doppler ultrasound.

First, several hours of synthetic data were generated and collected according to Spencer scale in the laboratory settings. Then, the synthetic data were superimposed with cardiac signal to simulate the behavior of real audio Doppler ultrasound. Later, a novel squeeze-and-excitation deep learning model is designed to effectively classify VGE grade. A large amount of real data was annotated recently and used to fine-tune the developed model for practical purposes.

The synthetic phase of the developed model including synthetic data generation and model training is depicted in the following figure: 

<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/177014132-24964a92-bdbc-4bc9-9f6a-37c6ea8bed7c.png" width="800" align="center" alt>
<h2 align="center">Synthetic data generation and training phases</h2>
</p>
-->

<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/181655493-beaa09fd-60d1-46a8-8d93-a378c237da94.jpg" width="800" align="center" alt>
<h2 align="center">General view of deep model for VGE grading </h2>
</p>
-->




The architecture of the designed model is shown below:

<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/181655731-ea434845-26d9-4c6b-a7af-8ddfa8d8f706.jpg" width="800" align="center" alt>
<h2 align="center">Designed 1-D network for VGE grade classfication</h2>
</p>
-->




Requirements
------------

The Python code is written in Python 3.9 and uses Keras and TensorFlow. The developed MATLAB codes are based on R2021b version. All the required Python packages can be installed using the following command:
    
    $ pip install -r requirements.txt

How to run
----------

- **Synthetic data organization/division**

The synthetic data after collection is prepared and organized in MATLAB. First, the model is trained on synthetic data. Before running the code, you are required to organize the dataset into training, validation, and test sets. This step can be done by the MATLAB code called **_Train_test_validation_division.m_**, where the data folder must be set correctly for this MATLAB code. An example of data folder structure is shown below:
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146580139-01e66e9f-a2df-48c1-92a8-6b0ec2822790.jpg" width="600" align="center">
<h2 align="center">Example of correct location path</h2>
</p>
-->
- **Pre-processing steps for real data**

The real audio Doppler recordings vary in duration. The very first step required to take is to reshape the real data to make it compatible with model developed for synthetic data. Moreover, the sampling frequency needs to be set to 8 kHz to consider 10-seconds of audio signal as input. These pre-processing steps are written in MATLAB code called _**Real_data_organzier.m**_, where the correct location of real audio Doppler recordings must be set before running the code. To date, the available data for fine-tuning step is depicted in the following figure:
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/146588159-c80407e9-fd7f-435a-bfeb-1401f46ecccf.png" width="500" align="center">
<h2 align="center">Available real Doppler recordings data for fine-tuning</h2>
</p>
-->

Similar to synthetic data organization, the orgnazied real data must be split into Training, Validation, Test sets accordingly. The MATLAB code **_Train_test_validation_division_real_data.m_** is written to perform this division. 

- **Running the model**

The Python code called _**AudioDopplerAutomaticVenousGasEmboliClassification.ipynb**_ is written in Jupyter Notebook IDE. To make the usage of code easier, the code has been section-wise. It is critical to set all the required paths correctly before running the code. 



Classification results: Synthetic and real modes
----------

- **Synthetic data results**

The 10-fold cross validation result on synthetic data is shown below: 
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/177013453-d18fb27e-244a-491f-b9e6-94e835c51cf6.jpg" width="400" align="center">
</p>
<!--

The confusion matrix for synthetic data test set on trained mode is shown below: 
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/177013413-3746e8e9-3965-4772-90c5-f89c3d7d0efa.jpg" width="400" align="center">
</p>
-->

5-class classification accuracy:
| VGE Grade | Ordinal Accuracy |
| --- | --- |
| Grade 0 | 97.8% |
| Grade 1 | 91.0% |
| Grade 2 | 93.6% |
| Grade 3 | 99.6% |
| Grade 4 | 99.4% |
| Average | 96.4% |


Binary classification accuracy (low VGE grade (0 - 2) vs. high VGE grade (3 and 4): 
| VGE Level | Accuracy |
| --- | --- |
| Low grade  | 99.6% |
| High grade | 99.0% |
| Average | 99.2% |


- **Real data results**
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/177013646-0544bbfa-160c-4067-9a26-bc3707cb8ced.png" width="800" align="center">
<h2 align="center">Learning curves of synthetic data</h2>
</p>
-->

The confusion matrix for precordial region and subclavian veins are shown below (left: precordial, right: subclavian): 
<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/177013507-5baef708-f9e4-4afa-a3d0-ac951f2fcb53.png" width="600" align="center">
</p>
-->

5-class classification accuracy:

<!--
<p align="center">
<img src="https://user-images.githubusercontent.com/48659018/181656173-23c4628c-0804-4503-8798-6840594fceb3.jpg" width="800" height = "700" align="center">
</p>
-->



License and Citation
---------
The codes are licensed under GPL-2.0 license. 

For any utilization of the code content of this repository, the following paper needs to be cited by the user: 

> A. Azarang*, D.Q. Le*, A. Hoang, L. Blogg, P.A. Dayton, R. Lance, M. Natoli, A. Gatrell, Frauke Tillmans, R.E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade Classification in Doppler Ultrasound Audio Recordings", Under Review in _IEEE Transactions on Biomdeical Engineering_.

***Authors contributed equally**
