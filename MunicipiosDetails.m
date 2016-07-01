//
//  MunicipiosDetails.m
//  Lab05 - Sketch
//
//  Created by Haydee on 7/1/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import "MunicipiosDetails.h"

@interface MunicipiosDetails ()
@property NSMutableArray *municipioDetail;
@property NSMutableArray *municipioDetailPhoto;
@property NSMutableArray *municipioDescription;

@end

@implementation MunicipiosDetails
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    if (self.estado == 0)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Calvillo";
            self.lblMunicipioDetails.text   = @"La Feria de la Guayaba es una festividad que incluye la coronación de la reina y los espectáculos culturales que se presentan en el teatro del pueblo, así como la Feria de Mayo, que complementa las festividades religiosas con motivo de las fiestas patronales del Señor del Salitre, en cuyo honor fue erigido el templo del centro histórico.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"calvillo.jpg"];
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"Cosio";
            self.lblMunicipioDetails.text   = @"El Pueblo de Cosío fue Fundado el 28 de Diciembre de 1857 por Don Cornelio Acosta que lo expropio de la Hacienda de San Jacinto perteneciente al Municipio de Rincón de Romos, Ags., jurándolo al pueblo y poniéndole el nombre de “Cosío” en honor al Licenciado Luís de Cosío quien fue, quien tuvo a cargo hacer las gestiones parta elevarlo a Municipio.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"cosio.jpg"];
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"Jesus Maria";
            self.lblMunicipioDetails.text   = @"Originalmente fue conocido como Xonacatique palabra nahuatl que significa “lugar donde crecen las cebollas” en los años comprendidos entre 1500 y 1702 cuando se establece como una estancia por el indio cacique Matías Saucedo y Moctezuma. En el año de 1765 se eleva a categoría de Villa con el nombre de “Jesús María de los Dolores” y después de la Revolución es cuando su nombre se acorta.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"jesus_maria.jpg"];
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Pabellon de Arteaga";
            self.lblMunicipioDetails.text   = @"A raíz de que se iniciaron los trabajos de construcción de lo que sería la Presa Calles, fue necesario bajar del ferrocarril en el punto más cercano al lugar de las obras, habiéndose seleccionado el lugar en donde había solo un cambio sobre la vía de ferrocarril de México a Cd. Juárez, debido a su cercanía con la Hacienda de Pabellón, se denominó Estación Pabellón.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"pabellon_de_arteaga.jpg"];
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"San Francisco de los Romo";
            self.lblMunicipioDetails.text   = @"Las tierras donde se ubica actualmente la capital del municipio, durante 133 años fueron propiedad de la Hacienda de San Blas de Pabellón. Para el año de 1879 ya tenía el nombre de San Francisco de los Romo, en honor a uno de los compradores del terreno.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"san_francisco_de_los_romo.jpg"];
        }
    }
    else if (self.estado == 1)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Dolores Hidalgo";
            self.lblMunicipioDetails.text   = @"Dolores Hidalgo es fundamental en la historia de México, pues aquí inició el movimiento de Independencia. De ahí que se denomine a esta ciudad “Cuna de la Independencia”.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"dolores_hidalgo.jpg"];
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"Leon";
            self.lblMunicipioDetails.text   = @"Fue fundada el 20 de enero de 1576 por Martín Enríquez de Almansa bajo el nombre de Villa de León,10 recibió su nombre actual en 1830 en honor a los insurgentes Juan Aldama e Ignacio Aldama, quienes participaron en la guerra de Independencia de México.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"leon.jpg"];
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"Penjamo";
            self.lblMunicipioDetails.text   = @"(En purépecha Penlamu o Penxamo Lugar de árboles ahuehuetes o sabinos) es la ciudad cabecera del municipio homónimo, uno de los 46 municipios del Estado mexicano de Guanajuato";
            self.imgMunicipio.image   = [UIImage imageNamed:@"pejamo.jpg"];
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Salamanca";
            self.lblMunicipioDetails.text   = @"Fue fundada el 16 de agosto de 1602, en que se otorgó la Merced de Fundación por parte del entonces Virrey, Gaspar de Zúñiga y Acevedo, Quinto Conde de Monterrey, mientras que el 1 de enero de 1603 se elegía el primer cabildo de la nueva localidad que sería conocida a partir de ese momento bajo el nombre de Villa de Salamanca por el virrey Gaspar de Zúñiga y Acevedo.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"salamanca.jpg"];
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"Silao";
            self.lblMunicipioDetails.text   = @"En el lugar donde ahora se asienta el municipio de Silao, existió un poblado otomí que al ser conquistado por los purépechas recibió el nombre de Tzinacua, que en castellano significa Lugar de humaredasz pues en la comunidad de Aguas Buenas, de sus aguas termales se desprendían columnas de vapor. ";
            self.imgMunicipio.image   = [UIImage imageNamed:@"silao.jpg"];
        }
    }
    else if (self.estado == 2)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Chapala";
            self.lblMunicipioDetails.text   = @"En sus orígenes Chapala o Chapalingo fue un asentamiento prehispánico cuya antigüedad más remota es encontrada en el siglo XII de nuestra era, cuando una migración de tribus de origen náhuatl provenientes del noroeste del país, tocaron estas latitudes, encontrando la ribera norte del lago sumamente poblada, como lo refiere Fray Antonio Tello, fraile y cronista franciscano.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"chapala.jpg"];
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"San Juan de los Lagos";
            self.lblMunicipioDetails.text   = @"Fue Fray Antonio de Segovia primer evangelizador en este poblado, encomendando a Fray Miguel de Bolonia el cuidado pastoral de esas tierras, logrando pacificar la región, congregando a los errantes y refundando pueblos con indios ya cristianizados.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"san_juan_de_los_lagos.jpg"];
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"Tequila";
            self.lblMunicipioDetails.text   = @"El nombre de Tequila proviene de la palabra náhuatl Tekilan, (Lugar de los trabajadores). Es un pueblo mágico. Tequila es conocido por darle su nombre al tequila, al ser uno de los territorios donde éste se produce.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"tequila.jpg"];
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Tonala";
            self.lblMunicipioDetails.text   = @"Es un centro de artesanía, con reconocimiento nacional e internacional. Trabajan la alfarería, la cerámica a alta temperatura, hierro forjado, papel mache, repujado y vidrio soplado entre otros.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"tonala.jpg"];
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"Villa Hidalgo";
            self.lblMunicipioDetails.text   = @"Esta región pertenecía al cacicazgo de Teocaltech. Hacia el siglo VI de nuestra era hubo una irrupción de toltecas. Por el siglo XII, llegaron tribus chichimecas. Poco después vino la más grande peregrinación, la de los nahoas.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"villa_hidalgo.jpg"];
        }
    }
    else if (self.estado == 3)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Colon";
            self.lblMunicipioDetails.text   = @"Los otomíes habitaban estas tierras antes del siglo XVI, quienes llamaban a la región Hospadá. Alrededor de los siglos XIV y XV fueron desplazados al sur por los chichimecas jonaces.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"colon.jpg"];
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"Corregidora";
            self.lblMunicipioDetails.text   = @"Aunque territorialmente es uno de los municipios más pequeños de la entidad, es uno de los más ricos en cuanto a historia, cultura y tradiciones, pues en las inmediaciones de la cabecera se encuentra la zona arqueológica de El Cerrito, considerado como uno de los sitios prehispánicos más importante del centro de la República, por la monumentalidad de la pirámide principal, en la que se aprecia influencia de las culturas Teotihuacana y Tolteca.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"corregidora.jpg"];
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"El Marques";
            self.lblMunicipioDetails.text   = @"El Marqués es un municipio del estado mexicano de Querétaro. Su cabecera es la población de La Cañada, la cual está conurbada y se considera parte de la Zona Metropolitana de Querétaro. La mitad del Aeropuerto Internacional de Querétaro se encuentra dentro de este municipio y la otra en Colón.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"el_marques.jpg"];
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Queretaro";
            self.lblMunicipioDetails.text   = @"Esta ciudad nace bajo el amparo de la leyenda. Su fundación se ha manejado tradicionalmente como una obra del Poder Divino, como un milagro, y que bueno que así sea, pues esto le da un sabor mágico a nuestra Muy Noble y Leal Ciudad.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"queretaro_1.jpg"];
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"San Juan del Rio";
            self.lblMunicipioDetails.text   = @"En lo que ahora ocupa la superficie municipal de San Juan del Río, en la orilla del río que lleva el mismo nombre, se han encontrado vestigios de la antigua cultura Otomí con ascendencia de Chupícuaro, legados que indican que la zona fue habitada hacia el año 400 a.C. Los antiguos pobladores eran recolectores sedentarios; portadores de una cultura y forma de vida compleja.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"san_juan_del_rio.jpg"];
        }
    }
    else if (self.estado == 4)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Benito Juarez";
            self.lblMunicipioDetails.text   = @"Los mayas ocuparon el territorio que forma el municipio de Benito Juárez, subsisten de esta cultura, algunos monumentos arqueológicos, en Cancún se encuentran las ruinas de el Rey. A la llegada de los españoles, la Liga de Mayapán había desaparecido, dando lugar a cacicazgos independientes. Lo que hoy es Cancún era en aquella época un campamento de agricultores.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"benito_juarez.jpg"];
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"Cozumel";
            self.lblMunicipioDetails.text   = @"Cozumel (en yucateco: Kosom, Lumil, Golondrina, Tierra de  las golondrinas), es una isla mexicana, la tercera más grande y la segunda más poblada del país. Se ubica al este de México, en el mar Caribe";
            self.imgMunicipio.image   = [UIImage imageNamed:@"cozumel.jpg"];
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"Isla Mujeres";
            self.lblMunicipioDetails.text   = @"sla Mujeres fue descubierta por los españoles durante una expedición comandada por Francisco Hernández de Córdoba en el año de 1517. En tiempos prehispánicos la isla estaba consagrada a Ixchel, diosa maya de la Luna, el amor y la fertilidad, la cual recibía ofrendas con formas femeninas que los creyentes depositaban en sus playas.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"isla_mujeres.jpg"];
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Jose Maria Morelos";
            self.lblMunicipioDetails.text   = @"Tuvo su origen a mediados del Siglo XX, se inició como un campamento que se dedicaba a la explotación del chicle y las maderas preciosas de la selva que lo rodean, la mayoría de sus pobladores iniciales eran emigrantes de otros estados del país, llegado a Quintana Roo por la promoción que daba el gobierno a la colonización y desarrollo ecónómico del territorio";
            self.imgMunicipio.image   = [UIImage imageNamed:@"jose_maria_morelos.jpg"];
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"Lazaro Cardenas";
            self.lblMunicipioDetails.text   = @"El nombre proviene del General Lázaro Cárdenas del Río, Presidente de la República que restituyó la autonomía al Territorio Federal de Quintana Roo, cuando fue desmembrado y anexado a los estados de Yucatán y Campeche.";
            self.imgMunicipio.image   = [UIImage imageNamed:@"lazaro_cardenas.jpg"];
        }
    }
}
@end
