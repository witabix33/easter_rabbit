// easter rabbit from a drawing


lapin_png="lapin.png";  // nom du fichier image. Changer d'image, y compris sa dimension requiert des règlages dans les modules lapin_part() 
lapin_couleur="red"; // couleur du lapin
lapin_echelle=0.30; // 1 = 100%
larg_baguette=7;     // largeur de la baguette = 7mm
base_hauteur_oeil=2;    // épaisseur base de support oeil
base_hauteur_corps=larg_baguette +2*base_hauteur_oeil;  // épaisseur base de support du corps


/*
 * module lapin_part()
 * dessine le lapin depuis l'image, avec un support pour l'oeil, et sans le socle généré par l'image
 * changer l'image nécessite de régler la suppression du socle image
 *
 */
module lapin_part() {
    // lapin sans le socle de l'image
    difference() {
        color(lapin_couleur)
            translate([0,0,9])
                scale([1,1,0.1])
                    surface(file = lapin_png, center = true, invert = true);
        translate([0,0,-3])
            cube([220,300,6], center=true); // supprimer socle généré
    }
    // support oeil
    color(lapin_couleur)
        translate([50,50,0]) 
            linear_extrude(base_hauteur_oeil) 
                scale([0.80,1,0]) circle(r=20);
    // support corps
    /** remplacé par une partie d'image en plein
    translate([-13,-59,0])
        linear_extrude(base_hauteur_corps) 
            scale([0.80,1,0]) circle(r=30);    
    translate([-12,-59,0])
        linear_extrude(base_hauteur_oeil) 
            circle(r=47);
    **/
}

/*
 * module fixation_hole(YPosition, aYHauteur)
 * Ce module réalise le perçage (par différence avec module fixation_part) pour permettre de fixer l'impression sur une baguette
 * aXPosition : Position du trou
 * aYPosition : Position du trou
 * aYHauteur : Hauteur du trou
 *
 */
module fixation_hole(aXPosition, aYPosition, aYHauteur) {
    epsilon=0.2; // marge de jeu
    translate([aXPosition,aYPosition,base_hauteur_oeil/2+larg_baguette/2+epsilon/2])
            cube([larg_baguette+epsilon,aYHauteur,larg_baguette+epsilon],center=true);
}

/*
 * module main_assembly()
 * assemblage final lapin mis à l'échelle + fixation
 * dans cette version, pas de fixation_support supplémentaire
 */
module main_assembly() {
    difference() {
        scale([lapin_echelle,lapin_echelle,1]) lapin_part();
        fixation_hole(aXPosition=-(larg_baguette)/2,aYPosition=-80*lapin_echelle, aYHauteur=64*lapin_echelle);    
    }
}
/* ------------------------------- */
// scale([lapin_echelle,lapin_echelle,1]) lapin_part();
main_assembly();
