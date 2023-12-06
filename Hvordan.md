# -- Hvordan --

Jeg, Halvard Tislavoll har seinhaustes 2023 laget dette programmet som egen trening i Python programmering. Formålet er å bygge eit spill for barnebarna som er på besøk hos meg og kona mi, Marit. Jeg nytter anledningen til å takke henne for tolmodigheten hun har vist mot meg mens jeg 'bare' sitter og programmerer.

- Om programutviklingsprosessen
  
  - Scanne bilder
  
  - Prosjekt mapper
  
  - Opprette script
  
  - Python programmering
    
    - tkinter
    
    - debug
      
      - 1.utviklingstrinn - script decorasjon
      
      - 2.utviklingstrinn - globalvariabeltriks
      
      - 3.utviklingstrinn - modulavhengighet
      
      - 4.utviklingstrinn - programinformasjon
      
      - 5.utviklingstrinn - programstoppknapp
      
      - 6.utviklingstrinn - programpause

## Om programutviklingsprosessen

Først fikk jeg en ide. Denne ble formet i eit utkast, en tekstfil. Filen laget jeg ved hjelp av editoren Xed. Den enkle tekstbehandleren følger med operativsystemet Linuxmint.

Jeg har tatt utgangspunkt i eit gammelt brettspill som barna våre likte å leike med den gang da de var små. 

##### Scanne bilder

Det var lett å skanne inn bildene, men de måtte forbedres og tilpasses i størrelse. Til dette brukte jeg biledbehandlings programmet Gimp. Jeg hadde fire spillebrett med hver sine ni bildekort.

Nå hadde jeg 36 bilder til prosjektet. Temaet er hentet fra landbruket , og spillet som er utgitt av Dam, eid av Egmont bærer navnet "Bondegårdslotto". Så prosjektet mitt fikk navnet: "BondegårdsLotto" og jeg opprettet en folder med dette navnet med innledende "u_" siden det er under utvikling.  Siden jeg bor i Norge har jeg gitt spillet norsk språkdrakt. (Men i GitHub har jeg gitt namnet "Image Memory Game" siden det er det det hele handler om og jeg nytter engelsk språk i python skriptene mine.)

##### Prosjekt mapper

Jeg opprettet en subfolder med Navnet "/assets". I denne opprettet jeg to subfoldere; "lotto_graphics" til bildene, og "button_graphics" for widget grafikk. Dessuten lagret jeg også programutkastet, bondelotto.txt.

##### Opprette script

Da var jeg klar til å opprette programfilene mine. Jeg startet mitt verktøy PAGE - Python Automated GUI Generator. Her designet jeg GUI - Grafisk Bruker Interface for programmet. PAGE genererte en "gui" modul og en "support" modul for meg. 

##### Python programmering

Nå var jeg klar til å programmere i "support" modulen. Jeg må forholde meg til widgetene jeg har designet i PAGE, men heldigvis har PAGE også en .tcl fil som jeg kan bruke om jeg vil gå tilbake til PAGE og endre på mitt widget oppsett som GUI modulen inneholder. 

###### tkinter

Selv om PAGE er laget ved hjelp av programmeringsspråket Tcl, derav en .tcl file, er python modulene som blir generet reine python script. Disse nytter tkinter modulen som følger med Python programmet til grafisk framstilling.

Tkintersyntaks brukes når jeg programmerer mot mine widgets. 

Programmeringsteknologi med bruk av flere moduler gjør bruk av modul import viktig. Heldig vis gir Page meg nødvendig kode for å starte GUI og vise det frem på skjermen. 

###### debug

Dette gjør det enklere å utvikle programmet mitt. Jeg får ideer til utvikling. Disse formes i Python syntaks og skrives inn i "support"-scriptet mitt. Så kan jeg køyre scriptet for å teste. Finner jeg feil kan jeg debugge" ved å teste alternativ code som til dømes andre parametre for så å teste på ny. Slik holder jeg på til jeg får det til å fungere etter planen. Så kan jeg forsette med neste ide til utvikling. Men det er heile tiden viktig å følge hovudideen til programmet.

###### 1.utviklingstrinn - script decorasjon

Først setter jeg mitt private preg på scriptet.  Jeg lager overskrifter slik at det er lett å navigere og finne frem i coden. Jeg kaller hver decorasjon for section. Her er overskriftene jeg først setter in i scriptet:

```python
# =============================================================================
#
# Moduleimport section
# ~~~~~~~~~~~~~~~~~~~~~~
:
# =============================================================================
#
# Initial section
# ~~~~~~~~~~~~~~~~~
:
# =============================================================================
#
# Supporting section
# ~~~~~~~~~~~~~~~~~~~
:
# =============================================================================
#
# Callback section
# ~~~~~~~~~~~~~~~~~
:
# =============================================================================
#
# Main program
# =============================================================================
```

###### 2.utviklingstrinn - globalvariabeltriks

Utveksling av variabler mellom funksjoner og moduler i programmet er nødvendig. Til dette kan jeg bruke instruksen "global", eller jeg kan bruke variabelen som argument når jeg kaller funksjonen. Men jeg har lært av Greg D. Walter at jeg kan opprette et tomt python script og importere dette som en modul til bruk som globalt minneområde for variabler som skal brukes globalt i programmet. Men problemet er bare det at programmet kresjer dersom denne  filen ikke eksisterer når programmet starter opp. Og for å ungå dette har jeg utviklet en kode som jeg plasserer i modulimpport seksjonen av scriptet.

```python
#-----------------------------------------------------------
# Create an empty module and import while running the script
import os
module_name = "shared"   # empty_module
# Create the empty module file
with open(f"{module_name}.py", "w") as file:
    pass  # This creates an empty file
# Check if the file exists before importing
if os.path.isfile(f"{module_name}.py"):
    import importlib.util
    spec = importlib.util.spec_from_file_location(module_name, f"{module_name}.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
else:
    print(f"File '{module_name}.py' does not exist. Failed to import the module.")
sh=importlib   # sh is alias shared for short
#-----------------------------------------------------------
```



###### 3.utviklingstrinn - modulavhengighet

Jeg har plassert modulimport i oppstart av programmet mitt. Modulene er hentet fra Python interne moduler eller fra pypi.org. For å ungå at en bruker forsøker å starte programmet uten å ha installert nødvendige moduler har jeg valgt å pakke modulimporten i en try - except sløyfe slik at programmet kan informere brukeren om behov for modul installerering (pip install ..) 

```python
# Add some modules internal from Python:
from tkinter.messagebox import _show
from time import time   # time function used to calculate time
import platform
import datetime
import random
# Add somme External Modules from pypi.org Python Module Index using pip install ... :
try:
    import pyautogui
    from screeninfo import get_monitors
    from PIL import Image
    import numpy as np
    import imageio
except:
    print('Sorry, you must install this modules: (my ver.)')
    print('PyAutoGUI                 0.9.54')
    print('screeninfo                0.8.1')
    print('Pillow                    10.1.0')
    print('numpy                     1.26.2')
    print('imageio                   2.33.0')
```

Hvordan informere brukeren og ta respons underveis i programmet? Til dette bruker jeg tkinter sin messagebox. Som det går frem av scriptet har jeg gitt funksjonen navnet _show. 



###### 4.utviklingstrinn - programinformasjon

Jeg har lagt meg til den vanen at jeg programmerer at app'en skal kalle en funksjon som gir brukeren informasjon om programmet som kjøyrer i den Terminalen som køyrer skriptet ved oppstart. For å gjøre dette imorterer to hjelpemoduler i mobulimport seksjonen først.

```python
from time import time   # time function used to calculate time
import datetime
```

 Her er koden som gir informasjon i Terminalen

```python
    #------------------------------
    #    system info
    #------------------------------
def give_sysem_info():
    '''Write information about this Application'''
    # remember to update myFile !!!
    sh.decoration = 53
    # get system info
    py_f_name =    os.path.basename(sys.argv[0])
    current_path = os.path.abspath(__file__)
    py_version =   platform.python_version()
    author =       'Halvard Tislavoll'
    licence =      'MIT'
    current_time = datetime.datetime.now()
    sh.current_time_1 = f'{current_time.hour:02}:{current_time.minute:02}:{current_time.second}'
    # read this file and get page version on line 4
    myFile="./bondegaard_support.py"
    signal, all_text=read_text_file_lines(myFile)
    if signal:
        txt_lst=all_text.split('\n')
        sh.page_version=txt_lst[3][-4:]   # list out last of a function line, the "8.0G" from "... PAGE version 8.0G"
        # It is in line 4 but count from 0 it is 3
    else:
        print('Trouble, no _support file is found. Have you give the right name?')
    # print system info
    print()
    print(f'{current_time.year}-{current_time.month}-{current_time.day}')
    print(f'   GUI is constructed using page version {sh.page_version}')
    print(f'   Current path: {current_path}')
    print(f'   Python ver. : {py_version}')
    print(f'   File        : "{py_f_name}" is running')
    print(f'   Start time  : {sh.current_time_1}')
    print(f'   © Copyright : {author}, 2023')
    print(f'   Licence     : {licence}')
    print('-'*sh.decoration, '\n')
```

Denne funksjonen henter inn informasjon om PAGE versjon via scriptet sjølv. Til dette bruker jeg en funksjon"read_text_file_lines(myFile)" som er avhengig av å få navnet til scriptet som myFile. Teksten i MyFile blir gjennomgått og informasjon om PAGEversjon finnes på linje fire i scriptet. Her er textfil funksjonen som blir brukt:

```python
    #------------------------------
    #    I/O
    #------------------------------
def read_text_file_lines(filename):
    '''function which read text from file and return the
     file content in a string'''
    try:
        with open(filename, 'r') as f:
            f_text = f.read()
            signal = True   # Done.
            return signal, f_text
    except IOError:
        signal = False   # Something went wrong !!
        return signal, ''
```

Variabelen signal her er en status for hvordan fillesingen gikk. 



###### 5.utviklingstrinn - programstoppknapp

Då knappen "Avslutt" vart designa i PAGE sette eg "command"-attribut'en til "on_TBtnExit". Dette gjorde til at jeg fikk det meste av nødvendig code for callback generert av PAGE i supportmodulen. Jeg la bare til to linjer.

```python
def on_TBtnExit(*args):
    if _debug:
        print('bondegaard_support.on_TBtnExit')
        for arg in args:
            print ('    another arg:', arg)
        sys.stdout.flush()
    # Here starts my code
    cleanUp()
    sys.exit()
```

Legg merke til at jeg kaller cleanUp() før jeg avslutter. Her er coden for å rydde opp.

```python
    #------------------------------
    #    cleanup info
    #------------------------------
def cleanUp():
    '''Calculates the Time Spent and Notifies that the App is Finished.
       Can Optionally Remove Tempered Files.'''
    # import datetime
    print('='*sh.decoration, '\n')
    # give finish time
    current_time = datetime.datetime.now()
    current_time_2 = f'{current_time.hour:02}:{current_time.minute:02}:{current_time.second}'
    h1,m1,s1 = sh.current_time_1.split(':')
    h2,m2,s2 = current_time_2.split(':')
    tot_h=int(h2)-int(h1)
    tot_m=int(m2)-int(m1)
    tot_s=int(s2)-int(s1)
    if tot_s < 0:
        tot_m-=1
        tot_s=60+tot_s
    if tot_m < 0:
        tot_h-=1
        tot_m=60+tot_m
    tot_time=f'{tot_h:02}:{tot_m:02}:{tot_s:02}'
    print(f'   finish time : {current_time_2}')
    print('   time used   :', tot_time )
    remove_tmp_file()
    _show('Avslutt', 'Beklager!\nNå er spillet slutt.')
    print('Done.')
```

Her bruker jeg den importerte tkinter messagebox'en til å informere spilleren om at programmet er avsluttet.

Som en del av oppryddingsjobben fjerner jeg midlertidige filer laga under programkøyring. Til dette trenger jeg en funksjon som jeg har kalla "remove_tmp_file()" Den ser slik ut:

```python
def remove_tmp_file():
    '''removes share.py file created by the program while running'''
    filename = f"{module_name}.py"
    try:
        import os
        os.remove(filename)   # remove files
        print(f'   Temperary file is removed ')
    except:
        print(f'   Can not remove file: {filename}, sorry!')
```

###### 6.utviklingstrinn - programpause

Programmet trenger en funksjon som kan gi noen situasjoner en pause spm tildømes ved oppstart vil programmet ta en liten pause før første beskjeden vises. Her er min funksjon for å ta pausetid (t) målt i millisekunder.

```python
def a_break(t):
    '''take a break'''
    var = tk.IntVar()
    root.after(t, var.set, 1)
    root.wait_variable(var)
```
