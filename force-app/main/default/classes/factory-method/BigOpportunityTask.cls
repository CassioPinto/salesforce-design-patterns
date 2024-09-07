public without sharing class BigOpportunityTask implements ITask {

    Task task = new Task();

    public void buildTask(Id relatedToId) {

        System.debug('Building big opportunity task...');

        this.task.WhatId = relatedToId;
        this.task.Priority = 'High';
        this.task.Subject = 'Call';
    }
}