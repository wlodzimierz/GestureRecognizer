//
//  GRViewController.m
//  GestureRecognizer
//
//  Created by Vladimir on 06.08.13.
//  Copyright (c) 2013 Vladimir. All rights reserved.
//

#import "GRViewController.h"

@implementation GRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *ImageURL = @"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSye-ytI0pYs_h_li5fY6koUfx821tRd971_UNlJgh-J73qs04P";
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:ImageURL]];
    self.imageView.image = [UIImage imageWithData:imageData];
    self.imageView2.image = [UIImage imageWithData:imageData];
    self.imageView3.image = [UIImage imageWithData:imageData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
//    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
//                                         recognizer.view.center.y /*+ translation.y*/);
    
    self.imageView.center = CGPointMake(recognizer.view.center.x + translation.x,
                                        recognizer.view.center.y /*+ translation.y*/);

    
    self.imageView2.center = CGPointMake(recognizer.view.center.x + translation.x - 285,
                                        recognizer.view.center.y /*+ translation.y*/);
    self.imageView3.center = CGPointMake(recognizer.view.center.x + translation.x + 285,
                                        recognizer.view.center.y /*+ translation.y*/);

    //
//    if(translation.x == 100 || translation.x == -100) {
        NSLog(@"x=%f y=%f x=%f y=%f",translation.x, translation.y, recognizer.view.center.x, recognizer.view.center.y);
//        
//        NSString *ImageURL = @"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSye-ytI0pYs_h_li5fY6koUfx821tRd971_UNlJgh-J73qs04P";
//        NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:ImageURL]];
//        self.imageView.image = [UIImage imageWithData:imageData];
//    }
//    
//    else
//        NSLog(@"x=%f",translation.x);
    
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.imageView];

    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        
//        CGPoint velocity = [recognizer velocityInView:self.view];
//        CGFloat magnitude = sqrtf((velocity.x * velocity.x) + (velocity.y * velocity.y));
//        CGFloat slideMult = magnitude / 200;
//        NSLog(@"magnitude: %f, slideMult: %f", magnitude, slideMult);
//        
//        float slideFactor = 0.1 * slideMult; // Increase for more of a slide
//        CGPoint finalPoint = CGPointMake(recognizer.view.center.x + (velocity.x * slideFactor),
//                                         recognizer.view.center.y /*+ (velocity.y * slideFactor)*/);
//        
//        finalPoint.x = MIN(MAX(finalPoint.x, -100), self.view.bounds.size.width+100);
//        //finalPoint.y = MIN(MAX(finalPoint.y, 0), self.view.bounds.size.height);
//        
//        [UIView animateWithDuration:slideFactor*2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
//            NSLog(@"anime %f", finalPoint.x);    
//            
//            recognizer.view.center = finalPoint;
//        } completion: ^(BOOL arg){
//            NSLog(@"anime %f %c", finalPoint.x, arg);
//        }];
        
    }
    
}

@end
