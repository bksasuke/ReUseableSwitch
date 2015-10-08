//
//  ViewController.m
//  ledphoto
//
//  Created by student on 10/7/15.
//  Copyright © 2015 student. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonON;
@property (weak, nonatomic) IBOutlet UIButton *buttonOFF;


@end

@implementation ViewController
{
    CustomSwitch *mySwitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  //  self.view.backgroundColor =[UIColor whiteColor];;
    NSURL *SoundURL = [ NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"switch" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)SoundURL, &playsound);
    mySwitch =[[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 206, 64)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width * .45, 120);
    [mySwitch addTarget:self
                 action:@selector(switchChange:)
       forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch];
}

-(void) switchChange: (CustomSwitch*) customSwitch {
    NSLog(@"%d", customSwitch.value);
}

- (IBAction)tapON:(id)sender {
    
    NSLog(@"Switch On");

    [_buttonON  setImage:[UIImage imageNamed:@"Onwhite"]   forState:UIControlStateNormal];
    [_buttonOFF setImage:[UIImage imageNamed:@"OffWhite"] forState:UIControlStateNormal];
    AudioServicesPlaySystemSound(playsound);
}

- (IBAction)tapOFF:(id)sender {
    NSLog(@"Switch Off");
    [_buttonON  setImage:[UIImage imageNamed:@"OnBlack"]   forState:UIControlStateNormal];
    [_buttonOFF setImage:[UIImage imageNamed:@"OffBlack"] forState:UIControlStateNormal];
     AudioServicesPlaySystemSound(playsound);

}



@end
