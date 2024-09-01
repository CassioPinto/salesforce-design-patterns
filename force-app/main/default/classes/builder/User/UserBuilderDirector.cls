public without sharing class UserBuilderDirector {

    IUserBuilder userBuilder;

    public UserBuilderDirector(IUserBuilder userBuilder) {
        this.userBuilder = userBuilder;
    }

    public User build() {
        return this.userBuilder
            .setLastName()
            .setUserName()
            .setEmail()
            .setEmailEncodingKey()
            .setAlias()
            .setLanguageLocaleKey()
            .setLocaleSidKey()
            .setTimeZoneSidKey()
            .setProfileId()
            .getUser();
    }
}