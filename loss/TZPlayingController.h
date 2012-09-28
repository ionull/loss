//
//  TZPlayingController.h
//  loss
//
//  Created by tsung on 12-9-27.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PlayerController;

@interface TZPlayingController : NSObject {
    BOOL mediaLoaded;
    NSNumber *duration;
    NSNumber *currentDuration;
    
    IBOutlet PlayerController *playerController;
    NSNotificationCenter *notifCenter;
}

@property (readwrite) BOOL mediaLoaded;
@property (copy, readwrite) NSNumber *duration;
@property (copy, readwrite) NSNumber *currentDuration;

-(void) awakeFromNib;
-(IBAction) seekTo:(id)sender;

@end
