//
//  ViewController.m
//  iOS_底层开发原理
//
//  Created by Leo on 2018/10/19.
//  Copyright © 2018年 SPIC. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+LeoKVO.h"
@interface ViewController ()
@property (nonatomic,strong) Person * person;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person * person = [[Person alloc]init];
    
    _person = person;
    
    [_person Leo_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    _person.name = @"Leo is ME";
}
@end
