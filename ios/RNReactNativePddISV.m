#import <PDDISVSDK/PDDISVSDK.h>
#import "RNReactNativePddISV.h"

@implementation RNReactNativePddISV {
    bool hasListeners;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup {
    return YES;
}

RCT_EXPORT_MODULE()

// Will be called when this module's first listener is added.
- (void)startObserving {
    hasListeners = YES;
    // Set up any upstream listeners or background tasks as necessary
}

// Will be called when this module's last listener is removed, or on dealloc.
- (void)stopObserving {
    hasListeners = NO;
    // Remove upstream listeners, stop unnecessary background tasks
}

RCT_EXPORT_METHOD(init:(NSDictionary *)param resolve:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    [PDDISVSDK setupWithCallback:^(NSError *_Nullable error) {
        if (!error) {
            NSDictionary *ret = @{ @"code": @1, @"message": @"success" };
            resolve(ret);
        } else {
            NSDictionary *ret = @{ @"code": @0, @"message": error.description };
            resolve(ret);
        }
    }];
}

RCT_EXPORT_METHOD(getPati:(NSDictionary *)param resolve:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    [PDDISVSDK getPatiWithCallback:^(NSError *_Nullable error, NSString *_Nullable pati) {
        if (!error && pati) {
            NSDictionary *ret = @{ @"code": @1, @"message": pati };
            resolve(ret);
        } else {
            NSDictionary *ret = @{ @"code": @0, @"message": error.description };
            resolve(ret);
        }
    }];
}

@end
