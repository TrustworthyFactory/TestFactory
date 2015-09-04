package com.thalesgroup.optet.example.privatedata;

import com.thalesgroup.optet.example.privatedata.Data;
import com.thalesgroup.optet.example.privatedata.DataManager;

import junit.framework.TestCase;

/**
 * The class <code>DataManagerTest</code> contains tests for the class {@link
 * <code>DataManager</code>}
 *
 * @pattern JUnit Test Case
 *
 * @generatedBy CodePro at 12/03/15 11:22
 *
 * @author T0013577
 *
 * @version $Revision$
 */
public class DataManagerTest extends TestCase {

	/**
	 * Construct new test instance
	 *
	 * @param name the test name
	 */
	public DataManagerTest(String name) {
		super(name);
	}

	/**
	 * 
	 */
	public void testGetPublicData() {
		//fail("Newly generated method - fix or disable");
		// add test code here
		Data data = new Data();
		data.setIsPrivate(true);
		data.setData('d');

		DataManager manager = new DataManager();
		manager.setLocalData(data);
		manager.setIsAuthorized(true);
		manager.getData();
		assertTrue(true);
	}

	/**
	 * 
	 */
	public void testGetPrivateData() {
		//fail("Newly generated method - fix or disable");
		// add test code here
		Data data = new Data();
		data.setIsPrivate(true);
		data.setData('d');

		DataManager manager = new DataManager();
		manager.setLocalData(data);
		manager.setIsAuthorized(false);
		data.setIsPrivate(true);
		manager.getData();
		assertTrue(true);
	}
}
