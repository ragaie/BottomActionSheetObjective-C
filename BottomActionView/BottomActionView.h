//
//  BottomActionView.h
//  BottomActionView
//
//  Created by Ragaie alfy on 5/2/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BottomActionView : UIView

@property UIView * customViewToShow;
@property CGFloat  sheetHeight ;



-(void)show;
-(void)dismissView;
@end
