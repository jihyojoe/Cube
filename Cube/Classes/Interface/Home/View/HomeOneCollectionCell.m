//
//  HomeOneCollectionCell.m
//  Cube
//
//  Created by silent on 15/10/27.
//  Copyright © 2015年 joe. All rights reserved.
//

#import "HomeOneCollectionCell.h"

@interface HomeOneCollectionCell()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end
@implementation HomeOneCollectionCell

- (void)awakeFromNib {
    // Initialization code
    
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.text = @"hello";
}

+(NSString *)identifier{
    return @"firstCollectionCell";
}

@end
