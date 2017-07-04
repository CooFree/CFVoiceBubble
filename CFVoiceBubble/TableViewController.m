//
//  TableViewController.m
//  CFVoiceBubble
//
//  Created by YF on 2017/6/30.
//  Copyright © 2017年 CooFree. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()

@property (assign, nonatomic) NSInteger currentRow;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = nil;
    BOOL invert = indexPath.row % 2 > 0;
    if (!invert) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell_invert"];
    }
    cell.img.image = [UIImage imageNamed:invert ? @"1.jpg" : @"2.jpg"];
    cell.bubble.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    cell.bubble.isLoad=YES;
    cell.bubble.tag = indexPath.row;
    if (indexPath.row == _currentRow) {
        [cell.bubble startAnimating];
    } else {
        [cell.bubble stopAnimating];
    }
    return cell;
}

- (void)voiceBubbleDidStartPlaying:(CFVoiceBubble *)voiceBubble
{
    _currentRow = voiceBubble.tag;
}

@end
