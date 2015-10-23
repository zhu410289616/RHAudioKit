//
//  ViewController.m
//  RHAudio
//
//  Created by zhuruhong on 15/6/7.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "ViewController.h"
#import "RHAudioRecorder.h"
#import "RHAudioMp3Output.h"
#import "RHAudioAmrOutput.h"
#import "RHAudioCafOutput.h"

@interface ViewController ()

@property (nonatomic, strong) RHAudioRecorder *recorder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    RHAudioMp3Output *output = [[RHAudioMp3Output alloc] init];
//    RHAudioAmrOutput *output = [[RHAudioAmrOutput alloc] init];
    RHAudioCafOutput *output = [[RHAudioCafOutput alloc] init];
    
    _recorder = [[RHAudioRecorder alloc] init];
    _recorder.output = output;
    [_recorder start];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
