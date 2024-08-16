/*	Estimacion de la probabilidad de participación de las mujeres en el mercado laboral
	Variables de dependientes que requieren cuidados: pam80 k6 k14 dumcronic 
	(enero 2024) 	*/

global rutaup 		"C:\Users\usuario\OneDrive\Stata"
global rutasave		"D:\clase\Boletin-maternidad\excels"

use "$rutaup\enaho_total_2016_2022.dta", clear


*Modelo 1: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
probit participa p208a educa if p207==2 & p208a>=18 & p208a<=65
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')  alpha(.01, .05, .1) addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 
	
probit participa  p208a educa pam80 k6 k14 if p207==2 & p208a>=18 & p208a<=50
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 dumcronic if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho valquiler if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_1.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 


*Modelo 2: Mujeres entre 18 y 65 años del área URBANA
*=======================================================================
probit participa  p208a educa pam80 k6 k14 if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  p208a educa pareja pam80 k6 k14 if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 dumcronic if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 dumcronic percepho if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho valquiler if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_2.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 



*Extra: PAM mayor 65 años
*=======================================================================
probit participa  p208a educa pam65 k6 k14 if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  p208a educa pareja pam65 k6 k14 if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam65 k6 k14 dumcronic if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam65 k6 k14 percepho if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam65 k6 k14 dumcronic percepho if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam65 k6 k14 percepho valquiler if p207==2 & p208a>=18 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_3.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 	




*Modelo 4: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14
	
probit participa  $individua vagua if p207==2 & p208a>=18 & p208a<=65
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  $individua vagua if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua dumcronic if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua percepho if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler art1_cocina art2_refri art3_lavadora art4_licuadora if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua vgas percepho valquiler art1_cocina art2_refri art3_lavadora art4_licuadora if p207==2 & p208a>=18 & p208a<=65 
outreg2 using "$rutasave\Cuadro\Cuadro_5_4.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 



*Modelo 4: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14
	
	
forvalues x=1/1 {	
probit participa  $individua vagua 		if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  $individua vagua	 if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua dumcronic	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua percepho	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler art1_cocina art2_refri art3_lavadora art4_licuadora  		if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua vgas percepho valquiler art1_cocina art2_refri art3_lavadora art4_licuadora 	if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_4q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}



*=======================================================================
global individua p208a educa pam80 k6 k14 pam65fem pareja

	
probit participa  $individua vagua 		if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  $individua vagua	 if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua dumcronic	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua percepho	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler tcasa  		if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler tcasafem 		if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_6q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

}

*Modelo 7: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14 pam65fem pareja

probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_7q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_7q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}

*Modelo 7A: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14 pam65fem pareja

probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_7aq.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_7aq.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}


*Modelo 7B: Mujeres entre 18 y 65 años del área nacional (area de residencia)
*=======================================================================
global individua p208a educa pam80 k6 k14 pam65fem pareja urbano

probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_7bq.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler tcasafem  if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_7bq.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}


*Modelo 8: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14 pam65fem pareja 

probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_8q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_8q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}
  
  
*Modelo 9: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k3 k14 pam65fem pareja

*total nacional
probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=65  

probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_9q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_9q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}



*Modelo 10: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14  pareja

*total nacional
probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=45  

probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=45  & quintil_hog==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_10q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

forvalues x=2/5 {
probit participa  $individua vagua percepho valquiler   if p207==2 & p208a>=18 & p208a<=45  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_10q.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}

 
*Modelo 5: Mujeres entre 18 y 65 años del área nacional
*=======================================================================
global individua p208a educa pam80 k6 k14 pareja
	
	
forvalues x=5/5 {	
probit participa  $individua vagua 		if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  $individua vagua	 if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua dumcronic	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa $individua vagua percepho	 if p207==2 & p208a>=18 & p208a<=65 & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua percepho valquiler art1_cocina art2_refri art3_lavadora   		if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  $individua vagua vgas22 percepho valquiler art1_cocina art2_refri art3_lavadora  	if p207==2 & p208a>=18 & p208a<=65  & quintil_hog==`x'
outreg2 using "$rutasave\Cuadro\Cuadro_5_5q`x'.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 
}


*Modelo 3: Mujeres entre 30 y 65 años del área URBANA
*=======================================================================
probit participa  p208a educa pam80 k6 k14 if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')  alpha(.01, .05, .1)  addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) replace excel 

probit participa  p208a educa pareja pam80 k6 k14 if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 dumcronic if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 dumcronic percepho if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 

probit participa  p208a educa pareja pam80 k6 k14 percepho valquiler if p207==2 & p208a>=30 & p208a<=65 & urbano==1
outreg2 using "$rutasave\Cuadro\Cuadro_5_5.xls", cttop(`x')   addstat(Wald,e(chi2),Prob-chi2,e(p)) stats(coef tstat) append excel 