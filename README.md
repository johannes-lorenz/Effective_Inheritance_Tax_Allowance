# Der effektive Wert des erbschaftsteuerlichen Freibetrags – Entwicklung einer Referenzgröße als Basis für normative Diskussionen 

Python- und R-Code zu der Veröffentlichung von Diller/Kittl/Lorenz in der Zeitschrift Steuer und Wirtschaft (StuW), 2021.

Die Berechnungen basieren insb. auf den vom Statistischen Bundesamt veröffentlichten Periodensterbetafeln für Deutschland 2018/2020. 


<ul>
	<li>Erster Schritt: R code (Ordner: R_code) ausführen, um die Sterbewahrscheinlichkeiten für hohe Alter (bis 112) zu schätzen. Das Statistische Bundesamt stellt nur die Daten bis Alter 100 zur Verfügung. Die Daten werden als csv-Dateien in dem Ordner 2_temp_files gespeichert.</li>
	<li>Zweiter Schritt: Python code (Ordner 1_code) ausführen (am besten in Jupyter Lab) um die effektiven erbschaftsteuerlichen Freibeträge zu berechnen.</li>
</ul>


--Die Autoren


# The effective value of the German inheritance tax allowance – development of a reference value as a basis for normative discussions

This repository contains python and R code for the aforementioned study (forthcoming in “Steuer und Wirtschaft”; the article is written in German language). 

Calculations are based on mortality rates of German citizens as published by the German Federal Statistical Office. 


<ul>
	<li>First step: run the R code (folder: R_code) to extend the mortality rates for high ages (up to 112). The German Federal Statistical Office only provides data for ages up to 100. Results are saved in the folder 2_temp_files as csv files.</li>
	<li>Second step: run the python code (folder 1_code; we use Jupyter Lab) to estimate effective inheritance tax allowances.</li>
</ul>

-- The authors