//
//  ChtarSheetPicker.h
//  BottomActionView
//
//  Created by Ragaie alfy on 5/2/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottomActionView.h"
@interface ChtarSheetPicker : NSObject



//public   init(CustomePickerWithdblock doneText : String ,customView : UIView,height : Int) {
-(void)initViewWith : (UIView*) customView andHeight :( double)height;

-(void)show;
-(void)dismiss;
@end
