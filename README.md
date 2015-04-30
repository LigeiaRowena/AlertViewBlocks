This is a simple handler for UIAlertView with blocks: you don't need using the UIAlertViewDelegate protocol.
Main features:

- Minimum OS: iOS 6.0
- Devices: iPad/iPhone
- ARC
- Language used: Objective-C 

There is a demo projects that explains how to use AlertViewBlocks.

#INSTALLATION

First you have to import in implementation file of your view controller:

`#import "AlertViewBlocks.h"`


#USING

You can create a confirm alert with OK and NO buttons:

```
[[AlertViewBlocks getIstance] confirmAlertViewWithTitle:@"Title" message:@"Message" confirmBlock:^{
	// confirm block
} cancelBlock:^{
	// cancel block
}];
```

You can create an error alert with OK button:

```
[[AlertViewBlocks getIstance] errorAlertViewWithTitle:@"Title" error:[NSError errorWithDomain:@"Domain" code:0 userInfo:@{}] confirmBlock:^{
	// confirm block
}];
```
