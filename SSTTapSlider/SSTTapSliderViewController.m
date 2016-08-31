//
//  SSTTapSliderViewController.m
//  SSTTapSlider
//
//  Created by Brennan Stehling on 3/8/14.
//  Copyright (c) 2014 SmallSharpTools. All rights reserved.
//

#import "SSTTapSliderViewController.h"

#import "SSTTapSlider.h"

@interface SSTTapSliderViewController ()

@end

@implementation SSTTapSliderViewController

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
