//
//  UIImage+ReMake.m
//  CoreSDWebImage
//
//  Created by 成林 on 15/5/6.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "UIImage+ReMake.h"


@implementation UIImage (ReMake)


-(UIImage *)remakeImageWithFullSize:(CGSize)fullSize scale:(CGFloat)scale{
    
    //新建上下文
    UIGraphicsBeginImageContextWithOptions(fullSize, NO, 0.0);
    
    [[UIColor colorWithWhite:0.4 alpha:0.2] setFill];
    
    //图片原本size
    CGFloat minWH = MIN(fullSize.width, fullSize.height);
    CGSize size_orignal = CGSizeMake(minWH, minWH);
    
    CGFloat sizeW = size_orignal.width * scale;
    CGFloat sizeH = size_orignal.height * scale;
    CGFloat x = (fullSize.width - sizeW) * 0.5f;
    CGFloat y = (fullSize.height - sizeH) * .5f;
    CGRect rect = CGRectMake(x, y, sizeW, sizeH);
    UIRectFill(rect);
    [self drawInRect:rect blendMode:kCGBlendModeDestinationIn alpha:1.0];
    
    //获取图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}


/*
 *  生成一个默认的占位图片：bundle默认图片
 */
+(UIImage *)placeHolderImageWithSize:(CGSize)fullSize scale:(CGFloat)scale{
    
    return [[UIImage imageNamed:@"CoreCategory.bundle/holder"] remakeImageWithFullSize:fullSize scale:scale];
}

+(UIImage *)placeHolderImageWithSize:(CGSize)fullSize{

    return [self placeHolderImageWithSize:fullSize scale:0.2];
}

@end
