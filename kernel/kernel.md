### Kernel

- Kernel is a main component of an operating system and is the core interface between a computer's operating hardware and it's processes.
- It communicates between the two, and manages resources as efficiently as possible.

<div>
    <img width="380" height="300" src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FKernel_(operating_system)&psig=AOvVaw2A5gqL4Ok9pBBxeB3rnkbn&ust=1616500532923000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCND73rrzw-8CFQAAAAAdAAAAABAJ" />
</div>

- The kernel is named so, because like a seed inside a hard shell, it exists within the Operating system and controls all the major functions of the hardware, whether it's a phone, laptop, server or any kind of a computer.


### Kernel Jobs:

- Kernel does 4 jobs:
    * Memory Management - Keeping track of how much memory is used to store what, and where.
    * Process Management - Determine which processes can use the Central Processing Unit (CPU), when and for how long.
    * Device Drivers - Act as mediator/interpreter between hardware and processes.
    * System Calls and Drivers - Receive Service Requests from the processes.

- The Kernel if implemented properly, is invisible to the user, working in it's own little world known as `kernel space`, where it allocates memory, keeps track of where everything is stored.

- Whatever the user sees like - web browser and files - are known as user space.

- These applications interact with the kernel through a System Call Interface (SCI)


### Where the Kernel fits within the OS ?
- Linux Structure has 3 layers -

    * The hardware:- The Physical Machine - the bottom or base of the system, made up of memory (RAM), the processor or Central Processing Unit (CPU), as well as I/O devices such as storage, networking and graphics. The CPU performs computations and reads from and writes to the Memory.

    * The Linux Kernel:- The Core of the OS. It's a software residing in memory that tells the CPU what to do.

    * User Processes:- These are the running programs that the Kernel Manages. User Processes are what collectively make up user space. User processes are also known as just `processes`. The Kernel also allows these processes and servers to communicate with each other ( known as inter-process communication or IPS).

- The Code Executed by the system runs on the CPU in 1 of the 2 modes: kernel or user modes.
    - The Code running in the kernel mode has unrestricted access to the hardware., 
    - While the User Mode restricts access to the CPU and Memory to the SCI 

- A similar separation exists for Memory (Kernel Space and User Space). 

- These two small details form the base for some complicated operations like privilege separation for `security`, `building containers` and `virtual machines`.

- This also means that if a process fails in user mode, the damage is limited and can be recovered by the kernel. However, because of it's accees to the memory and the processor, a kernel process crash can crash the entire system. Since, there are safeguards in place and permissions required to cross boundaries, user process crashes usually can't cause too many problems.