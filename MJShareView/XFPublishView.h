//
//  XFPublishView.h
//
//
//  Created by LMJ on 16/2/25.
//  Copyright © 2016年 LMJ. All rights reserved.
//  分享试图

#import <UIKit/UIKit.h>

@protocol XFPublishViewDelegate <NSObject>

- (void)didSelectBtnWithBtnTag:(NSInteger)tag;

@end

@interface XFPublishView : UIView

@property(weak,nonatomic) id<XFPublishViewDelegate> delegate;

- (void)show;
@end


