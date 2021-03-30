# IP Modules for GNN Hardware Accelerators

This repo implements the architecture that appears in the following papers:
- Bingyi Zhang, Hanqing Zeng and Viktor Prasanna, **Hardware Acceleration of Large Scale GCN Inference**, The 31st IEEE International Conference on
Application-specific Systems, Architectures and Processors. [[PDF](https://asap2020.cs.manchester.ac.uk/paper.php?id=38)]
- Zeng, Hanqing, and Viktor Prasanna. "**Graphact: Accelerating GCN training on CPU-FPGA heterogeneous platforms.**" The 2020 ACM/SIGDA International Symposium on Field-Programmable Gate Arrays. 2020 [[PDF](https://dl.acm.org/doi/abs/10.1145/3373087.3375312?casa_token=8kcTIaTaLeEAAAAA:d4AqDlFmWVDwh4w2cfF_zXljwnWNEDNjdI4xRHscrYpde5MJR4uwmganQPqEq1kfDOpFGQb5BCaB)]

We will keep adding instructions here for running the hardware modules. 

## Software Platform
- Quartus Prime Pro 20.2
- Modelsim

## Hardware Platform
- Intel Stratix 10 GX

### IP configuration
#### In feature aggregation module
- acc: selecting Native Floating Point DSP intel Stratrix 10 FPGA IP. The detailed configurations are:

<p align="center">
  <img src="./pic/acc.PNG" alt="drawing" width="800"/>
</p>

- sourcebuffer: selecting RAM: 4-port intel FPGA IP. The detailed configurations are:

<p align="center">
  <img src="./pic/sourcebuffer.PNG" alt="drawing" width="800"/>
</p>

- fifoindpr: selecting FIFO Intel FPGA Ip. The detailed configurations are:

<p align="center">
  <img src="./pic/FIFOindptr.PNG" alt="drawing" width="800"/>
</p>

#### In feature aggregation module
- MAC: selecting Native Floating Point DSP intel Stratrix 10 FPGA IP. The detailed configurations are: 


<p align="center">
  <img src="./pic/mac.PNG" alt="drawing" width="800"/>
</p>
