# working directory festlegen

setwd("/Users/johannes/GitHub/Effective_Inheritance_Tax_Allowance")

# benötigte Pakete laden
library(readxl)
library(MortalityLaws)


# bekannte Werte für Frauen laden und erste drei Zeilen löschen
SterbetafelW <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Deutschland weiblich", range = "D13:H116")
SterbetafelW <- SterbetafelW[-1,]
SterbetafelW <- SterbetafelW[-1,]

# ggf. Sterbetafel für Frauen anzeigen
#View(SterbetafelW)



# bekannte Werte für Männer laden und erste zwei Zeilen löschen
SterbetafelM <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Deutschland männlich", range = "D13:H116")
SterbetafelM <- SterbetafelM[-1,]
SterbetafelM <- SterbetafelM[-1,]

# ggf. Sterbetafel für Männer anzeigen
#View(SterbetafelM)




# Kannisto-Makeham-Modell für Männer anpassen; verwende Jahre von 70 bis 90
M1M = MortalityLaw( x = 70:90, qx = SterbetafelM$"q x"[71:91], law='kannisto_makeham')

# ggf. Zusammenfassung der Anpassung anzeigen
summary(M1M)


# forecasting für Männer
M1Mresult <- predict(M1M, x = 98:112)
#View(M1Mresult)


# Kannisto-Makeham-Modell für Frauen anpassen; verwende Jahre von 70 bis 90
M1W = MortalityLaw( x = 70:90, qx = SterbetafelW$"q x"[71:91], law='kannisto_makeham')
summary(M1W)

# forecasting für Frauen
M1Wresult <- predict(M1W, x = 97:112)


# forecasting für Männer in csv-Datei schreiben
write.csv(M1Mresult, file="2_temp_files/Männer.csv")

# forecasting für Frauen in csv-Datei schreiben
write.csv(M1Wresult, file="2_temp_files/Frauen.csv")






# Hier für Ost- und Westdeutschland
SterbetafelWWessi <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Westdeutschland weiblich", range = "D13:H116")
SterbetafelWWessi <- SterbetafelWWessi[-1,]
SterbetafelWWessi <- SterbetafelWWessi[-1,]
M1WWessi = MortalityLaw( x = 70:90, qx = SterbetafelWWessi$"q x"[71:91], law='kannisto_makeham')
M1WWessiresult <- predict(M1WWessi, x = 97:112)
write.csv(M1WWessiresult, file="2_temp_files/Frauen_West.csv")

SterbetafelWOssi <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Ostdeutschland weiblich", range = "D13:H116")
SterbetafelWOssi <- SterbetafelWOssi[-1,]
SterbetafelWOssi <- SterbetafelWOssi[-1,]
M1WOssi = MortalityLaw( x = 70:90, qx = SterbetafelWOssi$"q x"[71:91], law='kannisto_makeham')
M1WOssiresult <- predict(M1WOssi, x = 97:112)
write.csv(M1WOssiresult, file="2_temp_files/Frauen_Ost.csv")

SterbetafelMWessi <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Westdeutschland männlich", range = "D13:H116")
SterbetafelMWessi <- SterbetafelMWessi[-1,]
SterbetafelMWessi <- SterbetafelMWessi[-1,]
M1MWessi = MortalityLaw( x = 70:90, qx = SterbetafelMWessi$"q x"[71:91], law='kannisto_makeham')
M1MWessiresult <- predict(M1MWessi, x = 98:112)
write.csv(M1MWessiresult, file="2_temp_files/Männer_West.csv")

SterbetafelMOssi <- read_excel("0_data/periodensterbetafeln-bundeslaender-5126204207005.xlsx", sheet = "Ostdeutschland männlich", range = "D13:H116")
SterbetafelMOssi <- SterbetafelMOssi[-1,]
SterbetafelMOssi <- SterbetafelMOssi[-1,]
M1MOssi = MortalityLaw( x = 70:90, qx = SterbetafelMOssi$"q x"[71:91], law='kannisto_makeham')
M1MOssiresult <- predict(M1MOssi, x = 98:112)
write.csv(M1MOssiresult, file="2_temp_files/Männer_Ost.csv")

