/*******************************************************************************
 * 2015, All rights reserved.
 *******************************************************************************/
package com.thalesgroup.optet.example.duration;

// Start of user code (user defined imports)

// End of user code

/**
 * Description of Execution.
 * 
 * @author T0013577
 */
public class Execution {
	/**
	 * Description of the property startTime.
	 */
	private/*@ spec_public */long startTime = 0L;

	/**
	 * Description of the property endTime.
	 */
	private/*@ spec_public */long endTime = 0L;

	/**
	 * Description of the property maxTime.
	 */
	private/*@ spec_public */long maxTime = 0L;

	// Start of user code (user defined attributes for Execution)

	// End of user code

	/**
	 * The constructor.
	 */
	public Execution() {
		// Start of user code constructor for Execution)
		super();
		// End of user code
	}

	/**
	 * Description of the method Execute.
	 */
	public void Execute() {
		long start = System.nanoTime();
		setStartTime(start);
		try {
			System.out.println("before sleep");
			Thread.sleep(3000); //1000 milliseconds is one second.
			System.out.println("after sleep");
		} catch (InterruptedException ex) {
		}
		long end = System.nanoTime();
		setEndTime(end);
	}

	/*@
	  @ requires (endTime - startTime) < maxTime;
	  
	  @*/
	/**
	 * Description of the method checkTime.
	 */
	public void checkTime() {
		// Start of user code for method checkTime
		// End of user code
	}

	// Start of user code (user defined methods for Execution)

	// End of user code
	//@ ensures \result == startTime;
	/**
	 * Returns startTime.
	 * @return startTime 
	 */
	public/*@ pure */long getStartTime() {
		return this.startTime;
	}

	//@ ensures startTime == newStartTime;
	/**
	 * Sets a value to attribute startTime. 
	 * @param newStartTime 
	 */
	public void setStartTime(long newStartTime) {
		this.startTime = newStartTime;
	}

	//@ ensures \result == endTime;
	/**
	 * Returns endTime.
	 * @return endTime 
	 */
	public/*@ pure */long getEndTime() {
		return this.endTime;
	}

	//@ ensures endTime == newEndTime;
	/**
	 * Sets a value to attribute endTime. 
	 * @param newEndTime 
	 */
	public void setEndTime(long newEndTime) {
		this.endTime = newEndTime;
	}

	//@ ensures \result == maxTime;
	/**
	 * Returns maxTime.
	 * @return maxTime 
	 */
	public/*@ pure */long getMaxTime() {
		return this.maxTime;
	}

	//@ ensures maxTime == newMaxTime;
	/**
	 * Sets a value to attribute maxTime. 
	 * @param newMaxTime 
	 */
	public void setMaxTime(long newMaxTime) {
		this.maxTime = newMaxTime;
	}

}
