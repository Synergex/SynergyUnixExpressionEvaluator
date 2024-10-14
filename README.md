# SynergyUnixExpressionEvaluator
A repository containing assemblies which are required to enable expression evaluation for Synergy .NET debugging on Unix environments.

How to use:
1. Ensure that dotnet is installed in the Linux environment. The following link contains information about how to install .NET depending on your Linux distribution: https://learn.microsoft.com/en-us/dotnet/core/install/linux
    - For unspported distributions, you will need to follow the manual install instructions: https://learn.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#manual-install
2. Ensure an initial remote debugging has been done from Visual Studio to the Unix environment, which should create folder: $HOME/.vs-debugger/vs2022
3. Checkout or copy this repository to the Unix environment
4. Run CopyDebuggerFiles.sh
5. Expression evaluation should be enabled when remote debugging Synergy .NET programs running in the UNIX environment
