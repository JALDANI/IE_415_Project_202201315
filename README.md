# 2 DOF Robotic Arm Control System

## Project Overview
This project simulates and controls a 2 DOF (Degrees of Freedom) robotic arm using Simulink, with a focus on achieving precise movement and path tracking. The control system incorporates **state feedback**, **PID control**, **controllability**, and **observability** theories to attain accurate and stable arm movements.

## Table of Contents
1. [Introduction](#introduction)
2. [Theory](#theory)
   - [State Feedback Control](#state-feedback-control)
   - [PID Controller](#pid-controller)
   - [Controllability](#controllability)
   - [Observability](#observability)
3. [2 DOF Arm Robot Model](#2-dof-arm-robot-model)
4. [Simulink Simulation Results](#simulink-simulation-results)
5. [Conclusion](#conclusion)

## Introduction 

The **2 DOF robotic arm** project uses Simulink to demonstrate the application of advanced control theories for precise, responsive movement in robotic systems. This project controls the arm’s two joints—shoulder and elbow—to follow a desired trajectory accurately in a 2D plane. Through **state feedback**, **PID control**, and utilizing **controllability** and **observability** principles, the control system adjusts joint positions in real-time for stable, low-error path tracking. The project demonstrates how control theory applies to robotics, with applications in automation, manufacturing, and medical robotics.

## Theory

### State Feedback Control

A **State Feedback Controller** uses the full state vector of the system to compute the control input, commonly applied in linear systems represented in state-space form.

#### Key Concepts
- **State Vector**: A collection of all variables defining the system’s state.
- **State-Space Representation**: A system described by a set of first-order differential equations, including state variables and control inputs.

#### Control Law
The control input \( u \) is calculated as:
\[
u = -Kx
\]
where:
- \( u \) is the control input,
- \( K \) is the feedback gain matrix,
- \( x \) is the state vector.

The gain matrix \( K \) is selected to place the closed-loop system poles at desired locations, shaping the system’s dynamic response.

#### Benefits
- **Pole Placement**: Control over system stability and response time.
- **Improved Performance**: Faster response and enhanced stability compared to open-loop systems.

### PID Controller

A **PID Controller** (Proportional-Integral-Derivative Controller) adjusts control input based on three terms: proportional, integral, and derivative of the error signal.

#### Key Components
- **Proportional (P)**: Adjusts the control input based on current error.
- **Integral (I)**: Accumulates past errors to reduce steady-state error.
- **Derivative (D)**: Predicts future error by considering the error's rate of change, aiding stability.

#### Control Law
The control input \( u(t) \) is given by:
\[
u(t) = K_p e(t) + K_i (integration) e(t)dt + K_d * de(t)/dt
\]
where:
- \( e(t) \) is the error (desired - actual output),
- \( K_p \), \( K_i \), and \( K_d \) are tuning parameters for proportional, integral, and derivative terms.

#### Benefits
- **Versatility**: Effective for various systems with minimal modeling.
- **Stability**: Balances stability and response time effectively.

### Controllability

**Controllability** determines whether the system can reach any desired state within a finite time using control inputs.

#### Mathematical Criterion
For a state-space system, the **Controllability Matrix** \({C}\) is:
\[
{C} = [B, AB, A^2B, A^{n-1}B]
\]
If \( {C} \) has full rank, the system is controllable.

#### Importance
Controllability ensures the control input can achieve any desired state, enabling effective state feedback or other control strategies.

### Observability

**Observability** indicates if the system’s internal state can be determined from output measurements over time.

#### Importance
Observability is essential for reconstructing the state from outputs, crucial for state estimation and observer design.

## 2 DOF Arm Robot Model

The **2 DOF Robotic Arm** has two joints (shoulder and elbow) allowing it to operate within a 2D plane. By adjusting joint angles, the end effector (the tip of the arm) can reach various positions.

### Degrees of Freedom (DOF)
- **Shoulder Joint**: Controls the first link’s rotation relative to the base.
- **Elbow Joint**: Controls the second link’s rotation relative to the first link.

Together, these joints position the end effector anywhere within its reach in the 2D workspace.

### Control Design Challenges
- **Accuracy**: Precise positioning of the end effector.
- **Stability**: Preventing oscillations or overshooting.
- **Coordination**: Smooth shoulder and elbow movements.
- **Disturbance Rejection**: Compensating for forces like gravity and external loads.

Control techniques like **PID** or **model-based control** address these challenges to achieve reliable, responsive operation.

## Simulink Simulation Results 

![Forward Kinematics Diagram](https://github.com/user-attachments/assets/49bcfd55-491e-47ab-9123-1f093449af42)
*Figure 1: Forward Kinematics Diagram for the 2 DOF Robotic Arm.*

![Inverse Kinematics Diagram](https://github.com/user-attachments/assets/065a4cb6-8f92-4c63-b646-e2e693c9643c)
*Figure 2: Inverse Kinematics Diagram for the 2 DOF Robotic Arm.*

![Expected 2D Robotic Arm](https://github.com/user-attachments/assets/cf3f65dc-6132-4142-ba95-662830244988)
*Figure 3: Expected 2D Robo Arm.*

![Simulink Simulation Model](https://github.com/user-attachments/assets/fcd1064d-df4b-418e-aede-3576819e269d)
*Figure 4: Simulink Simulation Model for the 2 DOF Robotic Arm.*

## Video
You can visit the video for this project. [YouTube](https://youtu.be/H-puqdl5wLc) 

## Conclusion

The **2 DOF Robotic Arm** project integrates theoretical and practical control design. Using **state feedback control** ensures precise movement by adjusting joint angles for desired positions with stability.

1. **Controllability**: The robotic arm is controllable, meaning the end effector can reach any point within the 2D workspace.
2. **Observability**: Observability analysis confirms the internal states can be estimated from sensor measurements, crucial for closed-loop control.
3. **Simulink and Simscape Modeling**: Simulink and Simscape allow accurate control design validation, simulating real-world dynamics like gravity and joint friction.

### Final Insights
Combining **state feedback**, **controllability**, and **observability** with simulation tools like Simulink and Simscape provides a comprehensive approach to robotic system control. These techniques ensure the arm can reliably respond to input commands, making it suitable for precise tasks in automation and assembly. This project highlights the importance of control theory and simulation in achieving robust and responsive robotic systems.

## How to build
For building this simalation you need to open Matlab version of 2019b and after that for simulinl open the "main_simulink.slx" file in your MatLab there you will the whole mechanical model from trajectory to estimated model and for simscape_model view you can open the file with the name of "2DOF_arm_Robot_simscape". You can access each block by opening it :)
