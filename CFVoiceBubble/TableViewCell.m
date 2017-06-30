//
//  TableViewCell.m
//  CFVoiceBubble
//
//  Created by YF on 2017/6/30.
//  Copyright © 2017年 CooFree. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    CAShapeLayer *circleMask = [CAShapeLayer layer];
    circleMask.path = [UIBezierPath bezierPathWithOvalInRect:_img.bounds].CGPath;
    _img.layer.mask = circleMask;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
