package com.thalesgroup.optet.example.duration;

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
public class DurationTest extends TestCase {

	/**
	 * Construct new test instance
	 *
	 * @param name the test name
	 */
	public DurationTest(String name) {
		super(name);
	}

	/**
	 * 
	 */
	public void testDuration() {
		//fail("Newly generated method - fix or disable");
		// add test code here
		Execution exec = new Execution();

		//exec.setMaxTime(4000144274L);
		exec.setMaxTime(4000144274L);
		exec.Execute();
		exec.checkTime();
		exec.setMaxTime(2000144274L);
		exec.Execute();
		exec.checkTime();
		exec.setMaxTime(4000144274L);
		exec.Execute();
		exec.checkTime();
		System.out.println("get");
		assertTrue(true);
	}
}
