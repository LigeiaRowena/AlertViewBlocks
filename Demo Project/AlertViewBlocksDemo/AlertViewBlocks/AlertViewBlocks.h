
#import <Foundation/Foundation.h>

// utility type for the blocks
typedef void(^AlertViewBlocksConfirm)();
typedef void(^AlertViewBlocksCancel)();

// handler of alertviews with blocks (it's a singleton)
@interface AlertViewBlocks : NSObject <UIAlertViewDelegate>

// init
+ (AlertViewBlocks*)getIstance;

// creates and shows a confirm alert with OK and NO buttons
- (void)confirmAlertViewWithTitle:(NSString*)title message:(NSString*)message confirmBlock:(AlertViewBlocksConfirm)confirm cancelBlock:(AlertViewBlocksCancel)cancel;

// creates and shows an error alert with OK button
- (void)errorAlertViewWithTitle:(NSString*)title error:(NSError*)error confirmBlock:(AlertViewBlocksConfirm)confirm;


@end
