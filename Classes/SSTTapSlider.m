//
//  SSTTapSlider.m
//  SSTTapSlider
//
//  Created by Brennan Stehling on 3/8/14.
//  Copyright (c) 2014 SmallSharpTools. All rights reserved.
//

#import "SSTTapSlider.h"

@implementation SSTTapSlider

#pragma mark - Initialization
#pragma mark -

- (id)initWithFrame:(CGRect)aRect {
    self = [super initWithFrame:aRect];
    if (self) {
        [self initializeTapSlider];
    }
    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initializeTapSlider];
    }
    return self;
}

#pragma mark - User Actions
#pragma mark -

- (void)sliderTapGestureRecognized:(UIGestureRecognizer *)recognizer {
    [self handleSliderGestureRecognizer:recognizer];

    switch (recognizer.state) {
        case UIGestureRecognizerStateEnded:
            if ([self.tapSliderDelegate respondsToSelector:@selector(tapSlider:tapEndedWithValue:)]) {
                [self.tapSliderDelegate tapSlider:self tapEndedWithValue:self.value];
            }
            break;
        default:
            break;
    }
}

- (void)sliderPanGestureRecognized:(UIGestureRecognizer *)recognizer {
    [self handleSliderGestureRecognizer:recognizer];

    switch (recognizer.state) {
        case UIGestureRecognizerStateBegan:
            if ([self.tapSliderDelegate respondsToSelector:@selector(tapSlider:panBeganWithValue:)]) {
                [self.tapSliderDelegate tapSlider:self panBeganWithValue:self.value];
            }
            break;
        case UIGestureRecognizerStateEnded:
            if ([self.tapSliderDelegate respondsToSelector:@selector(tapSlider:panEndedWithValue:)]) {
                [self.tapSliderDelegate tapSlider:self panEndedWithValue:self.value];
            }
            break;
        default:
            break;
    }
}

#pragma mark - Private
#pragma mark -

- (void)initializeTapSlider {
    [self modifySlider:self];
}

- (void)modifySlider:(UISlider *)slider {
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sliderTapGestureRecognized:)];
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(sliderPanGestureRecognized:)];
    slider.gestureRecognizers = @[tapGestureRecognizer, panGestureRecognizer];

    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)sliderValueChanged:(id)sender {
    if ([self.tapSliderDelegate respondsToSelector:@selector(tapSlider:valueDidChange:)]) {
        [self.tapSliderDelegate tapSlider:self valueDidChange:self.value];
    }
}

- (void)handleSliderGestureRecognizer:(UIGestureRecognizer *)recognizer {
    if ([recognizer.view isKindOfClass:[UISlider class]]) {
        UISlider *slider = (UISlider *)recognizer.view;
        CGPoint point = [recognizer locationInView:recognizer.view];
        CGFloat width = CGRectGetWidth(slider.frame);
        CGFloat percentage = point.x / width;

        // new value is based on the slider's min and max values which
        // could be different with each slider
        float newValue = ((slider.maximumValue - slider.minimumValue) * percentage) + slider.minimumValue;
        [slider setValue:newValue animated:TRUE];
    }

    if ([self.tapSliderDelegate respondsToSelector:@selector(tapSlider:valueDidChange:)]) {
        [self.tapSliderDelegate tapSlider:self valueDidChange:self.value];
    }
}

@end