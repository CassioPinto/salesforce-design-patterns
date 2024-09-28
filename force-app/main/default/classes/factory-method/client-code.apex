ITaskFactory bigOppTaskFactory = new BigOpportunityTaskFactory();
ITask bigOppTask = bigOppTaskFactory.createTask();
bigOppTask.buildTask('0064x00000IOQVZAA5');
System.debug(bigOppTask);

ITaskFactory mediumOppTaskFactory = new MediumOpportunityTaskFactory();
ITask mediumOppTask = mediumOppTaskFactory.createTask();
mediumOppTask.buildTask('0064x00000IOQVZAA5');
System.debug(mediumOppTask);

ITaskFactory smallOppTaskFactory = new SmallOpportunityTaskFactory();
ITask smallOppTask = smallOppTaskFactory.createTask();
smallOppTask.buildTask('0064x00000IOQVZAA5');
System.debug(smallOppTask);