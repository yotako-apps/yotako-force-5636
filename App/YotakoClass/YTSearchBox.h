//
//  YTSearchBox.h
//  App
//
//  Created by Keuha on 28/02/2018.
//  Copyright © 2018 Yotako. All rights reserved.
//

#ifndef YTSearchBox_h
#define YTSearchBox_h
#import <UIKit/UIKit.h>

@interface YTSearchBox : UITextField {
    CGFloat originalHeight;
    CGFloat originalWidth;
}

@property (nonatomic, assign) IBInspectable CGFloat leftPadding;
@property (nonatomic, assign) IBInspectable CGFloat addBorderTop;
@property (nonatomic, assign) IBInspectable CGFloat addBorderBottom;
@property (nonatomic, assign) IBInspectable CGFloat addBorderLeft;
@property (nonatomic, assign) IBInspectable CGFloat addBorderRight;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *endColor;
@property (nonatomic) IBInspectable NSString *iconFromURLString;
@property (nonatomic) IBInspectable UIColor *borderColor;
@end

#endif /* YTSearchBox_h */
