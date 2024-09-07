public without sharing class BigOpportunityTaskFactory implements ITaskFactory {
    public ITask createTask() {
        return new BigOpportunityTask();
    }
}