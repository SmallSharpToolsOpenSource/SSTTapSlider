//
//  SSTTapSlider.h
//  SSTTapSlider
//
//  Created by Brennan Stehling on 3/8/14.
//  Copyright (c) 2014 SmallSharpTools. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SSTTapSliderDelegate;

@interface SSTTapSlider : UISlider

@property (weak, nonatomic) IBOutlet id<SSTTapSliderDelegate>tapSliderDelegate;

@end

@protocol SSTTapSliderDelegate <NSObject>

@optional

- (void)tapSlider:(SSTTapSlider *)tapSlider valueDidChange:(float)value;
- (void)tapSlider:(SSTTapSlider *)tapSlider tapEndedWithValue:(float)value;
- (void)tapSlider:(SSTTapSlider *)tapSlider panBeganWithValue:(float)value;
- (void)tapSlider:(SSTTapSlider *)tapSlider panEndedWithValue:(float)value;

@end
