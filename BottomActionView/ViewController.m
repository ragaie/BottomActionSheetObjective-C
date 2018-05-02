//
//  ViewController.m
//  BottomActionView
//
//  Created by Ragaie alfy on 5/2/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAction:(id)sender {
    
    
    
    UIView *  reddd = [[UIView alloc] initWithFrame:self.view.bounds];
    
    [reddd setBackgroundColor:[UIColor greenColor]];
    ChtarSheetPicker * gggg = [[ChtarSheetPicker alloc]init];
    [ gggg initViewWith:reddd andHeight:600];
    
    [gggg show];
    
    
}


@end
