//
// Copyright © 2018-Present. Kaleyra S.p.a. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject

@property (nonatomic, strong, readonly) Contact *me;
@property (nonatomic, strong, readonly) NSArray<Contact *> *contacts;

- (nullable Contact *)contactForAlias:(NSString *)alias;
- (void)updateFromArray:(nullable NSArray<NSString *> *)users currentUser:(NSString *)currentUser;

+ (instancetype)sharedInstance;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
