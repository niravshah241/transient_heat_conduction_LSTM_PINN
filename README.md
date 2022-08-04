## LSTM PINN for transient heat conduction ##

### 0. Introduction

This repository contains google colab based FEniCS implementation of the transient heat conduction problem. This model will be further extended to include Physics Informed Neural Network (PINN) using Long Short-Term Memory (LSTM).

### 1. Prerequisites

We use **python** 3.6.9 as the programming language. In this project we use the libraries :
* **FEniCS** 2019.1.0 (www.fenicsproject.org)
* **Matplolib** 3.1.2 (www.matplotlib.org)
* **numpy** 1.17.4 (www.numpy.org)
<!--  (* **PyTorch** 1.5.1 (www.pytorch.org)) -->

The solutions are stored in **.xdmf** format, which can later be viewed with **Paraview** (www.paraview.org).

### 2. Installation

Simply clone the public repository:

```
git clone https://github.com/niravshah241/transient_heat_conduction_LSTM_PINN.git
```

### 3. Problem statement

The domain is divided into $7$ non-overlapping subdomains: $\bar{\omega} = \bigcup\limits_{i=1}^{7} \bar{\omega}_{i}$.

![alt text](https://github.com/niravshah241/transient_heat_conduction_LSTM_PINN/blob/main/domain.png)

The **heat conduction equation** in strong form at a given source term $Q$ is given by:
$$\rho c \frac{\partial T}{\partial t}  = \nabla \cdot (k \nabla T) + Q \ \text{in} \ \omega \times (0,T] \ .$$
Above equation is solved using **Finite Element Method** in space and **backward difference** in time to compute the temperature field $T(x,t)$ at given point $x$ and time $t$. The material properties (Density $\rho$, Heat capacity $c$ and Thermal conductivity $k$) vary across each subdomain characterising different material constituting the subdomain, i.e.:
$$\rho=\rho_{i} , c = c_{i} , k = k_{i} \ \text{for} \ x \in \omega_{i}.$$

The **boundary conditions** are given by:
$$\text{Specified heat flux (Neumann BC):} \ \overrightarrow{q} \cdot \overrightarrow{n} = 0 \ \text{on} \ \gamma_{+} \cup \gamma_{s} \times (0,T] \ .$$
$$\text{Heat exchanger (cold) boundary (Robin BC):} \ \overrightarrow{q} \cdot \overrightarrow{n} = h (T - T_{out}) \ \text{on} \ \gamma_{out} \times (0,T] \ \text{with} \ T_{out} = 300 K \ .$$
$$\text{Heat exchanger (hot) boundary (Robin BC):} \ \overrightarrow{q} \cdot \overrightarrow{n} = h (T - T_{sf}) \ \text{on} \ \gamma_{sf} \times (0,T] \ \text{with} \ T_{sf} = 300 + 600t K \ .$$
The **initial condition** corressponds to the body at enviromental temperature:
$$T = 300 K \ \text{in} \ \omega \times \lbrace 0 \rbrace \ .$$

![Alt Text](https://github.com/niravshah241/transient_heat_conduction_LSTM_PINN/blob/main/solution_field/thermal_evolution.gif)

<!--  (https://user-images.githubusercontent.com/18644277/181660692-8f7e033b-c7ce-4030-932c-3d8983b6c05d.mp4) -->

### 4. Authors and contributors

This code has been developed by [Nirav Vasant Shah] [email](mailto:niravshahcolab@gmail.com).

### 5. How to cite

	@misc{transient_heat_conduction_LSTM_PINN,
	key          = {TransientHeatCondductionLSTMPINN},
	author       = {Shah, N.V.},
	title        = {{Long Short Term Memory based Physics Informed Neural Network for transient heat conduction problem, Version 0.1}},
	month        = July,
	url          = {https://github.com/niravshah241/transient_heat_conduction_LSTM_PINN.git},
	year         = 2022
	}
### 6. License

* **FEniCS** is freely available under the GNU LGPL, version 3.
<!--  (* **PyTorch** has a BSD-style license (https://github.com/pytorch/pytorch/blob/master/LICENSE)) -->
* **Matplotlib** only uses BSD compatible code, and its license is based on the PSF license. Non-BSD compatible licenses (e.g., LGPL) are acceptable in matplotlib toolkits.

Accordingly, this code is freely available under the GNU LGPL, version 3 and BSD-license.

### 7. Disclaimer
In downloading this SOFTWARE you are deemed to have read and agreed to the following terms: This SOFT- WARE has been designed with an exclusive focus on civil applications. It is not to be used for any illegal, deceptive, misleading or unethical purpose or in any military applications. This includes ANY APPLICATION WHERE THE USE OF THE SOFTWARE MAY RESULT IN DEATH, PERSONAL INJURY OR SEVERE PHYSICAL OR ENVIRONMENTAL DAMAGE. Any redistribution of the software must retain this disclaimer. BY INSTALLING, COPYING, OR OTHERWISE USING THE SOFTWARE, YOU AGREE TO THE TERMS ABOVE. IF YOU DO NOT AGREE TO THESE TERMS, DO NOT INSTALL OR USE THE SOFTWARE.
