//
// Copyright © 2018-Present. Kaleyra S.p.a. All rights reserved.
//

#import "ContactTableViewCell.h"

@implementation ContactTableViewCell

//-------------------------------------------------------------------------------------------
#pragma mark - IBActions
//-------------------------------------------------------------------------------------------

- (IBAction)didTouchChatButton:(UIButton *)sender
{
    if (self.subtitleLabel.text) {
        [self.delegate contactTableViewCell:self didTouch:sender withCounterpart:self.subtitleLabel.text];
    }
}

-(void)prepareForReuse
{
    [super prepareForReuse];

    self.delegate = nil;
    self.titleLabel.text = nil;
    self.subtitleLabel.text = nil;
}


@end
