
//
//  HomeViewController.m
//  Cube
//
//  Created by silent on 15/10/26.
//  Copyright © 2015年 joe. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeOneCell.h"
#import "HomeOneCollectionCell.h"

@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置属性
    [self setAttribute];
    // Do any additional setup after loading the view from its nib.
}

- (void)setAttribute{
    //添加topView 到tableView上
    [self.tableView addSubview:self.topView];
    
    //注册cell
    [self.collectionView registerClass:[HomeOneCollectionCell class] forCellWithReuseIdentifier:[HomeOneCollectionCell identifier]];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[HomeOneCell identifier]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (cell == NULL) {
        cell = [[[NSBundle mainBundle] loadNibNamed:[HomeOneCell identifier] owner:self options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 200;
}



#pragma mark - UICollectionDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 6;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    HomeOneCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[HomeOneCollectionCell identifier] forIndexPath:indexPath];
    NSLog(@"%@",cell.subviews);
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
