//
//  DemoViewController.m
//  SSTTapSlider
//
//  Created by Brennan Stehling on 9/1/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

#import "DemoViewController.h"

#import "SSTTapSlider.h"

// Disables log messages when debugging is turned off
#ifndef NDEBUG

#define DebugLog(message, ...) NSLog(@"%s: " message, __PRETTY_FUNCTION__, ##__VA_ARGS__)

#else

#define DebugLog(message, ...)

#endif

#pragma mark - Class Extension
#pragma mark -

@interface DemoViewController () <SSTTapSliderDelegate>

@end

@implementation DemoViewController

#pragma mark - SSTTapSliderDelegate
#pragma mark -

- (void)tapSlider:(SSTTapSlider *)tapSlider valueDidChange:(float)value {
    DebugLog(@"%@ (%f)", NSStringFromSelector(_cmd), value);
}

- (void)tapSlider:(SSTTapSlider *)tapSlider tapEndedWithValue:(float)value {
    DebugLog(@"%@ (%f)", NSStringFromSelector(_cmd), value);
}

- (void)tapSlider:(SSTTapSlider *)tapSlider panBeganWithValue:(float)value {
    DebugLog(@"%@ (%f)", NSStringFromSelector(_cmd), value);
}

- (void)tapSlider:(SSTTapSlider *)tapSlider panEndedWithValue:(float)value {
    DebugLog(@"%@ (%f)", NSStringFromSelector(_cmd), value);
}

@end
