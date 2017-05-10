//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  Created by Daniel Baird on 3/7/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SimpleGameAppDelegate.h"
#import "SimpleGameViewController.h"
#import <RevMobAds/RevMobAds.h>

@implementation SimpleGameAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [RevMobAds startSessionWithAppID:@"59120c88b105ff86151005fd"];
    
	sleep(5);
	
    // Override point for customization after app launch    
//    [window addSubview:viewController.view];
    [self.window setRootViewController:viewController];
    [window makeKeyAndVisible];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
       [[RevMobAds session] showFullscreen];
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
