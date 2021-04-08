﻿namespace Quantum._03_Demo_X_Reset {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    
    @EntryPoint()
    operation Demo_X_Reset () : Unit {
				
		using(qubits = Qubit[1])
			{
				//Applying X will reverse the value.
				X(qubits[0]);

				// Measure the value of Qubit
				let r = M(qubits[0]);

				if(r == Zero)
				{
					Message("Zero");
				}
				elif(r == One)
				{	
					//Output will be one.
					Message("One");
				}
				
				// At the end of using, we need to Reset all the qubits to Zero
				Reset(qubits[0]);
				
			}
    }
}
