public interface IUserBuilder {
    IUserBuilder setLastName();
    IUserBuilder setUserName();
    IUserBuilder setEmail();
    IUserBuilder setEmailEncodingKey();
    IUserBuilder setAlias();
    IUserBuilder setLanguageLocaleKey();
    IUserBuilder setLocaleSidKey();
    IUserBuilder setTimeZoneSidKey();
    IUserBuilder setProfileId();
    User getUser();
}