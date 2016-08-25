//
//  ViewController.m
//  FocusNumber
//
//  Created by Бахром Мухамеджанов on 20.08.16.
//  Copyright © 2016 Бахром Мухамеджанов. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int N2,  Oldd3, NP;
int ME1, ME2, ME3, DE1, DE2, DE3;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*1*/
    self.InfoLb1.text = @"Загадай любое число!";
    self.EditNumber1.borderStyle = UITextBorderStyleNone;
    self.SecondInfoLb1.hidden = TRUE;
    
    /*2*/
    self.infoLb2.text = @"Загадай любое число!";
    self.SecondInfo2.hidden = TRUE;
    self.MultiplicationEd1.borderStyle = UITextBorderStyleNone;
    self.MultiplicationEd2.borderStyle = UITextBorderStyleNone;
    self.MultiplicationEd3.borderStyle = UITextBorderStyleNone;
    self.DividedEd1.borderStyle = UITextBorderStyleNone;
    self.DividedEd2.borderStyle = UITextBorderStyleNone;
    self.DividedEd3.borderStyle = UITextBorderStyleNone;
    self.MultiplicationLb1.hidden = TRUE;
    self.MultiplicationLb2.hidden = TRUE;
    self.MultiplicationLb3.hidden = TRUE;
    self.DividedLb1.hidden = TRUE;
    self.DividedLb2.hidden = TRUE;
    self.DividedLb3.hidden = TRUE;
    self.RezultLb2.hidden = TRUE;
    self.CalcRezLb.hidden = TRUE;
    self.CalcRezEd.borderStyle = UITextBorderStyleNone;
    
    /*3*/
    self.infoLb.text = @"Данное приложение покажет вам фокусы с числами! Выберите один из фокусов:";
    self.infoLb3.text = @"Загадайте любое число от 1 до 100.";
    self.EditNumber3.borderStyle = UITextBorderStyleNone;
    self.EditOld3.borderStyle = UITextBorderStyleNone;
    self.OldLb.hidden = TRUE;

    // Do any additional setup after loading the view, typically from a nib.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ComeUpWith3:(UIButton *)sender {
    self.EditOld3.borderStyle = UITextBorderStyleRoundedRect;
    self.OldLb.hidden = FALSE;
}

- (IBAction)AddFinalNumber3:(UIButton *)sender {
    NSString *Number3 = self.EditNumber3.text;
    int NN3 = [Number3 intValue];
    NP = Oldd3 * 100;
    if ((NN3 > 0) && (self.EditNumber3.text.length > 0) && (NN3 > NP)) {
        int N3 = NN3 - NP;
        self.Rezult3.text =[NSString stringWithFormat:@"Твое число = %i!",N3];
        self.EditNumber3.borderStyle = UITextBorderStyleNone;
        self.SecondInfoLb3.hidden = TRUE;
        self.EditNumber3.text = @"";
    }
    else {
        self.Rezult3.text =[NSString stringWithFormat:@"Вы не ввели число! Или пытаетесь обхитрить систему!"];
        self.EditNumber3.borderStyle = UITextBorderStyleNone;
        self.SecondInfoLb3.hidden = TRUE;
        self.EditNumber3.text = @"";
    }
    
}

- (IBAction)EditOld3:(UIButton *)sender  {
        self.EditNumber3.borderStyle = UITextBorderStyleRoundedRect;
        self.SecondInfoLb3.hidden = FALSE;
        NSString *Old3 = self.EditOld3.text;
        Oldd3 = [Old3 intValue];
    if (Oldd3 > 0 && self.EditOld3.text.length > 0) {
        N2 = ((((Oldd3*2)+5)*50)-365);
        self.SecondInfoLb3.text = [NSString stringWithFormat:@"Теперь прибавьте %i и еще прибавьте 115 и запиши получившееся число.", N2];
        self.EditOld3.borderStyle = UITextBorderStyleNone;
        self.EditOld3.text = @"";
        self.OldLb.hidden = TRUE;
        
    }
    else {
        self.SecondInfoLb3.text = [NSString stringWithFormat:@"Либо вы ничего не ввели, либо вы еще не родились!"];
        self.EditOld3.borderStyle = UITextBorderStyleNone;
        self.EditOld3.text = @"";
        self.OldLb.hidden = TRUE;
    }
    
   
    
}
- (IBAction)Again3:(UIButton *)sender {
    N2 =0;
    Oldd3 = 0;
    NP = 0;
    self.EditOld3.borderStyle = UITextBorderStyleNone;
    self.EditOld3.text = @"";
    self.OldLb.hidden = TRUE;
    self.EditNumber3.borderStyle = UITextBorderStyleNone;
    self.SecondInfoLb3.hidden = TRUE;
    self.EditNumber3.text = @"";
    self.Rezult3.hidden = TRUE;
}



-(IBAction)CalcRezult1:(UIButton *)sender {
    NSString *AddNumber1 = self.EditNumber1.text;
    int Number1 = [AddNumber1 intValue];
    int Rez1 = 0;
    Rez1 = (Number1 + 2 ) / 3;
    self.Rezult1.text = [NSString stringWithFormat:@"Твое число = %i!", Rez1];
}

- (IBAction)ComeUpWith1:(UIButton *)sender {
    self.EditNumber1.borderStyle = UITextBorderStyleRoundedRect;
    self.SecondInfoLb1.hidden = FALSE;
    self.SecondInfoLb1.text = @"Отнимите 1 с задуманного числа. Далее умножте на 2 получившийся результат. Теперь прибавьте к полученному числу задуманное. Введите полученное число:";

}

- (IBAction)Again1:(UIButton *)sender {
    self.EditNumber1.borderStyle = UITextBorderStyleNone;
    self.SecondInfoLb1.hidden = TRUE;
    self.EditNumber1.text = @"";
    self.Rezult1.text = @"";
    self.Rezult1.hidden = TRUE;
}





- (IBAction)ComeUpWith2:(UIButton *)sender {
    self.SecondInfo2.hidden = FALSE;
    self.MultiplicationEd1.borderStyle = UITextBorderStyleRoundedRect;
    self.MultiplicationEd2.borderStyle = UITextBorderStyleRoundedRect;
    self.MultiplicationEd3.borderStyle = UITextBorderStyleRoundedRect;
    self.DividedEd1.borderStyle = UITextBorderStyleRoundedRect;
    self.DividedEd2.borderStyle = UITextBorderStyleRoundedRect;
    self.DividedEd3.borderStyle = UITextBorderStyleRoundedRect;
    self.MultiplicationLb1.hidden = FALSE;
    self.MultiplicationLb2.hidden = FALSE;
    self.MultiplicationLb3.hidden = FALSE;
    self.DividedLb1.hidden = FALSE;
    self.DividedLb2.hidden = FALSE;
    self.DividedLb3.hidden = FALSE;
    self.CalcRezLb.hidden = FALSE;
    self.CalcRezEd.borderStyle = UITextBorderStyleRoundedRect;
    self.TInfoLb2.hidden = false;
    
    self.SecondInfo2.text = @"Необходимо будет произвести несколько действий! Введите посследовательно числа которые будите умножать или делить. Не обязательно заполнять все поля.";
    self.TInfoLb2.text = @"Результат разделите на задуманное число. А после прибавьте задуманное число.";
    
    
}
- (IBAction)Rezult2:(UIButton *)sender {
    self.RezultLb2.hidden = FALSE;
    int Rez2;
    NSString *AddME1 = self.MultiplicationEd1.text;
    NSString *AddME2 = self.MultiplicationEd2.text;
    NSString *AddME3 = self.MultiplicationEd3.text;
    NSString *AddDE1 = self.DividedEd1.text;
    NSString *AddDE2 = self.DividedEd2.text;
    NSString *AddDE3 = self.DividedEd3.text;

    if (self.MultiplicationEd1.text.length < 1) {
        ME1 = 1;
    }
    else {
        ME1 = [AddME1 intValue];
    }
    if (self.MultiplicationEd2.text.length < 1) {
        ME2 = 1;
    }
    else {
            ME2 = [AddME2 intValue];
    }
    if (self.MultiplicationEd3.text.length < 1) {
        ME3 = 1;
    }
    else {
        ME3 = [AddME3 intValue];
    }
    if (self.DividedEd1.text.length < 1) {
        DE1 =1;
    }
    else {
        DE1 = [AddDE1 intValue];
    }
    if (self.DividedEd2.text.length < 1) {
        DE2 = 1;
    }
    else {
        DE2 = [AddDE2 intValue];
    }
    if (self.DividedEd3.text.length < 1) {
        DE3 = 1;
    }
    else {
        DE3 = [AddDE3 intValue];
    }
    
    
    if (DE1 != 0 && DE2 != 0 && DE3 !=0) {
        if (ME1 != 0 && ME2 != 0 && ME3 != 0) {
    int Total2 = 1;
 //   if (self.MultiplicationEd1.text.length > 0 && self.MultiplicationEd2.text.length > 0 && self.MultiplicationEd3.text.length > 0 && self.DividedEd1.text.length > 0 && self.DividedEd2.text.length > 0 && self.DividedEd3.text.length > 0) {
        Total2 = ((((((Total2 * ME1) / DE1) * ME2) / DE2) * ME3) / DE3);
        NSString *AddTotal = self.CalcRezEd.text;
        double RezT2 = [AddTotal intValue];
        if (RezT2 > Total2) {
            Rez2 = RezT2 - Total2;  
        }
        else {
            Rez2 = Total2 -RezT2;
        }
        
        self.RezultLb2.text = [NSString stringWithFormat:@"Твое число = %i!", Rez2];
  //  }
   // else {
  //      self.RezultLb2.text = [NSString stringWithFormat:@"Систему не обхитрить!!!"];

   // }
        }
        else {
            self.RezultLb2.text = [NSString stringWithFormat:@"Умножая на 0 фокус не получится!!!"];
        }
    }
    else {
        self.RezultLb2.text = [NSString stringWithFormat:@"На ноль делить нельзя!!!"];
    }
    
}
- (IBAction)Again2:(UIButton *)sender {
    self.SecondInfo2.hidden = TRUE;
    self.MultiplicationEd1.borderStyle = UITextBorderStyleNone;
    self.MultiplicationEd2.borderStyle = UITextBorderStyleNone;
    self.MultiplicationEd3.borderStyle = UITextBorderStyleNone;
    self.MultiplicationEd1.text = @"";
    self.MultiplicationEd2.text = @"";
    self.MultiplicationEd3.text = @"";
    self.DividedEd1.borderStyle = UITextBorderStyleNone;
    self.DividedEd2.borderStyle = UITextBorderStyleNone;
    self.DividedEd3.borderStyle = UITextBorderStyleNone;
    self.DividedEd1.text = @"";
    self.DividedEd2.text = @"";
    self.DividedEd3.text = @"";
    self.MultiplicationLb1.hidden = TRUE;
    self.MultiplicationLb2.hidden = TRUE;
    self.MultiplicationLb3.hidden = TRUE;
    self.DividedLb1.hidden = TRUE;
    self.DividedLb2.hidden = TRUE;
    self.DividedLb3.hidden = TRUE;
    self.RezultLb2.hidden = TRUE;
    self.CalcRezLb.hidden = TRUE;
    self.CalcRezEd.borderStyle = UITextBorderStyleNone;
    self.CalcRezEd.text = @"";
    self.TInfoLb2.hidden = TRUE;
}
@end
