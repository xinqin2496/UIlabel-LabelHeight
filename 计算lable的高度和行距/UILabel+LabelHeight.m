//
//  UILabel+LabelHeight.m
//
//  Created by 郑文青 on 16/9/28.
//  Copyright © 2016年 momode. All rights reserved.
//

#import "UILabel+LabelHeight.h"

@implementation UILabel (LabelHeight)

+(UILabel *)getLineSpaceLabelWithFrame:(CGRect)frame contentString:(NSString *)contentStr withFont:(UIFont *)font withLineSpace:(CGFloat)lineSpace textlengthSpace:(NSNumber *)textlengthSpace paragraphSpacing:(CGFloat)paragraphSpacing
{
    
    UILabel  *lab = [[UILabel alloc] init];
    lab.font = font;
    lab.textAlignment = NSTextAlignmentLeft;
    lab.numberOfLines = 0;
    NSDictionary *attributeDict  = [self setTextLineSpaceWithString:contentStr withFont:font withLineSpace:lineSpace  withTextlengthSpace:textlengthSpace paragraphSpacing:paragraphSpacing];
        
    CGSize size = [contentStr boundingRectWithSize:frame.size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributeDict context:nil].size;
    CGFloat sizeHeight = size.height;
    
    lab.frame =  CGRectMake(frame.origin.x,frame.origin.y, frame.size.width, sizeHeight);
    
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:contentStr attributes:attributeDict];
    
    lab.attributedText = attributedString;
    return lab;
}

/*
 
 *给UILabel设置行间距和字间距
 
 */

+(NSDictionary *)setTextLineSpaceWithString:(NSString*)str withFont:(UIFont*)font withLineSpace:(CGFloat)lineSpace withTextlengthSpace:(NSNumber *)textlengthSpace paragraphSpacing:(CGFloat)paragraphSpacing{
    
    
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    
    paraStyle.alignment = NSTextAlignmentLeft;
    
    paraStyle.lineSpacing = lineSpace;
    
    paraStyle.hyphenationFactor = 1.0;
    
    paraStyle.firstLineHeadIndent = 0.0;
    
    paraStyle.paragraphSpacingBefore = 0.0;
    
    paraStyle.headIndent = 0;
    
    paraStyle.tailIndent = 0;
    
    NSDictionary *dic = @{NSFontAttributeName:font,
                          
                          NSParagraphStyleAttributeName:paraStyle,
                          
                          NSKernAttributeName:textlengthSpace
                          
                          };
    
    return dic;
    
}

@end
