/*
 * MPlayerX - LocalizedStrings.h
 *
 * Copyright (C) 2009 Zongyao QU
 * 
 * MPlayerX is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * MPlayerX is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with MPlayerX; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#define kMPXStringError					(NSLocalizedString(@"Error", nil))
#define kMPXStringOK					(NSLocalizedString(@"OK", nil))
#define kMPXStringFileNotSupported		(NSLocalizedString(@"The file is not supported by SPlayerX.", nil))
#define kMPXStringOpenMediaFiles		(NSLocalizedString(@"Open Media Files", nil))
#define kMPXStringFileNotExist			(NSLocalizedString(@"The file does not exist", nil))
#define kMPXStringURLNotSupported		(NSLocalizedString(@"The URL is not supported by SPlayerX.", nil))
#define kMPXStringCantFindMediaFile		(NSLocalizedString(@"Can't find a proper file to play", nil))
#define kMPXStringTBILabelGeneral		(NSLocalizedString(@"General", @"PrefToolBarLabel"))
#define kMPXStringTBILabelVideo			(NSLocalizedString(@"Video", @"PrefToolBarLabel"))
#define kMPXStringTBILabelAudio			(NSLocalizedString(@"Audio", @"PrefToolBarLabel"))
#define kMPXStringTBILabelSubtitle		(NSLocalizedString(@"Subtitle", @"PrefToolBarLabel"))
#define kMPXStringTBILabelNetwork		(NSLocalizedString(@"Network", @"PrefToolBarLabel"))
#define kMPXStringDisable				(NSLocalizedString(@"Disable", nil))
#define kMPXStringOSDSettingChanged		(NSLocalizedString(@"OSD settings changed", @"OSD hint"))
#define kMPXStringOSDPlaybackStopped	(NSLocalizedString(@"Stopped", @"OSD hint"))
#define kMPXStringOSDPlaybackPaused		(NSLocalizedString(@"Paused", @"OSD hint"))
#define kMPXStringOSDNull				(NSLocalizedString(@" ", @"OSD hint"))
#define kMPXStringOSDMuteON				(NSLocalizedString(@"Mute ON", @"OSD hint"))
#define kMPXStringOSDMuteOFF			(NSLocalizedString(@"Mute OFF", @"OSD hint"))
#define kMPXStringOSDVolumeHint			(NSLocalizedString(@"Volume: %.1f", @"OSD hint"))
#define kMPXStringOSDMainSubtitleHint	(NSLocalizedString(@"Main Sub: %@", @"OSD hint"))
#define kMPXStringOSDSecSubtitleHint	(NSLocalizedString(@"Secondary Sub: %@", @"OSD hint"))
#define kMPXStringOSDAudioHint			(NSLocalizedString(@"Audio %@", @"OSD hint"))
#define kMPXStringOSDVideoHint			(NSLocalizedString(@"Video %@", @"OSD hint"))
#define kMPXStringOSDSpeedHint			(NSLocalizedString(@"Speed: %.1fX", @"OSD hint"))
#define kMPXStringOSDSubDelayHint		(NSLocalizedString(@"Sub Delay: %.1f s", @"OSD hint"))
#define kMPXStringOSDSubScaleHint		(NSLocalizedString(@"Sub Scale: %.1f %%", @"OSD hint"))
#define kMPXStringOSDAudioDelayHint		(NSLocalizedString(@"Audio Delay: %.1f s", @"OSD hint"))
#define kMPXStringOSDCachingPercent		(NSLocalizedString(@"Caching: %4.2f%%", @"OSD hint"))
#define kMPXStringOSDAspectRatioLocked		(NSLocalizedString(@"Aspect Ratio: Locked", @"OSD hint"))
#define kMPXStringOSDAspectRatioUnLocked	(NSLocalizedString(@"Aspect Ratio: Unlocked", @"OSD hint"))
#define kMPXStringOSDAspectRatioReset		(NSLocalizedString(@"Aspect Ratio: Restored", @"OSD hint"))
#define kMPXStringOSDLetterBoxWillShow		(NSLocalizedString(@"Letterbox will show", @"OSD hint"))
#define kMPXStringOSDLetterBoxWillHide		(NSLocalizedString(@"Letterbox will hide", @"OSD hint"))
#define kMPXStringMenuUnlockAspectRatio		(NSLocalizedString(@"Unlock Aspect Ratio", @"menu"))
#define kMPXStringMenuLockAspectRatio		(NSLocalizedString(@"Lock Aspect Ratio", @"menu"))
#define kMPXStringMenuShowLetterBox		(NSLocalizedString(@"Show Letterbox", @"menu"))
#define kMPXStringMenuHideLetterBox		(NSLocalizedString(@"Hide Letterbox", @"menu"))
#define kMPXStringURLPanelClearMenu		(NSLocalizedString(@"Clear Menu...", @"open url panel"))
#define kMPXStringSubEncQueryResult		(NSLocalizedString(@"Detected file:\t%@\nEncoding:\t\t%@\nconfidence:\t%2.1f%%", @"SubEncoding"))

#define kMPXStringOSDMediaInfoDemuxer			(NSLocalizedString(@"Demuxer: %@\n", @"OSD hint media info"))
#define kMPXStringOSDMediaInfoVideoInfoNoBPS	(NSLocalizedString(@"Video: %@, %d×%d, %.1ffps\n", @"OSD hint media info"))
#define kMPXStringOSDMediaInfoVideoInfo			(NSLocalizedString(@"Video: %@, %d×%d, %.1fkbps, %.1ffps\n", @"OSD hint media info"))
#define kMPXStringOSDMediaInfoAudioInfo			(NSLocalizedString(@"Audio: %@, %.1fkbps, %.1fkHz, %d channels", @"OSD hint media info"))

#define kMPXStringUseFFMpegHandleStream			(NSLocalizedString(@"⌘-OK: Use FFMpeg to handle the stream", @"OpenURL Panel"))
#define kMPXStringUseMPlayerHandleStream		(NSLocalizedString(@"⌘-OK: Use MPlayer to handle the stream", @"OpenURL Panel"))

#define kMPXStringTextSubEncAskMe	(NSLocalizedString(@"Ask me", @"preference"))

#define kMPXStringEncUTF8			(NSLocalizedString(@"Unicode (UTF-8)", @"Text Enc"))
#define kMPXStringEncUTF16BE		(NSLocalizedString(@"Unicode (UTF-16BE)", @"Text Enc"))
#define kMPXStringEncUTF16LE		(NSLocalizedString(@"Unicode (UTF-16LE)", @"Text Enc"))
#define kMPXStringEncUTF32BE		(NSLocalizedString(@"Unicode (UTF-32BE)", @"Text Enc"))
#define kMPXStringEncUTF32LE		(NSLocalizedString(@"Unicode (UTF-32LE)", @"Text Enc"))
#define kMPXStringEnc8859_6			(NSLocalizedString(@"Arabic (ISO 8859-6)", @"Text Enc"))
#define kMPXStringEncWin1256		(NSLocalizedString(@"Arabic (Windows-1256)", @"Text Enc"))
#define kMPXStringEncMacArabic		(NSLocalizedString(@"Arabic (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_4			(NSLocalizedString(@"Baltic (ISO 8859-4)", @"Text Enc"))
#define kMPXStringEnc8859_13		(NSLocalizedString(@"Baltic (ISO 8859-13)", @"Text Enc"))
#define kMPXStringEncWin1257		(NSLocalizedString(@"Baltic (Windows-1257)", @"Text Enc"))
#define kMPXStringEnc8859_14		(NSLocalizedString(@"Celtic (ISO 8859-14)", @"Text Enc"))
#define kMPXStringEncMacCeltic		(NSLocalizedString(@"Celtic (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_2			(NSLocalizedString(@"Central Europe (ISO 8859-2)", @"Text Enc"))
#define kMPXStringEnc8859_16		(NSLocalizedString(@"Central Europe (ISO 8859-16)", @"Text Enc"))
#define kMPXStringEncWin1250		(NSLocalizedString(@"Central Europe (Windows-1250)", @"Text Enc"))
#define kMPXStringEncMacCentralEuro	(NSLocalizedString(@"Central Europe (Mac)", @"Text Enc"))
#define kMPXStringEncGB18030		(NSLocalizedString(@"Chinese Simplified (GB18030)", @"Text Enc"))
#define kMPXStringEnc2022_CN		(NSLocalizedString(@"Chinese Simplified (ISO 2022)", @"Text Enc"))
#define kMPXStringEncEUC_CN			(NSLocalizedString(@"Chinese Simplified (EUC)", @"Text Enc"))
#define kMPXStringEncWin936			(NSLocalizedString(@"Chinese Simplified (Windows-936)", @"Text Enc"))
#define kMPXStringEncMacCNSimp		(NSLocalizedString(@"Chinese Simplified (Mac)", @"Text Enc"))
#define kMPXStringEncBIG5			(NSLocalizedString(@"Chinese Traditional (Big5)", @"Text Enc"))
#define kMPXStringEncBIG5_HKSCS		(NSLocalizedString(@"Chinese Traditional (Big5 HKSCS)", @"Text Enc"))
#define kMPXStringEncEUC_TW			(NSLocalizedString(@"Chinese Traditional (EUC)", @"Text Enc"))
#define kMPXStringEncWin950			(NSLocalizedString(@"Chinese Traditional (Windows-950)", @"Text Enc"))
#define kMPXStringEncMacCNTrad		(NSLocalizedString(@"Chinese Traditional (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_5			(NSLocalizedString(@"Cyrillic (ISO 8859-5)", @"Text Enc"))
#define kMPXStringEncWin1251		(NSLocalizedString(@"Cyrillic (Windows-1251)", @"Text Enc"))
#define kMPXStringEncMacCyrillic	(NSLocalizedString(@"Cyrillic (Mac)", @"Text Enc"))
#define kMPXStringEncKOI8_R			(NSLocalizedString(@"Cyrillic (KOI8-R)", @"Text Enc"))
#define kMPXStringEncKOI8_U			(NSLocalizedString(@"Cyrillic (KOI8-U)", @"Text Enc"))
#define kMPXStringEnc8859_7			(NSLocalizedString(@"Greek (ISO 8859-7)", @"Text Enc"))
#define kMPXStringEncWin1253		(NSLocalizedString(@"Greek (Windows-1253)", @"Text Enc"))
#define kMPXStringEncMacGreek		(NSLocalizedString(@"Greek (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_8			(NSLocalizedString(@"Hebrew (ISO 8859-8)", @"Text Enc"))
#define kMPXStringEncWin1255		(NSLocalizedString(@"Hebrew (Windows-1255)", @"Text Enc"))
#define kMPXStringEncMacHebrew		(NSLocalizedString(@"Hebrew (Mac)", @"Text Enc"))
#define kMPXStringEncShift_JIS		(NSLocalizedString(@"Japanese (Shift-JIS)", @"Text Enc"))
#define kMPXStringEnc2022_JP		(NSLocalizedString(@"Japanese (ISO 2022)", @"Text Enc"))
#define kMPXStringEncEUC_JP			(NSLocalizedString(@"Japanese (EUC)", @"Text Enc"))
#define kMPXStringEncWin932			(NSLocalizedString(@"Japanese (Windows-932)", @"Text Enc"))
#define kMPXStringEncMacJpn			(NSLocalizedString(@"Japanese (Mac)", @"Text Enc"))
#define kMPXStringEnc2022_KR		(NSLocalizedString(@"Korean (ISO 2022)", @"Text Enc"))
#define kMPXStringEncEUC_KR			(NSLocalizedString(@"Korean (EUC)", @"Text Enc"))
#define kMPXStringEncWin949			(NSLocalizedString(@"Korean (Windows-949)", @"Text Enc"))
#define kMPXStringEncMacKor			(NSLocalizedString(@"Korean (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_3			(NSLocalizedString(@"South Europe (ISO 8859-3)", @"Text Enc"))
#define kMPXStringEnc8859_11		(NSLocalizedString(@"Thai (ISO 8859-11)", @"Text Enc"))
#define kMPXStringEncWin874			(NSLocalizedString(@"Thai (Windows-874/TIS-620)", @"Text Enc"))
#define kMPXStringEncMacThai		(NSLocalizedString(@"Thai (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_9			(NSLocalizedString(@"Turkish (ISO 8859-9)", @"Text Enc"))
#define kMPXStringEncWin1254		(NSLocalizedString(@"Turkish (Windows-1254)", @"Text Enc"))
#define kMPXStringEncMacTur			(NSLocalizedString(@"Turkish (Mac)", @"Text Enc"))
#define kMPXStringEncWin1258		(NSLocalizedString(@"Vietnamese (Windows-1258)", @"Text Enc"))
#define kMPXStringEncMacViet		(NSLocalizedString(@"Vietnamese (Mac)", @"Text Enc"))
#define kMPXStringEnc8859_1			(NSLocalizedString(@"Western Europe (ISO 8859-1)", @"Text Enc"))
#define kMPXStringEnc8859_15		(NSLocalizedString(@"Western Europe (ISO 8859-15)", @"Text Enc"))
#define kMPXStringEncWin1252		(NSLocalizedString(@"Western Europe (Windows-1252)", @"Text Enc"))
#define kMPXStringEncMacWestEuro	(NSLocalizedString(@"Western Europe (Mac)", @"Text Enc"))

#define kMPXStringSSCLFetching	(NSLocalizedString(@"Trying SPlayerX smart subtitle system", @"Smart Subtitle"))
#define kMPXStringSSCLZeroMatched	(NSLocalizedString(@"None subtitle match yet", @"Smart Subtitle"))
#define kMPXStringSSCLGotResults	(NSLocalizedString(@"found %d subtitles", @"Smart Subtitle"))
#define kMPXStringSSCLReqAuth	(NSLocalizedString(@"Unauthorized requests", @"Smart Subtitle"))


// ***** app store IAP support *****
#define kMPXStringStoreButtonNeedPurchase   (NSLocalizedString(@"Button Need Purchase", @"Store Support"))
#define kMPXStringStoreNoAuth   (NSLocalizedString(@"No Auth", @"App Store IAP Support"))
#define kMPXStringStoreDueDate  (NSLocalizedString(@"Due Date", @"App Store IAP Support"))
#define kMPXStringStoreProcessing   (NSLocalizedString(@"Processing", @"Store Support"))
#define kMPXStringStoreExpireReminder   (NSLocalizedString(@"Expire Reminder", @"Store Support"))

// ***** set default alert support *****
#define kMPXStringSetDefaultAlertMessage    (NSLocalizedString(@"Alert Message", @"Set Default Support"))
#define kMPXStringSetDefaultAlertTitle  (NSLocalizedString(@"Alert Title", @"Set Default Support"))
#define kMPXStringSetDefaultRejectButton    (NSLocalizedString(@"Reject Button", @"Set Default Support"))
#define kMPXStringSetDefaultDefaultButton   (NSLocalizedString(@"Default Button", @"Set Default Support"))
#define kMPXStringSetDefaultRemindLaterButton (NSLocalizedString(@"Remind Later Button", @"Set Default Support"))


// ***** appirater support *****
#define kMPXStringAppiraterAlertMessage     (NSLocalizedString(@"Appirater Alert Message", @"Appirater Support"))
#define kMPXStringAppiraterAlertTitle   (NSLocalizedString(@"Appirater Alert Title", @"Appirater Support"))
#define kMPXStringAppiraterRejectButton     (NSLocalizedString(@"Appirater Reject Button", @"Appirater Support"))
#define kMPXStringAppiraterDefaultButton    (NSLocalizedString(@"Appirater Default Button", @"Appirater Support"))
#define kMPXStringAppiraterRemindLaterButton    (NSLocalizedString(@"Appirater Remind Later Button", @"Appirater Support"))

// ***** receipt validation support *****
#define kMPXStringReceiptValidationTitle    (NSLocalizedString(@"Receipt Title", @"Receipt Validation Support"))

#define kMPXStringReceiptValidationText    (NSLocalizedString(@"Receipt Text", @"Receipt Validation Support"))

#define kMPXStringReceiptValidationButton    (NSLocalizedString(@"Receipt Button", @"Receipt Validation Support"))

