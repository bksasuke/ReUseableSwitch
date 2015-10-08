//
//  CustomSwitch.m
//  ledphoto
//
//  Created by student on 10/8/15.
//  Copyright © 2015 student. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch

{
    UIButton *_buttonON;
    UIButton *_buttonOFF;
    
}
-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y,206 ,64 )];
    _buttonON  = [[UIButton alloc] initWithFrame:CGRectMake(0 , 0, 103, 64)];
    _buttonOFF = [[UIButton alloc] initWithFrame:CGRectMake(70, 0, 103, 64)];
    
   [_buttonOFF addTarget:self
                  action:@selector(pressOFF)
        forControlEvents:UIControlEventTouchUpInside];
    
    [_buttonON addTarget:self
                    action: @selector(pressON)
        forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonON];
    [self addSubview:_buttonOFF];
    self.value =false;
    return self;
}
-(void) pressOFF{
    self.value=false;
}
-(void) pressON {
    self.value = true;
}
//getter function of property value
-(BOOL) getValue {
    return _value; // value instant variable tu dong anh xa vao property value
}
//setter function
-(void) setValue:(BOOL)value {
    _value = value;
    if (_value) {
        [_buttonON setImage:[UIImage imageNamed:@"OnWhite"] forState:UIControlStateNormal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffWhite"] forState:UIControlStateNormal];
    } else {
        [_buttonON setImage:[UIImage imageNamed:@"OnBlack"] forState:UIControlStateNormal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffBlack"] forState:UIControlStateNormal];
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
@end
