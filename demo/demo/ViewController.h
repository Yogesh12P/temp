//
//  ViewController.h
//  demo
//
//  Created by gaurav on 23/03/17.
//  Copyright © 2017 yogesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    UIButton *buttonField;
    UITextField *textField;
    UILabel *labelField;
}

@property(nonatomic,retain)UITextField *textField;
@property(nonatomic,retain)UIButton *buttonField;
@property(nonatomic,retain)UILabel *labelField;
-(void)addButtonField;

@end

