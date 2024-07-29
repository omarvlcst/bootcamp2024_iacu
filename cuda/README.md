# Working with and Running CUDA from Google Colab's Jupyter notebook

We can work with C++ code in CUDA within a Google Colab notebook. To do this, we simply need to follow the steps below:

1. We sign in our Google account to save all our workflow below.
2. Go to the Google Colab site while already logged in (alternatively, sign in after opening a window in the Colab site, step 1 and 2 are interchangeable in order)
3. Select the Create a new Notebook option in the pop-up window:
The browser opens a new tab with the newly created notebook. You can change the name of a new notebook by clicking on the "Untitled" notebook title above the open browser tab, and by editing the name in the textbox appearing for it.
4. In the Menu above, we look for the option Runtime, click on it and the submenu will give back a list of options, from which we click now on "Change Runtime type".
5. A new window is shown and we need to change the selected option under "Hardware accelerator" to "T4 GPU". Next, we click Save and the window closes.
6. After this, our runs in the current notebook should be changed to a GPU on which we are allowed to run our code. If the notebook is correctly linked to the T4 GPU, the secondary menu above should mark with a green tick that the T4 is already connected. Otherwise, we should click on "Connect" or "Reconnect" to enable the connection successfully.
7. Insert the next piece of code in a new code cell and run it:
```
!nvidia-smi
```
The output should display the following:
```
+---------------------------------------------------------------------------------------+
| NVIDIA-SMI 535.104.05             Driver Version: 535.104.05   CUDA Version: 12.2     |
|-----------------------------------------+----------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |         Memory-Usage | GPU-Util  Compute M. |
|                                         |                      |               MIG M. |
|=========================================+======================+======================|
|   0  Tesla T4                       Off | 00000000:00:04.0 Off |                    0 |
| N/A   46C    P8              10W /  70W |      0MiB / 15360MiB |      0%      Default |
|                                         |                      |                  N/A |
+-----------------------------------------+----------------------+----------------------+
                                                                                         
+---------------------------------------------------------------------------------------+
| Processes:                                                                            |
|  GPU   GI   CI        PID   Type   Process name                            GPU Memory |
|        ID   ID                                                             Usage      |
|=======================================================================================|
|  No running processes found                                                           |
+---------------------------------------------------------------------------------------+
```
which returns us the CUDA Version already installed in the kernel of Google Colab. As in the case shown here, to know our current CUDA version we look at the first line of text in the right, which for this case says the version installed here (as of July 2024) is 12.2. Keep this in mind for later.

8. We need to ensure that we already have the CUDA nvcc compiler enabled for our notebooks run in the GPU. Run in a new code cell:
```
!nvcc --version
```
and we should be able to see the version of the Nvida nvcc compiler already installed. If we cannot see this, or if we want to update the nvcc compiler to a different version of CUDA we are willing to install, then we must follow the next steps to install manually CUDA and its compiler in our Google Colab kernel:

9. Run each one of the following lines of code in a separate cell, one by one, waiting each to be executed succesfully cell by cell: 
```
!apt-get --purge remove cuda nvidia* libnvidia-*
!dpkg -l | grep cuda- | awk '{print $2}' | xargs -n1 dpkg --purge
!apt-get remove cuda-*
!apt autoremove
!apt-get update
```
This should remove all the current dependencies and the current CUDA version.

10. The following lines of commands were extracted from the NVIDIA official website. The latest version can be found here, and the former different list of versions can be found here. The next block is for the 12.2.0 version, but others can be configured or installed as well. It is recommended to run each line of code cell by cell, in different cells from above to the below end of the notebook, just like we did in the step #9.

```
!wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
!mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
!wget https://developer.download.nvidia.com/compute/cuda/12.2.0/local_installers/cuda-repo-ubuntu2204-12-2-local_12.2.0-535.54.03-1_amd64.deb
!dpkg -i cuda-repo-ubuntu2204-12-2-local_12.2.0-535.54.03-1_amd64.deb
!cp /var/cuda-repo-ubuntu2204-12-2-local/cuda-*-keyring.gpg /usr/share/keyrings/
!apt-get update
```

11. In order to run the toolkit or assistant that installs CUDA with its full compiler, run:
```
!apt-get -y install cuda-12-2
```
changing the ending of this command to "cuda-x-y" according to the number "x" of your version and "y" its subversion. For 15.4, the latest version available in July 2024, you should run for example, the instructions for installing the version 15.4 in the step number #10 and then run in a new cell the command "!apt-get -y install cuda-15-4".

12. We should wait in steps #9 - #11 for each line of commands to be run in its cell. After this, we should be able to see the following after running the command:
```
!nvcc --version

nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2023 NVIDIA Corporation
Built on Tue_Jun_13_19:16:58_PDT_2023
Cuda compilation tools, release 12.2, V12.2.91
Build cuda_12.2.r12.2/compiler.32965470_0
```
13. Finally, for running our first code block with CUDA, introduce the following in a new cell:

```
%%writefile hello.cu
#include <stdio.h>
__global__ void mykernel(void){
}

int main(void){
    mykernel <<<1,1>>>();
    printf("Hello, world!\n");
    return 0;
}
```
run it, and then run in the next cell the compiling + running option:

```
!nvcc hello.cu -run
```

which successfully shows the text output:

```
Hello, world!
```
