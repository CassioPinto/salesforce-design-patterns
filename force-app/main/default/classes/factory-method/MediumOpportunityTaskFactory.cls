public without sharing class MediumOpportunityTaskFactory implements ITaskFactory {
    public ITask createTask() {
        return new MediumOpportunityTask();
    }
}