//
//  TZPlaybackButtons.m
//  loss
//
//  Created by tsung on 12-10-11.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import "TZPlaybackButtons.h"
#import "PlayerController.h"

@implementation TZPlaybackButtons

- (void)dealloc
{
	//[self stopObserving];
	
	[super dealloc];
}

- (void)awakeFromNib
{
	//now observe
    notifCenter = [NSNotificationCenter defaultCenter];
    
    //[notifCenter addObserver:self selector:@selector(playBackOpened:)
    //                    name:kMPCPlayOpenedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackStarted:)
                        name:kMPCPlayStartedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackStopped:)
                        name:kMPCPlayStoppedNotification object:playerController];
    //[notifCenter addObserver:self selector:@selector(playBackStopped:)
	//					name:kMPCPlayWillStopNotification object:playerController];
    /*[notifCenter addObserver:self selector:@selector(playInfoUpdated:)
                        name:kMPCPlayInfoUpdatedNotification object:playerController];
     */
    
    // this functioin must be called after the Notification is setuped
    [playerController setupKVO];
}

-(void) playBackStopped:(NSNotification*)notif {
    [self setImage:[NSImage imageNamed: @"play"] forSegment:1];
}

-(void) playBackStarted:(NSNotification*)notif {
    [self setImage:[NSImage imageNamed: @"pause"] forSegment:1];
}

- (BOOL)sendAction:(SEL)theAction to:(id)theTarget
{
	NSLog(@"Mouse down!");
	
	NSInteger clickedSegment = [self selectedSegment];
	if (clickedSegment == 0) //Previous
	{
		//[playbackController prev:self];
	}
	else if (clickedSegment == 1) //Play
	{
        [playerController togglePlayPause];
        if([playerController playerState] == kMPCPausedState) {
            [self setImage:[NSImage imageNamed: @"play"] forSegment:1];
        }
	}
	else if (clickedSegment == 2) //Next
	{
		//[playbackController next:self];
	}
	else {
		return NO;
	}
	
	return YES;
	
}

@end
