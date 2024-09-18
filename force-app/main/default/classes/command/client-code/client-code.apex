SmartTV tv = new SmartTV();

TurnOnCommand onCommand = new TurnOnCommand(tv);
TurnOffCommand offCommand = new TurnOffCommand(tv);

TVRemote remote = new TVRemote();

remote.setCommand(onCommand);
remote.pressButton();

remote.setCommand(offCommand);
remote.pressButton();