//
//  Copyright © 2019 Bandyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Bandyer/Bandyer.h>

@class AddressBook;

NS_ASSUME_NONNULL_BEGIN

@interface UserInfoFetcher : NSObject <BDKUserInfoFetcher>

@property (nonatomic, strong, readonly) AddressBook *addressBook;

- (instancetype)initWithAddressBook:(AddressBook *)addressBook;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
