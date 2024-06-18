//
//  PDDISVSDK.h
//  PDDISVSDK
//
//  Created by fuxuan on 2020/8/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, PDDISVEventId) {
    PDDISVEventIdLogin = 0,
    PDDISVEventIdLogout = 1,
    PDDISVEventIdDecrypt = 2,
};

typedef void (^PDDISVCallback)(NSError *_Nullable error);

@interface PDDISVSDK : NSObject

/// 初始化
/// @param callback 初始化回调
+ (void)setupWithCallback:(PDDISVCallback)callback;

/// 获取服务端分配的 Pati 参数
/// @param callback 回调 Block
+ (void)getPatiWithCallback:(void (^)(NSError *_Nullable error, NSString *_Nullable pati))callback;

/// 设置场景接口
/// @param eventId 场景 eventId，可以用上述枚举值，也可以使用和拼多多约定的值
/// @param pageCode 场景页面 Code
+ (void)setSceneWithEventId:(PDDISVEventId)eventId andPageCode:(NSString *)pageCode;

@end

NS_ASSUME_NONNULL_END
