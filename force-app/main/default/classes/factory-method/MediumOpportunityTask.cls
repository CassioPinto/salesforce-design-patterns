public without sharing class MediumOpportunityTask implements ITask {

    Task task = new Task();

    public void buildTask(Id relatedToId) {

        System.debug('Building medium opportunity task...');

        this.task.WhatId = relatedToId;
        this.task.Priority = 'Normal';
        this.task.Subject = 'Call';
    }
}