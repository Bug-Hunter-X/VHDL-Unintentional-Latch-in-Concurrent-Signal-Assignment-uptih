This repository contains an example of a common error in VHDL: an unintentional latch created by a missing assignment in a process.  The bug.vhdl file demonstrates the problem, while solution.vhdl offers a corrected version. This issue can lead to unpredictable behavior and is often difficult to debug.

The problem arises when a signal is not assigned a value under all possible conditions within a process. In this example, `data_out` in the original code is only assigned a value when `clk` rises. The simulator will often create a latch to hold the previous value when there's no explicit assignment.   This can result in unexpected outputs and make debugging difficult.

The solution ensures that the `data_out` signal always has a defined value, even when the clock does not rise. This prevents the unintended latch.