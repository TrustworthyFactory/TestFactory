/*******************************************************************************
 * 2015, All rights reserved.
 *******************************************************************************/
package fr.amossys.optet.example.sensitivedata;

// Start of user code (user defined imports)

// End of user code

/**
 * Description of SensitiveData.
 * 
 * @author T0013577
 */
public class SensitiveData {
	/**
	 * Mycomment
	 */
	public boolean encrypted = false;

	/**
	 * Description of the property confidential.
	 */
	public boolean confidential = false;

	// Start of user code (user defined attributes for SensitiveData)

	// End of user code

	/**
	 * The constructor.
	 */
	public SensitiveData() {
		// Start of user code constructor for SensitiveData)
		super();
		// End of user code
	}

	/*@
	  @ ensures getEncrypted();;  
	  @*/
	/**
	 * Description of the method encrypt.
	 */
	public void encrypt() {
		// Start of user code for method encrypt
		// End of user code
	}

	/*@
	  @ ensures !getEncrypted();;  
	  @*/
	/**
	 * Description of the method decrypt.
	 */
	public void decrypt() {
		// Start of user code for method decrypt
		// End of user code
	}

	// Start of user code (user defined methods for SensitiveData)

	// End of user code
	//@ ensures \result == encrypted;
	/**
	 * Returns encrypted.
	 * @return encrypted Mycomment
	 */
	public/*@ pure */boolean getEncrypted() {
		return this.encrypted;
	}

	//@ ensures encrypted == newEncrypted;
	/**
	 * Sets a value to attribute encrypted. 
	 * @param newEncrypted Mycomment
	 */
	public void setEncrypted(boolean newEncrypted) {
		this.encrypted = newEncrypted;
	}

	//@ ensures \result == confidential;
	/**
	 * Returns confidential.
	 * @return confidential 
	 */
	public/*@ pure */boolean getConfidential() {
		return this.confidential;
	}

	//@ ensures confidential == newConfidential;
	/**
	 * Sets a value to attribute confidential. 
	 * @param newConfidential 
	 */
	public void setConfidential(boolean newConfidential) {
		this.confidential = newConfidential;
	}

}
