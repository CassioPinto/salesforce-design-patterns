public without sharing class ThirdPartyServiceProxy implements ThirdPartyService {

    ThirdPartyService service;
    Map<String, String> data;

    public Map<String, String> getService() {
        if (service == null) {
            this.service = new DataService();
            this.data = this.service.getService();
        }

        return this.data;
    }
}