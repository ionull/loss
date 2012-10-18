//
//  TZPlaybackButtons.h
//  loss
//
//  Created by tsung on 12-10-11.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PlayerController;

@interface TZPlaybackButtons : NSSegmentedControl {
    IBOutlet PlayerController *playerController;
    NSNotificationCenter *notifCenter;
}

@end
