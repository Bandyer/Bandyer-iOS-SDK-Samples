//
//  Copyright © 2020 Bandyer. All rights reserved.
//  See LICENSE.txt for licensing information
//

#import <Bandyer/Bandyer.h>

#import "PercentageFormatter.h"

@implementation PercentageFormatter
{
}

- (NSString *)stringForObjectValue:(id)obj
{
    NSString *symbol = @"%";
    if ([obj isKindOfClass:[NSArray<BDKUserInfoDisplayItem*> class]])
    {
        NSArray<BDKUserInfoDisplayItem*>* items = (NSArray<BDKUserInfoDisplayItem*> *)obj;
        return [self stringForItems:items eachItemPrecededBySymbol:symbol];
    }

    if ([obj isKindOfClass:[BDKUserInfoDisplayItem class]])
    {
        BDKUserInfoDisplayItem *item = (BDKUserInfoDisplayItem *)obj;
        return [self stringForItem:item precededBySymbol:symbol];
    }

    return nil;
}

@end
