//
//  YTButton.h
//  App
//
//  Created by Keuha on 28/02/2018.
//  Copyright © 2018 Yotako. All rights reserved.
//

#ifndef YTButton_h
#define YTButton_h
#import <UIKit/UIKit.h>

@interface YTButton : UIButton {
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
@property (nonatomic) IBInspectable NSString *stringUrl;
@property (nonatomic) IBInspectable UIColor *borderColor;
@end

#endif /* YTButton_h */
