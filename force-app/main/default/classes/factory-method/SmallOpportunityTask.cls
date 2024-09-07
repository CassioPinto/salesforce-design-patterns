public without sharing class SmallOpportunityTask implements ITask {

    Task task = new Task();

    public void buildTask(Id relatedToId) {

        System.debug('Building small opportunity task...');

        this.task.WhatId = relatedToId;
        this.task.Priority = 'Low';
        this.task.Subject = 'Call';
    }
}