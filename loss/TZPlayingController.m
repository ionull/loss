//
//  TZPlayingController.m
//  loss
//
//  Created by tsung on 12-9-27.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import "TZPlayingController.h"
#import "PlayerController.h"

#define LASTSTOPPEDTIMERATIO	(100)

@implementation TZPlayingController

@synthesize mediaLoaded;
@synthesize duration;
@synthesize currentDuration;

-(id) init {
    self = [super init];
    if(self) {
        mediaLoaded = NO;
        duration = 0;
        currentDuration = 0;
    }
    return self;
}

-(void) dealloc
{	
	[super dealloc];
}

-(void) awakeFromNib {
    //now observe
    notifCenter = [NSNotificationCenter defaultCenter];
    
    [notifCenter addObserver:self selector:@selector(playBackOpened:)
                        name:kMPCPlayOpenedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackStarted:)
                        name:kMPCPlayStartedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackWillStop:)
                        name:kMPCPlayWillStopNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackStopped:)
                        name:kMPCPlayStoppedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playBackFinalized:)
                        name:kMPCPlayFinalizedNotification object:playerController];
    [notifCenter addObserver:self selector:@selector(playInfoUpdated:)
                        name:kMPCPlayInfoUpdatedNotification object:playerController];
    
    // this functioin must be called after the Notification is setuped
    [playerController setupKVO];
}

#pragma mark - play events

////////////////////////////////////////////////playback//////////////////////////////////////////////////
-(void) playBackOpened:(NSNotification*)notif
{
    self.mediaLoaded = YES;
    
	//[playerController setOSDActive:[ud boolForKey:kUDKeyShowOSD]];
    
	NSNumber *stopTime = [[notif userInfo] objectForKey:kMPCPlayLastStoppedTimeKey];
	if (stopTime) {
		//[menuPlayFromLastStoppedPlace setTag: ([stopTime integerValue] * LASTSTOPPEDTIMERATIO)];
		//[menuPlayFromLastStoppedPlace setEnabled:YES];
        
	} else {
		//[menuPlayFromLastStoppedPlace setEnabled:NO];
	}
}

-(void) playBackStarted:(NSNotification*)notif
{
    /*
	[playPauseButton setState:(playerController.playerState == kMPCPlayingState)?PlayState:PauseState];
    
	[speedText setEnabled:YES];
	[subDelayText setEnabled:YES];
	[audioDelayText setEnabled:YES];
	
    // Playback Menu
	[menuSwitchAudio setEnabled:YES];
	[menuSwitchVideo setEnabled:YES];
	[menuAudioDelayInc setEnabled:YES];
	[menuAudioDelayDec setEnabled:YES];
	[menuAudioDelayReset setEnabled:YES];
	[menuPlaySpeedInc setEnabled:YES];
	[menuPlaySpeedDec setEnabled:YES];
	[menuPlaySpeedReset setEnabled:YES];
    
    // Subtitle Menu
    [menuSubtitleMatch setEnabled:YES];
    [menuSubtitleSearchOnWeb setEnabled:YES];
    
    // Window Menu
	[menuShowMediaInfo setEnabled:YES];
     */
}

-(void) playBackWillStop:(NSNotification*)notif
{
    [playerController setOSDMessage:@"" type:kOSDTypeCoreControl];
	[playerController setOSDActive:NO];
}

/** 这个API会在两个时间点被调用，
 * 1. mplayer播放结束，不论是强制结束还是自然结束
 * 2. mplayer播放失败 */
-(void) playBackStopped:(NSNotification*)notif
{
    self.mediaLoaded = NO;
    self.currentDuration = 0;
    /*
	[playPauseButton setState:PauseState];
    
	[timeText setStringValue:@""];
	[timeTextAlt setStringValue:@""];
	[timeSlider setFloatValue:-1];
	
	// 由于mplayer无法静音开始，因此每次都要回到非静音状态
	[volumeButton setState:NSOffState];
	[volumeSlider setEnabled:YES];
	[menuVolInc setEnabled:YES];
	[menuVolDec setEnabled:YES];
    
	[speedText setEnabled:NO];
	[subDelayText setEnabled:NO];
	[audioDelayText setEnabled:NO];
	
    // Playback Menu
	[menuPlayFromLastStoppedPlace setEnabled:NO];
    [menuSwitchVideo setEnabled:NO];
	[menuPlaySpeedInc setEnabled:NO];
	[menuPlaySpeedDec setEnabled:NO];
	[menuPlaySpeedReset setEnabled:NO];
    [menuSwitchAudio setEnabled:NO];
    [menuAudioDelayInc setEnabled:NO];
	[menuAudioDelayDec setEnabled:NO];
	[menuAudioDelayReset setEnabled:NO];
    
    // Subtitle Menu
	[menuSwitchSub setEnabled:NO];
    [menuSwitchSecondSub setEnabled:NO];
	[menuSubScaleInc setEnabled:NO];
	[menuSubScaleDec setEnabled:NO];
	[menuSubtitleDelayInc setEnabled:NO];
	[menuSubtitleDelayDec setEnabled:NO];
	[menuSubtitleDelayReset setEnabled:NO];
    [menuSubtitleMatch setEnabled:NO];
    [menuSubtitleSearchOnWeb setEnabled:NO];
    
    // Window Menu
	[menuShowMediaInfo setEnabled:NO];
     */
}

-(void) playBackFinalized:(NSNotification*)notif
{
    /*
	// 如果不继续播放，或者没有下一个播放文件，那么退出全屏
	// 这个时候的显示状态displaying是NO
	// 因此，如果是全屏的话，会退出全屏，如果不是全屏的话，也不会进入全屏
	[self toggleFullScreen:nil];
	// 并且重置 fillScreen状态
	[self toggleFillScreen:nil];
    
    shareUriCurrent = @"";
	[self hideShareControls:self];
    [self hideOAuthView:self];
    
	if ([ud boolForKey:kUDKeyCloseWindowWhenStopped])
		[dispView closePlayerWindow];
    //	else
    //		[dispView setDefaultPlayerWindowSize];
    */
}

-(void) playInfoUpdated:(NSNotification*)notif
{
	NSString *keyPath = [[notif userInfo] objectForKey:kMPCPlayInfoUpdatedKeyPathKey];
	NSDictionary *change = [[notif userInfo] objectForKey:kMPCPlayInfoUpdatedChangeDictKey];
	
	if ([keyPath isEqualToString:kKVOPropertyKeyPathCurrentTime]) {
		// 得到现在的播放时间
		[self gotCurentTime:[change objectForKey:NSKeyValueChangeNewKey]];
	} else if ([keyPath isEqualToString:kKVOPropertyKeyPathSpeed]) {
      // 得到播放速度
      //[self gotSpeed:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathSubDelay]) {
      // 得到 字幕延迟
      //[self gotSubDelay:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathAudioDelay]) {
      // 得到 声音延迟
      //[self gotAudioDelay:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathLength]){
      // 得到媒体文件的长度
      [self gotMediaLength:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathSeekable]) {
      // 得到 能否跳跃
      //[self gotSeekableState:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathCachingPercent]) {
      // 得到目前的caching percent
      //[self gotCachingPercent:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathSubInfo]) {
      // 得到 字幕信息
      //[self gotSubInfo:[change objectForKey:NSKeyValueChangeNewKey]
      //changed:[[change objectForKey:NSKeyValueChangeKindKey] intValue]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathAudioInfo]) {
      // 得到音频的信息
      //[self gotAudioInfo:[change objectForKey:NSKeyValueChangeNewKey]];
      
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathVideoInfo]) {
      //// got the video info
      //[self gotVideoInfo:[change objectForKey:NSKeyValueChangeNewKey]];
      } else if ([keyPath isEqualToString:kKVOPropertyKeyPathAudioInfoID] ||
      [keyPath isEqualToString:kKVOPropertyKeyPathVideoInfoID]) {
      //MovieInfo *mi = [playerController mediaInfo];
      //NSLog(@"VID %d AID %d", [mi.playingInfo currentVideoID], [mi.playingInfo currentAudioID]);
      }
      else if ([keyPath isEqualToString:kKVOPropertyKeyPathSubScale]) {
      // got the sub scale
      //[self gotSubScale:[change objectForKey:NSKeyValueChangeNewKey]];
      }
}

#pragma mark - change ui

-(void) gotCurentTime:(NSNumber*) timePos
{
    self.currentDuration = timePos;
	//float time = [timePos floatValue];
    /*
	double length = [timeSlider maxValue];
    
	if (length > 0) {
		if ([ud boolForKey:kUDKeyTimeTextAltTotal]) {
			[timeTextAlt setIntValue:length + 0.5];
		} else {
			// display remaining time
			[timeTextAlt setIntValue:time - length - 0.5];
		}
	}
    
	[timeText setIntValue:time + 0.5];
	// 即使timeSlider被禁用也可以显示时间
	[timeSlider setFloatValue:time];
	
	if (length > 0) {
		[self calculateHintTime];
	}
	
	if ([playerController isOSDActive] && (time > 0)) {
		NSString *osdStr = [timeFormatter stringForObjectValue:timePos];
		
		if (length > 0) {
			osdStr = [osdStr stringByAppendingFormat:kStringFMTTimeAppendTotal, [timeFormatter stringForObjectValue:[NSNumber numberWithDouble:length]]];
		}
        [playerController setOSDMessage:osdStr type:kOSDTypeTime];
	}
     */
}

-(void) gotMediaLength:(NSNumber*) length
{
	float len = [length floatValue];
	
	if (len > 0) {
        self.mediaLoaded = YES;
        self.duration = length;
        /*
		[timeSlider setMaxValue:len];
		[timeSlider setMinValue:0];
		if ([ud boolForKey:kUDKeyTimeTextAltTotal]) {
			// diplay total time
			[timeTextAlt setIntValue:len + 0.5];
		} else {
			// display remain time
			[timeTextAlt setIntValue:-len-0.5];
		}*/
	} else {
        self.mediaLoaded = NO;
        self.duration = 0;
        self.currentDuration = 0;
        /*
		[timeSlider setEnabled:NO];
		[timeSlider setMaxValue:0];
		[timeSlider setMinValue:-1];
		[hintTime.animator setAlphaValue:0];
         */
	}
}

#pragma mark - control play
-(IBAction) seekTo:(id) sender
{
	if ([sender isKindOfClass:[NSMenuItem class]]) {
		
		sender = [NSNumber numberWithFloat:MAX(0, (((float)[sender tag]) / LASTSTOPPEDTIMERATIO) - 5)];
	}
	
	// 这里并没有直接更新controlUI的代码
	// 因为controlUI会KVO mplayer.movieInfo.playingInfo.currentTime
	// playerController的seekTo方法里会根据新设定的时间修改currentTime
	// 因此这里不用直接更新界面
	[playerController seekTo:[sender floatValue]];
}

@end
