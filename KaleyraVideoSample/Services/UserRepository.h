//
// Copyright © 2018-Present. Kaleyra S.p.a. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserRepository : NSObject

@property (nonatomic, strong, null_resettable) dispatch_queue_t notificationQueue;

- (void)fetchAllUsers:(void(^)(NSArray<NSString*> * _Nullable userIds, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
