/*******************************************************************************
 * 2015, All rights reserved.
 *******************************************************************************/
package com.thalesgroup.optet.example.privatedata;

import com.thalesgroup.optet.example.privatedata.Data;
// Start of user code (user defined imports)

// End of user code

/**
 * Description of DataManager.
 * 
 * @author T0013577
 */
public class DataManager {
	/**
	 * Description of the property localData.
	 */
	private/*@ spec_public */Data localData = new Data();

	/**
	 * Description of the property isAuthorized.
	 */
	public boolean isAuthorized = false;

	// Start of user code (user defined attributes for DataManager)

	// End of user code

	/**
	 * The constructor.
	 */
	public DataManager() {
		// Start of user code constructor for DataManager)
		super();
		// End of user code
	}

	/*@
	  @ requires !localData.getIsPrivate() || ( localData.getIsPrivate() && getIsAuthorized());
	  
	  @*/
	/**
	 * Description of the method getData.
	 * @return 
	 */
	public Data getData() {
		// Start of user code for method getData
		return getLocalData();
		// End of user code
	}

	/**
	 * Description of the method setData.
	 * @param data 
	 */
	public void setData(Data data) {
		// Start of user code for method setData
		// End of user code
	}

	// Start of user code (user defined methods for DataManager)

	// End of user code
	//@ ensures \result == localData;
	/**
	 * Returns localData.
	 * @return localData 
	 */
	public/*@ pure */Data getLocalData() {
		return this.localData;
	}

	//@ ensures localData == newLocalData;
	/**
	 * Sets a value to attribute localData. 
	 * @param newLocalData 
	 */
	public void setLocalData(Data newLocalData) {
		this.localData = newLocalData;
	}

	//@ ensures \result == isAuthorized;
	/**
	 * Returns isAuthorized.
	 * @return isAuthorized 
	 */
	public/*@ pure */boolean getIsAuthorized() {
		return this.isAuthorized;
	}

	//@ ensures isAuthorized == newIsAuthorized;
	/**
	 * Sets a value to attribute isAuthorized. 
	 * @param newIsAuthorized 
	 */
	public void setIsAuthorized(boolean newIsAuthorized) {
		this.isAuthorized = newIsAuthorized;
	}

}
