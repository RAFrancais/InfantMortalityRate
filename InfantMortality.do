*Infant Mortality
use "C:\Users\RichardFrancais\Desktop\hdev300.dta"
summ InfantMortalityRateper1000 MedianHHincome Ginicoefficient Physicianper100k Obesityrate
corr InfantMortalityRateper1000 MedianHHincome Ginicoefficient Physicianper100k Obesityrate
reg InfantMortalityRateper1000 MedianHHincome Ginicoefficient NumberofPhysicians
reg InfantMortalityRateper1000 MedianHHincome Ginicoefficient NumberofPhysicians Obesityrate
reg InfantMortalityRateper1000 MedianHHincome Ginicoefficient NumberofPhysicians Obesityrate, robust
estat hettest
reg InfantMortalityRateper1000 MedianHHincome Ginicoefficient NumberofPhysicians Obesityrate
rvfplot, yline(0)
ovtest
vif
