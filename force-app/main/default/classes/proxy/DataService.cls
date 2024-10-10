public without sharing class DataService implements ThirdPartyService {

    public Map<String, String> getService() {
        System.debug('Make HTTP request and return data');
        return new Map<String, String>{
            'AmountInDolar' => '1000',
            'Quantity' => '500',
            'Discount' => '10'
        };
    }
}