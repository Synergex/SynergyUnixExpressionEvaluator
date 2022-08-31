# SynergyUnixExpressionEvaluator
A repository containing assemblies which are required to enable expression evaluation for Synergy .NET debugging on Unix environments.

How to use:

1. Ensure an initial remote debugging has been done from Visual Studio to the Unix environment, which should create folder: $HOME/.vs-debugger/vs2022
2. Checkout or copy this repository to the Unix environment
3. Run CopyDebuggerFiles.sh
4. Expression evaluation should be enabled when remote debugging Synergy .NET programs running in the UNIX environment
