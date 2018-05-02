//
//  ChtarSheetPicker.m
//  BottomActionView
//
//  Created by Ragaie alfy on 5/2/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

#import "ChtarSheetPicker.h"

@implementation ChtarSheetPicker

BottomActionView *   customPicker ;



-(instancetype)init{
    
    
    return [super init];
}





-(void)initViewWith:(UIView *)customView andHeight:(double)height{
    
    
    
    
    customPicker = [[BottomActionView alloc] initWithFrame:CGRectMake(0, UIScreen.mainScreen.bounds.size.height , UIScreen.mainScreen.bounds.size.width, height)];
    
    
    [customPicker setSheetHeight:height];
    [customPicker setCustomViewToShow:customView];
    
    
    
}



-(void)show{
    
    [customPicker show];
}

-(void)dismiss{
    
    [customPicker dismissView];
    
}


//public   init(CustomePickerWithdblock doneText : String ,customView : UIView,height : Int) {
//
//    customPicker  =   CustomPicker.init(frame: CGRect.init(x: 0, y: UIScreen.main.bounds.height,width: UIScreen.main.bounds.width, height: 200))
//    customPicker.customViewToShow = customView
//    // actionPicker.cancelBlock = onCancel
//    customPicker.sheetHeight = CGFloat.init(height)
//    //customPicker.show()
//    //actionPicker.show()
//}
//
//public  func show(){
//
//    customPicker.show()
//
//
//}
//public  func dismiss(){
//
//    customPicker.dismissView()
//
//}
@end
