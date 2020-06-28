//
//  DecoratorViewController.m
//  Decorator
//
//  Created by Carlo Chung on 11/15/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "DecoratorViewController.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"

@implementation DecoratorViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
  [super viewDidLoad];
  
  // 加载原始图像
  UIImage *image = [UIImage imageNamed:@"Image.png"];
  
 
  // 创建变换
  CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
  CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0, 
                                                                          image.size.height / 8.0);
  CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
  
  // 真正子类的方式
  id <ImageComponent> transformedImage = [[[ImageTransformFilter alloc] initWithImageComponent:image
                                                                                     transform:finalTransform] 
                                          autorelease];
  id <ImageComponent> finalImage = [[[ImageShadowFilter alloc] initWithImageComponent:transformedImage] 
                autorelease]; 

  /*
  // a category approach
  // add transformation
  UIImage *transformedImage = [image imageWithTransform:finalTransform];
  
  // add shadow
  id <ImageComponent> finalImage = [transformedImage imageWithDropShadow];

  // category approach in one line
  //id <ImageComponent> finalImage = [[image imageWithTransform:finalTransform] imageWithDropShadow];
  */
  
  // create a new image view with a filtered image
  // 用滤镜处理过的图像创建新的图片视图
  DecoratorView *decoratorView = [[[DecoratorView alloc] initWithFrame:[self.view bounds]]
                                  autorelease];
  [decoratorView setImage:finalImage];
  [self.view addSubview:decoratorView];
}  

@end
