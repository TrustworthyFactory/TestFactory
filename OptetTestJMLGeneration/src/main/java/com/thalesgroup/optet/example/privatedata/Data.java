/*******************************************************************************
 * 2015, All rights reserved.
 *******************************************************************************/
package com.thalesgroup.optet.example.privatedata;

// Start of user code (user defined imports)

// End of user code

/**
 * Description of Data.
 * 
 * @author T0013577
 */
public class Data {
	/**
	 * Description of the property isPrivate.
	 */
	public boolean isPrivate = false;

	/**
	 * Description of the property data.
	 */
	public char data = 0;

	// Start of user code (user defined attributes for Data)

	// End of user code

	/**
	 * The constructor.
	 */
	public Data() {
		// Start of user code constructor for Data)
		super();
		// End of user code
	}

	/*@
	  @ ensures getIsPrivate();;  
	  @*/
	/**
	 * Description of the method dataIsPrivate.
	 */
	public void dataIsPrivate() {
		// Start of user code for method dataIsPrivate
		// End of user code
		this.setIsPrivate(true);
	}

	/*@
	  @ ensures !getIsPrivate();;  
	  @*/
	/**
	 * Description of the method dataIsNotPrivate.
	 */
	public void dataIsNotPrivate() {
		// Start of user code for method dataIsNotPrivate
		// End of user code
		this.setIsPrivate(false);
	}

	// Start of user code (user defined methods for Data)

	// End of user code
	//@ ensures \result == isPrivate;
	/**
	 * Returns isPrivate.
	 * @return isPrivate 
	 */
	public/*@ pure */boolean getIsPrivate() {
		return this.isPrivate;
	}

	//@ ensures isPrivate == newIsPrivate;
	/**
	 * Sets a value to attribute isPrivate. 
	 * @param newIsPrivate 
	 */
	public void setIsPrivate(boolean newIsPrivate) {
		this.isPrivate = newIsPrivate;
	}

	//@ ensures \result == data;
	/**
	 * Returns data.
	 * @return data 
	 */
	public/*@ pure */char getData() {
		return this.data;
	}

	//@ ensures data == newData;
	/**
	 * Sets a value to attribute data. 
	 * @param newData 
	 */
	public void setData(char newData) {
		this.data = newData;
	}

}
