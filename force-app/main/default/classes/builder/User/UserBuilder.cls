public without sharing class UserBuilder {

    public class AdminUser implements IUserBuilder {

        User user = new User();

        public IUserBuilder setLastName() {
            user.LastName = 'Test';
            return this;
        }

        public IUserBuilder setUserName() {
            user.UserName = 'Test@test.com.br';
            return this;
        }

        public IUserBuilder setEmail() {
            user.Email = 'testAdminUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
            return this;
        }

        public IUserBuilder setEmailEncodingKey() {
            user.EmailEncodingKey = 'UTF-8';
            return this;
        }

        public IUserBuilder setAlias() {
            user.Alias = 'Test';
            return this;
        }

        public IUserBuilder setLanguageLocaleKey() {
            user.LanguageLocaleKey = 'en_US';
            return this;
        }

        public IUserBuilder setLocaleSidKey() {
            user.LocaleSidKey = 'en_US';
            return this;
        }

        public IUserBuilder setTimeZoneSidKey() {
            user.TimeZoneSidKey = 'America/Los_Angeles';
            return this;
        }

        public IUserBuilder setProfileId() {
            user.ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;
            return this;
        }

        public User getUser() {
            return this.user;
        }
    }

    public class StandardUser implements IUserBuilder {

        User user = new User();

        public IUserBuilder setLastName() {
            user.LastName = 'Test';
            return this;
        }

        public IUserBuilder setUserName() {
            user.UserName = 'Test@test.com.br';
            return this;
        }

        public IUserBuilder setEmail() {
            user.Email = 'testStandardUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
            return this;
        }

        public IUserBuilder setEmailEncodingKey() {
            user.EmailEncodingKey = 'UTF-8';
            return this;
        }

        public IUserBuilder setAlias() {
            user.Alias = 'Test';
            return this;
        }

        public IUserBuilder setLanguageLocaleKey() {
            user.LanguageLocaleKey = 'en_US';
            return this;
        }

        public IUserBuilder setLocaleSidKey() {
            user.LocaleSidKey = 'en_US';
            return this;
        }

        public IUserBuilder setTimeZoneSidKey() {
            user.TimeZoneSidKey = 'America/Los_Angeles';
            return this;
        }

        public IUserBuilder setProfileId() {
            user.ProfileId = [SELECT Id FROM Profile WHERE Name = 'Standard User'].Id;
            return this;
        }

        public User getUser() {
            return this.user;
        }
    }
}