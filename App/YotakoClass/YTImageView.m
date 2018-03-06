//
//  YTImageView.m
//  App
//
//  Created by Keuha on 27/02/2018.
//  Copyright © 2018 Yotako. All rights reserved.
//

#import "YTImageView.h"

@implementation YTImageView
    
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initValue];
        originalHeight = self.frame.size.height;
        originalWidth = self.frame.size.width;
    }
    return self;
}
    
-(void)initValue {
    originalHeight = 0.0;
    originalWidth = 0.0;
    _addBorderTop = 0.0;
    _addBorderBottom = 0.0;
    _addBorderLeft = 0.0;
    _addBorderRight = 0.0;
    _cornerRadius = 0.0;
    _startColor = UIColor.clearColor;
    _endColor = UIColor.clearColor;
}
  
-(void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}
    
- (void)willMoveToWindow:(UIWindow *)newWindow {
    [self updateGradient];
    [self updateBorder];
    [self updateCorner];
}
    
- (void) setStringUrl:(NSString *)newValue {
    _stringUrl = newValue;
    NSURL *url = [NSURL URLWithString:newValue];
    if (url != nil) {
        dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
            NSData *data = [NSData dataWithContentsOfURL:url];
            if (data != nil) {
                dispatch_async(dispatch_get_main_queue(), ^(void){
                    self.image = [UIImage imageWithData:data];
                });
            }
        });
    }
}
    
-(void)updateBorder {
    if (self.addBorderTop > 0)  {
        [self addBorderUtility:0.0 y:0.0 width:self.bounds.size.width height:_addBorderTop];
    }
    if (self.addBorderBottom > 0) {
        [self addBorderUtility:0.0 y:self.bounds.size.height  width:self.bounds.size.width height:_addBorderBottom];
    }
    if (self.addBorderRight > 0) {
        [self addBorderUtility:0.0 y: 0.0 width:_addBorderRight height: self.bounds.size.height];
    }
    if (self.addBorderLeft > 0) {
        [self addBorderUtility:self.bounds.size.width - _addBorderLeft y:0 width: _addBorderLeft height: self.bounds.size.height];
    }
}
    
-(void) addBorderUtility:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
    CALayer *border = [[CALayer alloc] init];
    border.backgroundColor = self.layer.borderColor;
    border.frame =  CGRectMake(x, y, width, height);
    [self.layer addSublayer:border];
}
    
-(void)updateCorner {
    if (_cornerRadius > 0) {
        CGFloat smallerRatio = (self.frame.size.height / self->originalHeight ) > (self.frame.size.width / self->originalWidth ) ? (self.frame.size.width / self->originalWidth ) : (self.frame.size.height / self->originalHeight);
        self.layer.cornerRadius =  _cornerRadius * smallerRatio;
        self.layer.masksToBounds = (_cornerRadius * smallerRatio) > 0;
    }
}
    
-(void)updateGradient {
    
    CAGradientLayer *gradient  = [[CAGradientLayer alloc] init];
    gradient.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    gradient.colors = @[(id)[self.startColor CGColor], (id)[self.endColor CGColor]];
    gradient.zPosition = -1;
    [self.layer addSublayer:gradient];
}
    
    @end
