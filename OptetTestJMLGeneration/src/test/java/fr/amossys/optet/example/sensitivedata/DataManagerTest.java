package fr.amossys.optet.example.sensitivedata;

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
	 * Run the void sendOverNetwork(SensitiveData) method test
	 */
	public void testSendOverNetwork() {
		DataManager fixture = new DataManager();
		SensitiveData data = new SensitiveData();
		data.setConfidential(true);
		data.setEncrypted(false);
		fixture.sendOverNetwork(data);
		System.out.println("sent");
		assertTrue(true);
	}
}
