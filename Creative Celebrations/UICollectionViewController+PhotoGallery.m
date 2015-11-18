//
//  UICollectionViewController+PhotoGallery.m
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/22/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import "UICollectionViewController+PhotoGallery.h"
#import "UICollectionViewCell+PhotoGalleryCell.h"
#import "UIViewController+ImageDetail.h"
@interface PhotoGallery()
@end

@implementation PhotoGallery

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"PhotoDetailSegue"]){
        PhotoGalleryCell *cell = (PhotoGalleryCell *)sender;
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
        
        int imageNumber = indexPath.row %26;
        
        ImageDetail *idvc = (ImageDetail *)[segue destinationViewController];
        idvc.img = [UIImage imageNamed:[NSString stringWithFormat:@"image%d.jpg",imageNumber]];
        
    }
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 26;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    static NSString *identifier = @"Cell";
    
    PhotoGalleryCell *cell = (PhotoGalleryCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    int imageNumber = indexPath.row %26;
    
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"imageicon%d.jpg",imageNumber]];
    
    return cell;
}
@end
