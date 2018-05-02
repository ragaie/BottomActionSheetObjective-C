//
//  BottomActionView.m
//  BottomActionView
//
//  Created by Ragaie alfy on 5/2/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

#import "BottomActionView.h"


@implementation BottomActionView


@synthesize customViewToShow;
@synthesize sheetHeight;

int * selectItem = 0;
_Bool * showFlage;

UIVisualEffectView * plurView;


NSString * ID = @"customeSheet";

 void (^doneBlock)(int*);


//var doneBlock : ((_ index:Int) -> Void)!


-(instancetype)initWithFrame:(CGRect)frame{
    
    sheetHeight = 200.0;
    showFlage = NO;
    [self initSubview];
    [self initActionAndDeleget];
  return  [super initWithFrame: frame];
    
   
}



-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    [self initSubview];
    [self initActionAndDeleget];
    return  [super initWithCoder:aDecoder];
   
}



-(void) initSubview{
    
    UIView *view = [[UIView alloc] initWithFrame: CGRectMake(0, UIScreen.mainScreen.bounds.size.height , 300, 300)];
    
    
    [self addSubview:view];
    
       view = [[UIView alloc] initWithFrame: CGRectMake(0, UIScreen.mainScreen.bounds.size.height , UIScreen.mainScreen.bounds.size.width, sheetHeight)];
    
    plurView = [[UIVisualEffectView alloc] initWithFrame:CGRectMake(0, 0 , UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    [plurView setBackgroundColor:[UIColor lightGrayColor]];
    [plurView setAlpha:0.5];
}

-(void) initActionAndDeleget  {
    
    
    
//    let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PickerList.clickheader(_:)))
//    singleTap.numberOfTapsRequired = 1
//    plurView.addGestureRecognizer(singleTap)
    
    
    UITapGestureRecognizer *singleTap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickheader:)];
    
    [singleTap setNumberOfTapsRequired:1];
    [plurView addGestureRecognizer:singleTap];
    
    
    
}
/// show view

-(void)show  {
    
    if (showFlage == NO) {
        ///add user view
        if (customViewToShow != nil ){
            
            
            customViewToShow.frame =  CGRectMake(0, 0 , self.frame.size.width, sheetHeight);
            
            [self addSubview:customViewToShow];
            
        }
        
        
        [UIApplication.sharedApplication.keyWindow addSubview:plurView];
        
        [UIApplication.sharedApplication.keyWindow addSubview:self];
     
        [UIView animateWithDuration: 0.3 animations:^{
            
            CGRect  basketTopFrame = self.frame;
            
            basketTopFrame.origin.y -= sheetHeight;
            
            
            self.frame = basketTopFrame;
        }];
        
       
        
        showFlage = YES;
    }
    
}


-(void)dismissView{
    
    
    
    [UIView animateWithDuration:0.3 animations:^{
        
        CGRect  basketTopFrame = self.frame;
        
        basketTopFrame.origin.y += sheetHeight;
        
        
        self.frame = basketTopFrame;
        
    } completion:^(BOOL finished) {
        [plurView removeFromSuperview];
        [self removeFromSuperview];
        
       
    }];
    
    showFlage = NO;

    
 

    
    
}


-(void) clickheader :(id)sender{
    
    
    [self dismissView];
    
    
}

@end
