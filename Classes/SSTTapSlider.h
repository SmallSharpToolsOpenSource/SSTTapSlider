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

@property (weak, nonatomic) id<SSTTapSliderDelegate>tapSliderDelegate;

@end

@protocol SSTTapSliderDelegate <NSObject>

- (void)tapSlider:(SSTTapSlider *)tapSlider valueDidChange:(float)value;

@end
