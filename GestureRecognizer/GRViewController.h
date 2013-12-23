//
//  GRViewController.h
//  GestureRecognizer
//
//  Created by Vladimir on 06.08.13.
//  Copyright (c) 2013 Vladimir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRViewController : UIViewController
- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

@end
