# UIlabel-LabelHeight
一行代码搞定UIlabel的高度自适应和行距
方法如下:


    
    NSString * conText = @"这里写文本内容";
    UIFont * font = [UIFont systemFontOfSize:14]; //字号
    
    CGFloat lineSpace = 8;//行间距
    
    CGFloat paragraphSpacing = 0;//段间距

    NSNumber * textLengthSpace  = @0.5;//字间距
    
    UILabel *label = [UILabel getLineSpaceLabelWithFrame:CGRectMake(20, 150, self.view.bounds.size.width - 40, 0)  contentString:conText withFont:font withLineSpace:lineSpace  textlengthSpace:textLengthSpace paragraphSpacing:paragraphSpacing];
    
    label.backgroundColor = [UIColor yellowColor];
    
    label.textColor = [UIColor redColor];
    
    [self.view addSubview:label];
