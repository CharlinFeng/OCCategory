//
//  OCWebImageView.m
//  OCCategory
//
//  Created by 冯成林 on 16/1/29.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "OCWebImageView.h"
#import "UIImage+ReMake.h"

@implementation OCWebImageView



-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    if(self.placeHolderImage == nil){
    
        self.placeHolderImage = [UIImage placeHolderImageWithSize:self.bounds.size scale:0.2];
        self.image = self.placeHolderImage;
        self.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.2];
    }
}



@end
