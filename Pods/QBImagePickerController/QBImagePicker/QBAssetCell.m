//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()
{
    UILabel *testImageView2;
}

@property (weak, nonatomic) IBOutlet UIView *overlayView;

@end

@implementation QBAssetCell

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
    
    if (!testImageView2) {
        testImageView2 = [[UILabel alloc] initWithFrame:self.overlayView.frame];
        testImageView2.textColor = [UIColor whiteColor];
        [testImageView2 setFont:[UIFont systemFontOfSize:30]];
        [testImageView2 setTextAlignment:NSTextAlignmentCenter];
        [self.overlayView addSubview:testImageView2];
    }
    
    [testImageView2 setText:[NSString stringWithFormat:@"%d",_selectAssetNum + 1]];
    
}

@end
