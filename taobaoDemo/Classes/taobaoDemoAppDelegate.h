//
//  taobaoDemoAppDelegate.h
//  taobaoDemo
//
//  Created by YangZigang on 11-3-22.
//  Copyright 2011 audiocn.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IndexViewController;

@interface taobaoDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IndexViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IndexViewController *viewController;

@end

