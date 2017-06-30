//
//  TableViewCell.h
//  CFVoiceBubble
//
//  Created by YF on 2017/6/30.
//  Copyright © 2017年 CooFree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFVoiceBubble.h"

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet CFVoiceBubble *bubble;

@end
