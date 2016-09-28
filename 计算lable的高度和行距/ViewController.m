//
//  ViewController.m
//  计算lable的高度和行距
//
//  Created by 郑文青 on 16/9/28.
//  Copyright © 2016年 zhengwenqing’s mac. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+LabelHeight.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * conText = @"处女座的人，一般都对学识渊博的人，怀着崇敬和想亲近的心。他认为知识是很重要的，丰富的知识可以使人通达于天地之间，不会被命运中不可解的谜所困扰不前。当命运之谜棋阻在他面前时，会激起他更强烈的购物欲，并使他兴致勃勃地从各种角度去诠释它。因此，处女座的人很懂得如何去安慰一个失意的朋友。一般都对学识渊博的人，怀着崇敬和想亲近的心。他认为知识是很重要的，丰富的知识可以使人通达于天地之间，不会被命运中不可解的谜所困扰不前。当命运之谜棋阻在他面前时，会激起他更强烈的购物欲，并使他兴致勃勃地从各种角度去诠释它。因此，处女座的人很懂得如何去安慰一个失意的朋友";
    
    UIFont * font = [UIFont systemFontOfSize:14]; //字号
    
    CGFloat lineSpace = 8;//行间距
    
    CGFloat paragraphSpacing = 0;//段间距

    NSNumber * textLengthSpace  = @0.5;//字间距
    
    UILabel *label = [UILabel getLineSpaceLabelWithFrame:CGRectMake(20, 150, self.view.bounds.size.width - 40, 0)  contentString:conText withFont:font withLineSpace:lineSpace  textlengthSpace:textLengthSpace paragraphSpacing:paragraphSpacing];
    
    label.backgroundColor = [UIColor yellowColor];
    
    label.textColor = [UIColor redColor];
    
    [self.view addSubview:label];
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
