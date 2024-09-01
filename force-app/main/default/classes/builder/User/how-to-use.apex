User adminUser = new UserBuilderDirector(new UserBuilder.AdminUser()).build();

System.debug('adminUser: ' + adminUser);

User standardUser = new UserBuilderDirector(new UserBuilder.StandardUser()).build();

System.debug('standardUser: ' + standardUser);