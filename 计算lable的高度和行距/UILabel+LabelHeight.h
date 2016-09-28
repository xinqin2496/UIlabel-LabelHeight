//
//  UILabel+LabelHeight.h
//
//  Created by 郑文青 on 16/9/28.
//  Copyright © 2016年 momode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LabelHeight)

/**
 一行代码设置label的高度自适应 和 行间距

 @param frame            label的frame (高度传入 0 或者其他)
 @param contentStr       文本内容
 @param font             字体
 @param lineSpace        行间距
 @param textlengthSpace  字间距
 @param paragraphSpacing 段间距

 @return 返回UILabel
 */
+(UILabel *)getLineSpaceLabelWithFrame:(CGRect )frame contentString:(NSString*)contentStr withFont:(UIFont*)font withLineSpace:(CGFloat)lineSpace  textlengthSpace:(NSNumber* )textlengthSpace paragraphSpacing:(CGFloat)paragraphSpacing;


@end
