//
//  IMDiaryViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//  日记

#import "IMDiaryViewController.h"
#import "IMWriteViewController.h"

@interface IMDiaryViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak,nonatomic) UITableView *diaryTableView;
@property (weak,nonatomic) UIView *zxView;//撰写view
@property (weak,nonatomic) UIButton *zxBut;//撰写按钮
@property (strong,nonatomic) NSArray *rijiArr;//日记篇数



@end

@implementation IMDiaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"日记";
     [self.view addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bgd"]]];
    
    
    [self setupUI];// 撰写区域
    [self setTableView];// 日记列表
}

- (void)setupUI{
    // 撰写区域
    UIView *zxview = [[UIView alloc]init];
    self.zxView = zxview;
     [self.view addSubview:self.zxView];
    self.zxView.backgroundColor = [UIColor blueColor];
    [self.zxView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view);
        make.height.equalTo(@64);
        make.bottom.equalTo(self.view.mas_bottom).offset(-64);
    }];
    
    //撰写按钮
    UIButton *zxbth = [[UIButton alloc]init];
    self.zxBut = zxbth;
    [self.zxView addSubview:self.zxBut];
    [self.zxBut setTitle:@"撰写" forState:UIControlStateNormal];
    [self.zxBut setTintColor:[UIColor whiteColor]];
    [self.zxBut addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    [self.zxBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.zxView);
    }];
    
    // 日记篇数
    
}

// tableview
- (void)setTableView{
    UITableView *diaryTableView = [[UITableView alloc]init];
    self.diaryTableView = diaryTableView;
    [self.view addSubview:self.diaryTableView];
    [self.diaryTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.view);
        make.bottom.equalTo(self.zxView.mas_top);
    }];
    
    self.diaryTableView.delegate = self;
    self.diaryTableView.dataSource = self;
    
    self.diaryTableView.backgroundColor = [UIColor whiteColor];
    
}

// 撰写点击事件
- (void)click{
    NSLog(@"撰写成功");
    
    IMWriteViewController *writeVc = [[IMWriteViewController alloc] init];
    
    // 2.显示
    [self presentViewController:writeVc animated:YES completion:nil];
    
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// tableview代理方法
//返回行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}
//返回区数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return self.rijiArr.count;
    return 3;
}
//设置行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 30;
}


//设置cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *str=@"indexpath";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:str];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    //将cell设置为可点击(默认yes)
    // cell.userInteractionEnabled = YES;
    
    cell.textLabel.text=[NSString stringWithFormat:@"我是第%ld区 第%ld行",indexPath.section,indexPath.row];
    cell.textLabel.textAlignment=NSTextAlignmentCenter;
    
    
    return cell;
}
//点击cell执行该方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}



@end
