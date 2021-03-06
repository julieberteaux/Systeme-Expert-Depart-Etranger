
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; INITIALISATION DE LA BASE DE REGLE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter *BF* '( (langue francais) (branche GI) (uvValidee LA13) (uvValidee LG62) (continent asie) (continent oceanie) (%_A/B 80) (%_E/F 10)))

(defparameter *BR* '((SI ( ( UVvalidee LA13) ) ALORS ( (langue anglais) ) )
             (SI ( ( UVvalidee LA14) ) ALORS ( (langue anglais) ) )
             (SI ( ( UVvalidee LB14) ) ALORS ( (langue anglais) ) )
             (SI ( ( UVvalidee LC14) ) ALORS ( (langue anglais) ) )
             (SI ( ( UVvalidee LD14) ) ALORS ( (langue anglais) ) )
             (SI ( ( UVvalidee LA03) ) ALORS ( (langue allemand) ) )
             (SI ( ( UVvalidee LA04) ) ALORS ( (langue allemand) ) )
             (SI ( ( UVvalidee LA23) ) ALORS ( (langue espagnol) ) )
             (SI ( ( UVvalidee LA24) ) ALORS ( (langue espagnol) ) ) 
             (SI ( ( UVvalidee LB24) ) ALORS ( (langue espagnol) ) ) 
             (SI ( ( UVvalidee LG31) ) ALORS ( (langue japonais) ) )
             (SI ( ( UVvalidee LG32) ) ALORS ( (langue japonais) ) )
             (SI ( ( UVvalidee LG41) ) ALORS ( (langue portugais) ) )
             (SI ( ( UVvalidee LG42) ) ALORS ( (langue portugais) ) )
             (SI ( ( UVvalidee LG51) ) ALORS ( (langue italien) ) )
             (SI ( ( UVvalidee LG52) ) ALORS ( (langue italien) ) )
             (SI ( ( UVvalidee LG53) ) ALORS ( (langue italien) ) )
             (SI ( ( UVvalidee LG60) ) ALORS ( (langue chinois) ) )
             (SI ( ( UVvalidee LG61) ) ALORS ( (langue chinois) ) )
             (SI ( ( UVvalidee LG62) ) ALORS ( (langue chinois) ) )
             (SI ( ( UVvalidee LG63) ) ALORS ( (langue chinois) ) )
             (SI ( (langue anglais) (continent europe) ) ALORS ( (pays angleterre) (pays bulgarie)(pays suede)(pays pologne)(pays roumanie)(pays slovaquie)(pays turquie) ) )
             (SI ( (langue anglais) (continent amerique) ) ALORS ( (pays usa)(pays canada) ) )
             (SI ( (langue anglais) (continent oceanie) ) ALORS ( (pays australie) ) )
             (SI ( (langue anglais) (continent asie) ) ALORS ( (pays singapour)(pays coree)(pays japon)(pays taiwan) ) )
             (SI ( (langue allemand) (continent europe) ) ALORS ( (pays allemagne) (pays autriche)(pays pays_bas)  ) )
             (SI ( (langue espagnol) (continent amerique) ) ALORS ( (pays argentine)(pays chili)(pays colombie)(pays equateur)(pays mexique) ) )
             (SI ( (langue espagnol) (continent europe) ) ALORS ( (pays espagne) ) )
             (SI ( (langue italien) (continent europe) ) ALORS ( (pays italie) ) )
             (SI ( (langue portugais) (continent amerique) ) ALORS ( (pays bresil) ) )
             (SI ( (langue chinois) (continent asie) ) ALORS ( (pays chine)(pays singapour)(pays taiwan) ) )
             (SI ( (langue francais) (continent europe) ) ALORS ( (pays belgique) ) )
             (SI ( (langue francais) (continent amerique) ) ALORS ( (pays canada) ) )
             (SI ( (langue japonais) (continent asie) ) ALORS ( ( pays japon ) ) )
             (SI ( (pays allemagne) (branche GI) ) ALORS ((univ teschnische_universitat_hamburg)) )
             (SI ( (pays allemagne) (branche GI) ) ALORS ((univ technische_universat_llmenau)))
             (SI ( (pays argentine) (branche GI) ) ALORS ((univ universidad_del_salvador)))
             (SI ( (pays australie) (branche GI) ) ALORS ((univ swinburne_university_of_technology)))
             (SI ( (pays autriche) (branche GI) ) ALORS ((univ technische_universat_graz)))
             (SI ( (pays belgique) (branche GI) ) ALORS ((univ universiteit_gent)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_minas_gerais)))
             (SI ( (pays bresil) (branche GI) ) ALORS ( (univ universidade_federal_de_campina_grande)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_estual_de_campinas)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_caxias_do_sul)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ pontificia_universidade_catolica_do_parana)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_do_parana)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_tecnologica_federal_do_parana)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_santa_catarina)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_itajuba)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_da_paraiba)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_lavras)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_estual_de_paraiba)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_pernambuco)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_rio_de_janeiro)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ instituto_nacional_de_telecommunicoes)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ escola_politecnica_de_sao_paulo)))
             (SI ( (pays bresil) (branche GI) ) ALORS ((univ universidade_federal_de_uberlandia)))
             (SI ( (pays bulgarie) (branche GI) ) ALORS ((univ technical_university_of_sofia)))
             (SI ( (pays bulgarie) (branche GI) ) ALORS ((univ university_of_chemical_engineering)))
             (SI ( (pays canada) (branche GI) ) ALORS ((univ universite_du_quebec_a_chicoutimie)))
             (SI ( (pays canada) (branche GI) ) ALORS ((univ universite_laval)))
             (SI ( (pays canada) (branche GI) ) ALORS ((univ ecole_de_technologie_superieure_de_montreal)))
             (SI ( (pays canada) (branche GI) ) ALORS ((univ polytechnique_montreal)))
             (SI ( (pays canada) (branche GI) ) ALORS ((univ universite_de_sherbrooke)))
             (SI ( (pays chili) (branche GI) ) ALORS ((univ universidad_arturo_prat)))
             (SI ( (pays espagne) (branche GI) ) ALORS ((univ universidad_de_lleida)))
             (SI ( (pays italie) (branche GI) ) ALORS ((univ universita_della_calabria)))
             (SI ( (pays usa) (branche GI) ) ALORS ((univ georgia_institute_of_technology)))
             (SI ( (pays usa) (branche GI) ) ALORS ((univ university_of_texas_rio_grande_valley)))
             (SI ( (pays usa) (branche GI) ) ALORS ((univ university_of_rhode_island)))
             (SI ( (pays usa) (branche GI) ) ALORS ((univ university_of_illinois_at_urbana_champaign)))
             (SI ( (pays singapour) (branche GI) ) ALORS ((univ nanyang_technological_university)))
             (SI ( (pays suede) (branche GI) ) ALORS ((univ linkoping_university_of_technology)))
             (SI ( (pays chili) (branche GI) ) ALORS ((univ pontificia_universidad_catolica_de_valparaiso)))
             (SI ( (pays chili) (branche GI) ) ALORS ((univ universidad_technica_frederico_santa_maria)))
             (SI ( (pays colombie) (branche GI) ) ALORS ((univ escuela_colombiana_de_ingenieria)))
             (SI ( (pays colombie) (branche GI) ) ALORS ((univ universidad_autonoma_de_bucaramanga)))
             (SI ( (pays colombie) (branche GI) ) ALORS ((univ universidad_eafit)))
             (SI ( (pays coree) (branche GI) ) ALORS ((univ pohang_university_of_science_and_technology)))
             (SI ( (pays coree) (branche GI) ) ALORS ((univ hanyang_university)))
             (SI ( (pays equateur) (branche GI) ) ALORS ((univ escuela_politecnica_nacional_de_quito)))
             (SI ( (pays espagne) (branche GI) ) ALORS ((univ universidad_autonoma_de_barcelona)))
             (SI ( (pays espagne) (branche GI) ) ALORS ((univ universidad_politecnica_de_madrid)))
             (SI ( (pays espagne) (branche GI) ) ALORS ((univ universidad_de_murcia)))
             (SI ( (pays espagne) (branche GI) ) ALORS ((univ universidad_rovira_i_virgili)))
             (SI ( (pays italie) (branche GI) ) ALORS ((univ universita_di_bologna)))
             (SI ( (pays italie) (branche GI) ) ALORS ((univ politecnico_di_milano)))
             (SI ( (pays italie) (branche GI) ) ALORS ((univ universita_degli_studi_modena_e_regio_emilia)))
             (SI ( (pays italie) (branche GI) ) ALORS ((univ universita_degli_studi_di_napoli_frederico_li)))
             (SI ( (pays japon) (branche GI) ) ALORS ((univ chiba_institute_of_technology)))
             (SI ( (pays japon) (branche GI) ) ALORS ((univ chiba_university)))
             (SI ( (pays japon) (branche GI) ) ALORS ((univ ritsumeikan_university)))
             (SI ( (pays japon) (branche GI) ) ALORS ((univ wakayama_university)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ universidad_autonoma_de_aguascalientes)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ universidad_de_guanajuato) ))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ universidad_anahuac_mayab)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ instituto_politecnico_nacional)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ tec_de_monterrey)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ universidad_iberoamericana)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ upaep)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ itesm_san_luis_potosi)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ itesm_toluca)))
             (SI ( (pays mexique) (branche GI) ) ALORS ((univ instituto_technologico_de_zacatepec)))
             (SI ( (pays pays_bas) (branche GI) ) ALORS ((univ university_twente)))
             (SI ( (pays pologne) (branche GI) ) ALORS ((univ lodz_university_technology)))
             (SI ( (pays chine) (branche GI) ) ALORS ((univ tianjin_university_technology)))
             (SI ( (pays roumanie) (branche GI) ) ALORS ((univ universite_de_craiova)))
             (SI ( (pays singapour) (branche GI) ) ALORS ((univ national_university_of_singapore)))
             (SI ( (pays slovaquie) (branche GI) ) ALORS ((univ technical_university_of_kosice)))
             (SI ( (pays taiwan) (branche GI) ) ALORS ((univ national_chiao_tung_university)))
             (SI ( (pays turquie) (branche GI) ) ALORS ((univ atilim_university)))
             (SI (( <= place 6)  (<= %_A/B 30)) ALORS ((accessibilite dure)) )
             (SI (( > place 6) (<= place 12) (<= %_A/B 30)) ALORS ((accessibilite moyenne)) )
             (SI ((> place 12) (<= %_A/B 30)) ALORS ((accessibilite moyen)) )
             (SI ((<= place 6) (> %_A/B 30) (<= %_A/B  60)) ALORS ((accessibilite moyenne)) )
             (SI ((> place 6) (<= place 12) (> %_A/B 30) (<= %_A/B  60)) ALORS ((accessibilite moyenne)) )
             (SI ((> place 12) (> %_A/B 30) (<= %_A/B  60))  ALORS ((accessibilite facile)) )
             (SI ((<= place 6) (> %_A/B 60)) ALORS ((accessibilite facile)) )
             (SI (( > place 6) (<= place 12) (> %_A/B 60)) ALORS ((accessibilite facile)) )
             (SI ((> place 12) ( >%_A/B 60)) ALORS ((accessibilite facile)) )

                     )
  )
