
#import <Foundation/Foundation.h>


typedef void(^AlertViewBlocksConfirm)();
typedef void(^AlertViewBlocksCancel)();

@interface AlertViewBlocks : NSObject <UIAlertViewDelegate>

///dsvvdfdgdfgsdfsdfjkn
// Utility Methods
+ (AlertViewBlocks*)getIstance;
- (void)confirmAlertViewWithTitle:(NSString*)title message:(NSString*)message confirmBlock:(AlertViewBlocksConfirm)confirm cancelBlock:(AlertViewBlocksCancel)cancel;
- (void)errorAlertViewWithTitle:(NSString*)title error:(NSError*)error;


@end
