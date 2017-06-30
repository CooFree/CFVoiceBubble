//
//  ViewController.m
//  CFVoiceBubble
//
//  Created by YF on 2017/6/29.
//  Copyright © 2017年 CooFree. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *urlStr = @"http://baobab.wdjcdn.com/14564977406580.mp4";


    //    _bubble1.contentURL = [NSURL fileURLWithPath:filePath];
    _bubble1.URLStr=urlStr;
    _bubble1.invert = YES;
    _bubble1.frame=CGRectMake(20, 70, 100, 40);
//    [self.view addSubview:_bubble1];

    _bubble2.contentURL = [[NSBundle mainBundle] URLForResource:@"Let" withExtension:@"mp3"];
    _bubble2.isLoad=YES;
    _bubble2.frame=CGRectMake(20, 70+50, 100, 40);
//    [self.view addSubview:_bubble2];

    _bubble3.contentURL = [[NSBundle mainBundle] URLForResource:@"Let" withExtension:@"mp3"];
    _bubble3.isLoad=YES;
    _bubble3.waveColor = [UIColor blackColor];
    _bubble3.animatingWaveColor = [UIColor blackColor];
    _bubble3.durationInsideBubble = YES;
    [_bubble3 setBubbleImage:[UIImage imageNamed:@"fs_cap_bg_0"]];
    _bubble3.frame=CGRectMake(20, 70+50*2, 100, 40);
//    [self.view addSubview:_bubble3];

    _bubble4.waveColor = [UIColor blackColor];
    _bubble4.contentURL = [[NSBundle mainBundle] URLForResource:@"Let" withExtension:@"mp3"];
    _bubble4.isLoad=YES;
    _bubble4.animatingWaveColor = [UIColor blackColor];
    _bubble4.durationInsideBubble = YES;
    [_bubble4 setBubbleImage:[UIImage imageNamed:@"fs_cap_bg_1"]];
    _bubble4.frame=CGRectMake(20, 70+50*3, 100, 40);
//    [self.view addSubview:_bubble4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
