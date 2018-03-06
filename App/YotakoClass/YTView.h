//
//  YTView.h
//  App
//
//  Created by Keuha on 27/02/2018.
//  Copyright © 2018 Yotako. All rights reserved.
//



#ifndef YTView_h
#define YTView_h
#import <UIKit/UIKit.h>

@interface YTView : UIView  {
    CGFloat originalHeight;
    CGFloat originalWidth;
}
@property (nonatomic, assign) IBInspectable CGFloat addBorderTop;
@property (nonatomic, assign) IBInspectable CGFloat addBorderBottom;
@property (nonatomic, assign) IBInspectable CGFloat addBorderLeft;
@property (nonatomic, assign) IBInspectable CGFloat addBorderRight;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *endColor;
@property (nonatomic) IBInspectable UIColor *borderColor;

@end
#endif /* YTView_h */
