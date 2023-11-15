Here are some unit tests for the given class:

```apex
@isTest
public class PolicyDetailsControllerTest {
    
    @isTest
    static void testRetrievePolicyDetails() {
        // Test data setup
        String policyNumber = 'POL-123';
        
        // Call the method to retrieve policy details
        PolicyDetailsController.PolicyDetails policyDetails = PolicyDetailsController.retrievePolicyDetails(policyNumber);
        
        // Verify the retrieved policy details
        System.assertEquals(policyNumber, policyDetails.policyNumber);
        System.assertEquals('12345', policyDetails.customerCode);
        System.assertEquals('John Doe', policyDetails.customerName);
        System.assertEquals('Auto Insurance', policyDetails.product);
        System.assertEquals('Standard', policyDetails.variant);
    }
}
