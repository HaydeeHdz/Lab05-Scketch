//
//  Municipios.m
//  Lab05 - Sketch
//
//  Created by Haydee on 6/30/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import "Municipios.h"

@interface Municipios ()
@property NSMutableArray *municipios;
@property NSMutableArray *municipiosPhotos;
@property NSMutableArray *municipiosDescriptions;
@property int intEstadoSelected;
@property int intMunicipioSelected;

@end

@implementation Municipios
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
    if (self.estado == 0)
    {
        //Aguascalientes
    self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Calvillo", @"Cosio", @"Jesus Maria", @"Pabellon de Arteaga", @"San Francisco de los Romo", nil];
    self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"calvillo.jpg", @"cosio.jpg", @"jesus_maria.jpg", @"pabellon_de_arteaga.jpg", @"san_francisco_de_los_romo.jpg",nil];
    }else if (self.estado == 1)
    {
        //Guanajuato
        self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Dolores Hidalgo", @"Leon", @"Penjamo", @"Salamanca", @"Silao", nil];
        self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"dolores_hidalgo.jpg", @"leon.jpg",@"pejamo.jpg", @"salamanca.jpg", @"silao.jpg",nil];

    } else if (self.estado == 2)
    {
        //Jalisco
        self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Chapala", @"San Juan de los Lagos", @"Tequila", @"Tonala", @"Villa Hidalgo", nil];
        self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"chapala.jpg", @"san_juan_de_los_lagos.jpg",@"tequila.jpg", @"tonala.jpg", @"villa_hidalgo.jpg", nil];

    } else if (self.estado == 3)
    {
        //Queretaro
        self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Colon", @"Corregidora", @"El Marques", @"Queretaro",@"San Juan del Rio", nil];
        self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"colon.jpg", @"corregidora.jpg", @"el_marques.jpg", @"queretaro_1.jpg",@"san_juan_del_rio.jpg",nil];

    } else if (self.estado == 4)
    {
        //Quintana Roo
        self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Benito Juarez", @"Cozumel", @"Isla Mujeres", @"Jose Maria Morelos", @"Lazaro Cardenas", nil];
        self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"benito_juarez.jpg", @"cozumel.jpg", @"isla_mujeres.jpg", @"jose_maria_morelos.jpg",@"lazaro_cardenas.jpg",nil];
    }
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.municipios.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    MunicipiosCell *cell = (MunicipiosCell *)[tableView dequeueReusableCellWithIdentifier:@"MunicipiosCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"MunicipiosCell" bundle:nil] forCellReuseIdentifier:@"MunicipiosCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"MunicipiosCell"];
    }
    //Fill cell with info from arrays
    cell.lblMunicipios.text       = self.municipios[indexPath.row];
    cell.imgMunicipios.image   = [UIImage imageNamed:self.municipiosPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.intMunicipioSelected = (int)indexPath.row;
    self.intEstadoSelected = self.estado;
    [self performSegueWithIdentifier:@"MunicipioDetail" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[MunicipiosDetails class]]) {
        MunicipiosDetails *destination     = [segue destinationViewController];
        destination.estado        = self.intEstadoSelected;
        destination.municipio = self.intMunicipioSelected;
    }
}
@end
