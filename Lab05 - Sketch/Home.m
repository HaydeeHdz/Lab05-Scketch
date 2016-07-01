//
//  ViewController.m
//  Lab05 - Sketch
//
//  Created by Haydee on 6/30/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *estados;
@property NSMutableArray *estadosPhotos;
@property NSMutableArray *estadosDescriptions;

@property int intEstadoSelected;



@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.estados   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes", @"Guanajuato", @"Jalisco", @"Queretaro", @"Quintana Roo", nil];
    self.estadosPhotos   = [[NSMutableArray alloc] initWithObjects: @"aguascalientes.jpg", @"guanajuato.jpg", @"jalisco.jpg", @"queretaro.jpg", @"quintanaroo.jpg", nil];
    }
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.estados.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    CellHome *cell = (CellHome *)[tableView dequeueReusableCellWithIdentifier:@"CellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"CellHome" bundle:nil] forCellReuseIdentifier:@"CellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellHome"];
    }
    //Fill cell with info from arrays
    cell.lblEstado.text       = self.estados[indexPath.row];
    cell.imgDesstination.image   = [UIImage imageNamed:self.estadosPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.intEstadoSelected        = (int)indexPath.row;
    [self performSegueWithIdentifier:@"Municipios" sender:self];
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[Municipios class]]) {
        Municipios *destination     = [segue destinationViewController];
        destination.estado        = self.intEstadoSelected;
    }
}
@end
