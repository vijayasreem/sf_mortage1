@isTest
public class LoanAppUITest {
    @isTest
    static void testApplyForLoan() {
        // Test data
        String channel = 'test';
        Map<String, String> customerInfo = new Map<String, String>{
            'name' => 'John Doe',
            'email' => 'jdoe@example.com',
            'vehicle' => 'Honda Accord'
        };

        // Create instance of LoanAppUI
        LoanAppUI loanAppUI = new LoanAppUI();
        // Invoke applyForLoan method
        loanAppUI.applyForLoan(channel, customerInfo);

        // Verify that validateCustomerInfo method was executed
        System.assertEquals(true, loanAppUI.validateCustomerInfoCalled);
        // Verify that performCreditCheck method was executed
        System.assertEquals(true, loanAppUI.performCreditCheckCalled);
        // Verify that assessValueOfUsedVehicle method was executed
        System.assertEquals(true, loanAppUI.assessValueOfUsedVehicleCalled);
        // Verify that generateLoanOffer method was executed
        System.assertEquals(true, loanAppUI.generateLoanOfferCalled);
        // Verify that acceptLoanOffer method was executed
        System.assertEquals(true, loanAppUI.acceptLoanOfferCalled);
        // Verify that disburseLoan method was executed
        System.assertEquals(true, loanAppUI.disburseLoanCalled);
    }
}