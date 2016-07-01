//
//  MunicipiosDetails.h
//  Lab05 - Sketch
//
//  Created by Haydee on 7/1/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MunicipiosDetails : UIViewController
@property int estado;
@property int municipio;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipio;
@property (strong, nonatomic) IBOutlet UIImageView *imgMunicipio;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipioDetails;

@end
