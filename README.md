# Der effektive Wert des erbschaftsteuerlichen Freibetrags – Entwicklung einer Referenzgröße als Basis für normative Diskussionen 

Python- und R-Code zu der Veröffentlichung von Diller/Kittl/Lorenz in der Zeitschrift Steuer und Wirtschaft (StuW) 2021 (4), S. 337.

Die Berechnungen basieren insb. auf den vom Statistischen Bundesamt veröffentlichten Periodensterbetafeln für Deutschland 2018/2020. 


<ul>
	<li>Erster Schritt: R-code (Ordner: R_code) ausführen, um die Sterbewahrscheinlichkeiten für hohe Alter (bis 112) zu schätzen (das Statistische Bundesamt stellt nur die Daten bis Alter 100 zur Verfügung). Die Daten werden als csv-Dateien in dem Ordner 2_temp_files gespeichert.</li>
	<li>Zweiter Schritt: Python-code (Ordner 1_code) ausführen (wir verwenden Jupyter Lab), um die effektiven erbschaftsteuerlichen Freibeträge zu berechnen.</li>
	<li>Im o.g. Aufsatz wird ebenfalls angegeben, welcher Anteil der Bevölkerung über ein ausreichendes Vermögen verfügt, um die effektiven erbschaftsteuerlichen Freibeträge (vollständig) nutzen zu können. Hierfür haben wir Daten des SOEP verwendet, die auf Anfrage <a href="https://www.diw.de/en/diw_01.c.678568.en/research_data_center_soep.html">hier</a> erhältlich sind.</li>
</ul>


–Die Autoren


# The effective value of the German inheritance tax allowance – development of a reference value as a basis for normative discussions

This repository contains python and R code for the aforementioned study (published in Steuer und Wirtschaft (StuW) 2021(4), p. 337; the article is written in German language). 

Calculations are based on mortality rates of German citizens as published by the German Federal Statistical Office. 


<ul>
	<li>First step: run the R code (folder: R_code) to extend the mortality rates for high ages (up to 112). (The German Federal Statistical Office only provides data for ages up to 100.) Results are saved in the folder 2_temp_files as csv files.</li>
	<li>Second step: run the python code (folder 1_code; we use Jupyter Lab) to estimate effective inheritance tax allowance.</li>
	<li>In our paper we also state which share of the population has sufficient assets to (fully) benefit from the effective inheritance tax allowance. To do so, we use SOEP data which is available <a href="https://www.diw.de/en/diw_01.c.678568.en/research_data_center_soep.html">here</a> upon request.</li>
</ul>

–The authors