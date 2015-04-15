//
//  QYViewController.m
//  GestureDemo
//
//  Created by qingyun on 15-3-9.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

/*
 * 点击手势 (UITapGestureRecognizer)
 * 滑动手势 (UISwipeGestureRecognizer)
 * 旋转手势 (UIRotationGestureRecognizer)
 * 捏合手势 (UIPinchGestureRecognizer)
 * 长按手势 (UILongPressGestureRecognizer)
 * 平移手势 (UIPanGestureRecognizer) 
 * 屏幕边缘平移手势 (UIScreenEdgePanGestureRecognizer)
 */

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 单击手势
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
    singleTapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleTapGesture];
    
    // 双击手势
    UITapGestureRecognizer *doubleGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
    doubleGesture.numberOfTapsRequired = 2;
    
    // 手势之间的依赖关系
    [singleTapGesture requireGestureRecognizerToFail:doubleGesture];
    
    [self.view addGestureRecognizer:doubleGesture];
    
    // 滑动手势
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAction:)];
    swipe.direction = UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionUp|UISwipeGestureRecognizerDirectionRight|UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipe];
    
    // 旋转手势
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationAction:)];
    [self.view addGestureRecognizer:rotation];
    
    // 捏合手势
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction:)];
    [self.view addGestureRecognizer:pinch];
    
    // 长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressAction:)];
    longPress.minimumPressDuration = 2;
    longPress.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:longPress];
}

#pragma  mark - gesture process
- (void)singleTap:(UITapGestureRecognizer *)gesture
{
    NSLog(@"单击!");
}

- (void)doubleTap:(UITapGestureRecognizer *)gesture
{
    NSLog(@"双击!");
}

- (void)swipeAction:(UISwipeGestureRecognizer *)gesture
{
    NSLog(@"%s", __func__);
}

- (void)rotationAction:(UIRotationGestureRecognizer *)gesture
{
    NSLog(@"%f, %f", gesture.rotation, gesture.velocity);
}

- (void)pinchAction:(UIPinchGestureRecognizer *)gesture
{
    NSLog(@"%f", gesture.scale);
}

- (void)longPressAction:(UILongPressGestureRecognizer *)gesture
{
    if (gesture.state != UIGestureRecognizerStateBegan) {
        return;
    }
    NSLog(@"长按!");
}

@end
