
### Containers
Containers are packages of software that bundles up code, and all its dependencies so it can be run reliably in any environment.

**PASTA**
PASTA is short for Process for Attack Simulation and Threat Analysis; it is a risk-centric threat modelling framework.

![[Pasted image 20251214235932.png]]

**Containers vs VM**
A virtual machine runs on a hypervisor (software that emulates and manages multiple operating systems on one physical host). It includes a full guest OS, making it heavier but fully isolated. Containers share the host OS kernel, isolating only applications and their dependencies, which makes them lightweight and fast to start. Virtual machines are ideal for running multiple different operating systems or legacy applications, while containers excel at deploying scalable, portable micro-services.


#### Docker (container engine)
- Docker is a popular container engine that uses Dockerfiles, simple text scripts defining app environments and dependencies, to build, package, and run applications consistently across different systems.
- Docker is an open-source platform for developers to build, deploy, and manage containers. Containers are executable units of software which package and manage the software and components to run a service. They are pretty lightweight because they isolate the application and use the host OS kernel.

#### Escape Attacks
A container escape is a technique that enables code running inside a container to obtain rights or execute on the host kernel (or other containers) beyond its isolated environment (escaping). For example, creating a privileged container with access to the public internet from a test container with no internet access.