//
//  ViewController.m
//  PriceLabel
//
//  Created by ZA on 2020/10/9.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
#pragma mark - 类似于价格标签 活动价格减的线      1
    UILabel * strikeLabel = [[UILabel alloc] initWithFrame:(CGRectMake(50, 200, 250, 30))];
    NSString * primeCost = @"10000";
    NSString *textStr = [NSString stringWithFormat:@"%@元", primeCost];
     //中划线
     NSDictionary *attribtDic = @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
     NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:textStr attributes:attribtDic];
     // 赋值
     strikeLabel.attributedText = attribtStr;
     [self.view addSubview:strikeLabel];
    
    
    
    
#pragma mark - 类似于价格标签 活动价格减的线      2
       UILabel *originalPrice = [[UILabel alloc]initWithFrame:(CGRectMake(50, 300, 250, 30))];  //原价
         originalPrice.font = [UIFont systemFontOfSize:16];
         originalPrice.textColor = [UIColor redColor];
         NSString *str = [NSString stringWithFormat:@"￥%@",@"999"];
        NSMutableAttributedString *attributeMarket = [[NSMutableAttributedString alloc] initWithString:str];
        [attributeMarket setAttributes:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle], NSBaselineOffsetAttributeName : @(NSUnderlineStyleSingle)} range:NSMakeRange(0,str.length)];
    
        originalPrice.attributedText = attributeMarket;
        [self.view addSubview:originalPrice];
    
    
}


@end
