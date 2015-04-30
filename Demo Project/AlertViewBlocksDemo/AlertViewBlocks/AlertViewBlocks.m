
#import "AlertViewBlocks.h"

@interface AlertViewBlocks ()
{
	AlertViewBlocksConfirm confirmBlock;
    AlertViewBlocksCancel cancelBlock;
}
@end

@implementation AlertViewBlocks

#pragma mark - Init

+ (AlertViewBlocks*)getIstance
{
	static dispatch_once_t onceToken = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&onceToken, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

#pragma mark - UIAlertView Creation

- (void)confirmAlertViewWithTitle:(NSString*)title message:(NSString*)message confirmBlock:(AlertViewBlocksConfirm)confirm cancelBlock:(AlertViewBlocksCancel)cancel
{
	confirmBlock = [confirm copy];
	cancelBlock = [cancel copy];
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"OK", nil];
	[alertView show];
}

- (void)errorAlertViewWithTitle:(NSString*)title error:(NSError*)error confirmBlock:(AlertViewBlocksConfirm)confirm
{
	confirmBlock = [confirm copy];
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:[error description] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
}

#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	switch (buttonIndex) {
		case 0: // cancel
			if (cancelBlock != nil)
				cancelBlock();
			break;
		case 1: // ok
			if (confirmBlock != nil)
				confirmBlock();
		default:
			break;
	}
}


@end
