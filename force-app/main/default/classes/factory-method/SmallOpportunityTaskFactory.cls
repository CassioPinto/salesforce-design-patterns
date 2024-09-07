public without sharing class SmallOpportunityTaskFactory implements ITaskFactory {
    public ITask createTask() {
        return new SmallOpportunityTask();
    }
}