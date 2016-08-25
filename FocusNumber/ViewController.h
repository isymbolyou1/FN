//
//  ViewController.h
//  FocusNumber
//
//  Created by Бахром Мухамеджанов on 20.08.16.
//  Copyright © 2016 Бахром Мухамеджанов. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *infoLb;
/*1*/
@property (strong, nonatomic) IBOutlet UILabel *InfoLb1;
- (IBAction)ComeUpWith1:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *SecondInfoLb1;
@property (strong, nonatomic) IBOutlet UITextField *EditNumber1;
- (IBAction)CalcRezult1:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *Rezult1;
- (IBAction)Again1:(UIButton *)sender;

/*2*/
@property (strong, nonatomic) IBOutlet UILabel *infoLb2;
- (IBAction)ComeUpWith2:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *SecondInfo2;
@property (strong, nonatomic) IBOutlet UILabel *MultiplicationLb1;
@property (strong, nonatomic) IBOutlet UILabel *MultiplicationLb2;
@property (strong, nonatomic) IBOutlet UILabel *MultiplicationLb3;
@property (strong, nonatomic) IBOutlet UITextField *MultiplicationEd1;
@property (strong, nonatomic) IBOutlet UITextField *MultiplicationEd2;
@property (strong, nonatomic) IBOutlet UITextField *MultiplicationEd3;
@property (strong, nonatomic) IBOutlet UILabel *DividedLb1;
@property (strong, nonatomic) IBOutlet UILabel *DividedLb2;
@property (strong, nonatomic) IBOutlet UILabel *DividedLb3;
@property (strong, nonatomic) IBOutlet UITextField *DividedEd1;
@property (strong, nonatomic) IBOutlet UITextField *DividedEd2;
@property (strong, nonatomic) IBOutlet UITextField *DividedEd3;
@property (strong, nonatomic) IBOutlet UILabel *CalcRezLb;
@property (strong, nonatomic) IBOutlet UITextField *CalcRezEd;
- (IBAction)Rezult2:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *RezultLb2;
- (IBAction)Again2:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *TInfoLb2;
/*3*/
@property (strong, nonatomic) IBOutlet UILabel *infoLb3;
- (IBAction)ComeUpWith3:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *OldLb;
@property (strong, nonatomic) IBOutlet UITextField *EditOld3;
- (IBAction)EditOld3:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *SecondInfoLb3;
@property (strong, nonatomic) IBOutlet UITextField *EditNumber3;
- (IBAction)AddFinalNumber3:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *Rezult3;
- (IBAction)Again3:(UIButton *)sender;

@end

