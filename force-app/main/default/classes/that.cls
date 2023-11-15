s an example of a Salesforce Apex class that can be used to implement the given user story:

```apex
public class PolicyDetailsController {
    
    public class PolicyDetails {
        @AuraEnabled
        public String policyNumber { get; set; }
        @AuraEnabled
        public String customerCode { get; set; }
        @AuraEnabled
        public String customerName { get; set; }
        @AuraEnabled
        public String product { get; set; }
        @AuraEnabled
        public String variant { get; set; }
        
        public PolicyDetails(String policyNumber, String customerCode, String customerName, String product, String variant) {
            this.policyNumber = policyNumber;
            this.customerCode = customerCode;
            this.customerName = customerName;
            this.product = product;
            this.variant = variant;
        }
    }
    
    @AuraEnabled
    public static PolicyDetails retrievePolicyDetails(String policyNumber) {
        // Connect to the policy database and retrieve the policy details based on the policy number
        // Assume that the policy details are fetched from the database and stored in the following variables
        
        String customerCode = '12345';
        String customerName = 'John Doe';
        String product = 'Auto Insurance';
        String variant = 'Standard';
        
        // Create a new PolicyDetails object with the retrieved policy details
        PolicyDetails policyDetails = new PolicyDetails(policyNumber, customerCode, customerName, product, variant);
        
        return policyDetails;
    }
}
