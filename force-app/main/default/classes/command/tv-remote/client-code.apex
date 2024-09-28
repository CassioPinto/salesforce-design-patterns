SmartTV tv = new SmartTV();

TurnOnCommand onCommand = new TurnOnCommand(tv);
TurnOffCommand offCommand = new TurnOffCommand(tv);

TVRemote remote = new TVRemote();

remote.addCommand('on', onCommand);
remote.addCommand('off', offCommand);

remote.pressButton('on');
remote.pressButton('off');

remote.getHistory();