/*  
   Copyright (C) 2009, 2010 Matt Reba, Jeremiah Dillingham

    This file is part of BrewTroller.

    BrewTroller is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    BrewTroller is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with BrewTroller.  If not, see <http://www.gnu.org/licenses/>.


BrewTroller - Open Source Brewing Computer
Software Lead: Matt Reba (matt_AT_brewtroller_DOT_com)
Hardware Lead: Jeremiah Dillingham (jeremiah_AT_brewtroller_DOT_com)

Documentation, Forums and more information available at http://www.brewtroller.com
*/

#ifndef NOUI

//*****************************************************************************************************************************
// Begin UI Code
//*****************************************************************************************************************************


//**********************************************************************************
// UI Definitions
//**********************************************************************************
#define SCREEN_HOME 0
#define SCREEN_FILL 1
#define SCREEN_MASH 2
#define SCREEN_SPARGE 3
#define SCREEN_BOIL 4
#define SCREEN_CHILL 5
#define SCREEN_AUX 6

//**********************************************************************************
// UI Strings
//**********************************************************************************
const char OK[] PROGMEM = "Ok";
const char CANCEL[] PROGMEM = "Cancel";
const char EXIT[] PROGMEM = "Exit";
const char ABORT[] PROGMEM = "Abort";
const char MENU[] PROGMEM = "Menu";
const char SPACE[] PROGMEM = " ";
const char INIT_EEPROM[] PROGMEM = "Initialize EEPROM";
const char CONTINUE[] PROGMEM = "Continue";

prog_char FILLHLT[] PROGMEM = "Fill HLT";
prog_char FILLMASH[] PROGMEM = "Fill Mash";
prog_char ADDGRAIN[] PROGMEM = "Add Grain";
prog_char MASHHEAT[] PROGMEM = "Mash Heat";
prog_char MASHIDLE[] PROGMEM = "Mash Idle";
prog_char SPARGEIN[] PROGMEM = "Sparge In";
prog_char SPARGEOUT[] PROGMEM = "Sparge Out";
prog_char BOILADDS[] PROGMEM = "Boil Additions";
prog_char KETTLELID[] PROGMEM = "Kettle Lid";
prog_char CHILLH2O[] PROGMEM = "Chill H2O";
prog_char CHILLBEER[] PROGMEM = "Chill Beer";
prog_char BOILRECIRC[] PROGMEM = "Boil Recirc";
prog_char DRAIN[] PROGMEM = "Drain";
prog_char HLTHEAT[] PROGMEM = "HLT Heat";
prog_char HLTIDLE[] PROGMEM = "HLT Idle";
prog_char KETTLEHEAT[] PROGMEM = "Kettle Heat";
prog_char KETTLEIDLE[] PROGMEM = "Kettle Idle";
prog_char USER1[] PROGMEM = "User Valve 1";
prog_char USER2[] PROGMEM = "User Valve 2";
prog_char USER3[] PROGMEM = "User Valve 3";

prog_char DOUGHIN[] PROGMEM = "Dough In:";
prog_char ACID[] PROGMEM = "Acid Rest:";
prog_char PROTEIN[] PROGMEM = "Protein Rest:";
prog_char SACCH[] PROGMEM = "Sacch Rest:";
prog_char SACCH2[] PROGMEM = "Sacch2 Rest:";
prog_char MASHOUT[] PROGMEM = "Mash Out:";

PROGMEM const char *TITLE_MASHSTEP[] = {
  DOUGHIN,
  ACID,
  PROTEIN,
  SACCH,
  SACCH2,
  MASHOUT
};

PROGMEM const char *TITLE_VLV[] = {
  FILLHLT,
  FILLMASH,
  ADDGRAIN,
  MASHHEAT,
  MASHIDLE,
  SPARGEIN,
  SPARGEOUT,
  BOILADDS,
  KETTLELID,
  CHILLH2O,
  CHILLBEER,
  BOILRECIRC,
  DRAIN,
  HLTHEAT,
  HLTIDLE,
  KETTLEHEAT,
  KETTLEIDLE,
  USER1,
  USER2,
  USER3
};

const char ALLOFF[] PROGMEM = "All Off";
const char FILLBOTH[] PROGMEM = "Fill Both";
const char FLYSPARGE[] PROGMEM = "Fly Sparge";
const char CHILLNORM[] PROGMEM = "Chill Both";

#ifndef UI_NO_SETUP
  prog_char TITLE_VS_HLT[] PROGMEM = "HLT";
  prog_char TITLE_VS_MASH[] PROGMEM = "Mash";
  prog_char TITLE_VS_KETTLE[] PROGMEM = "Kettle";
  
  #ifdef PID_FLOW_CONTROL
    prog_char TITLE_VS_PUMP[] PROGMEM = "Pump";
  #elif defined USESTEAM
    prog_char TITLE_VS_STEAM[] PROGMEM = "Steam";
  #endif
  
  PROGMEM const char *TITLE_VS[] = {
    TITLE_VS_HLT,
    TITLE_VS_MASH,
    TITLE_VS_KETTLE
    
    #ifdef PID_FLOW_CONTROL
      , TITLE_VS_PUMP
    #elif defined USESTEAM
      , TITLE_VS_STEAM
    #endif
  };
  
  const char PIDCYCLE[] PROGMEM = " PID Cycle";
  const char PIDGAIN[] PROGMEM = " PID Gain";
  const char HYSTERESIS[] PROGMEM = " Hysteresis";
  
  #ifdef PID_FLOW_CONTROL
    const char PUMPFLOW[] PROGMEM = "Pump Flow Rate";
  #elif defined USESTEAM
    const char STEAMPRESS[] PROGMEM = "Steam Target";
    const char STEAMSENSOR[] PROGMEM = "Steam Sensor Sens";
    const char STEAMZERO[] PROGMEM = "Steam Zero Calib";
  #endif



  const char CAPACITY[] PROGMEM = " Capacity";
  const char DEADSPACE[] PROGMEM = " Dead Space";
  const char CALIBRATION[] PROGMEM = " Calibration";
#endif

const char HLTDESC[] PROGMEM = "Hot Liquor Tank";
const char MASHDESC[] PROGMEM = "Mash Tun";
const char SEC[] PROGMEM = "s";
#ifdef USEMETRIC
const char VOLUNIT[] PROGMEM = "l";
const char WTUNIT[] PROGMEM = "kg";
const char TUNIT[] PROGMEM = "C";
#ifdef PID_FLOW_CONTROL
const char PUNIT[] PROGMEM = "0.1*l/m";
#else
const char PUNIT[] PROGMEM = "kPa";
#endif
#else
const char VOLUNIT[] PROGMEM = "gal";
const char WTUNIT[] PROGMEM = "lb";
const char TUNIT[] PROGMEM = "F";
#ifdef PID_FLOW_CONTROL
const char PUNIT[] PROGMEM = "0.1*q/m";
#else
const char PUNIT[] PROGMEM = "psi";
#endif
#endif

//**********************************************************************************
// UI Custom LCD Chars
//**********************************************************************************
const byte CHARFIELD[] PROGMEM = {B11111, B00000, B00000, B00000, B00000, B00000, B00000, B00000};
const byte CHARCURSOR[] PROGMEM = {B11111, B11111, B00000, B00000, B00000, B00000, B00000, B00000};
const byte CHARSEL[] PROGMEM = {B10001, B11111, B00000, B00000, B00000, B00000, B00000, B00000};

#ifdef LOGO_TROLL
const byte BMP0[] PROGMEM = {B00000, B00000, B00000, B00000, B00011, B01111, B11111, B11111};
const byte BMP1[] PROGMEM = {B00000, B00000, B00000, B00000, B11100, B11110, B11111, B11111};
const byte BMP2[] PROGMEM = {B00001, B00011, B00111, B01111, B00001, B00011, B01111, B11111};
const byte BMP3[] PROGMEM = {B11111, B11111, B10001, B00011, B01111, B11111, B11111, B11111};
const byte BMP4[] PROGMEM = {B01111, B01110, B01100, B00001, B01111, B00111, B00011, B11101};
const byte BMP5[] PROGMEM = {B11111, B00111, B00111, B11111, B11111, B11111, B11110, B11001};
const byte BMP6[] PROGMEM = {B11111, B11111, B11110, B11101, B11011, B00111, B11111, B11111};
#endif

#ifdef LOGO_BREWTROLLER
const byte BMP0[] PROGMEM = {B00000, B00000, B00000, B11111, B10001, B10001, B11111, B00001};
const byte BMP1[] PROGMEM = {B00000, B00000, B00000, B00000, B00000, B00011, B01100, B01111};
const byte BMP2[] PROGMEM = {B00000, B00000, B00000, B00000, B00000, B11100, B00011, B11111};
const byte BMP3[] PROGMEM = {B00100, B01100, B01111, B00111, B00100, B01100, B01111, B00111};
const byte BMP4[] PROGMEM = {B00010, B00011, B11111, B11110, B00010, B00011, B11111, B11110};
#endif

const byte UNLOCK_ICON[] PROGMEM = {B00110, B01001, B01001, B01000, B01111, B01111, B01111, B00000};
const byte PROG_ICON[] PROGMEM = {B00001, B11101, B10101, B11101, B10001, B10001, B00001, B11111};
const byte BELL[] PROGMEM = {B00100, B01110, B01110, B01110, B11111, B00000, B00100, B00000};

//**********************************************************************************
// UI Globals
//**********************************************************************************
byte activeScreen;
boolean screenLock;
unsigned long timerLastPrint;
boolean doInit = 1;

//**********************************************************************************
// uiInit:  One time intialization of all UI logic
//**********************************************************************************
void uiInit() {
  LCD.init();
   
  #ifndef ENCODER_I2C
    #ifndef ENCODER_OLD_CONSTRUCTOR
      Encoder.begin(ENCODER_TYPE, ENTER_PIN, ENCA_PIN, ENCB_PIN);
    #else
      Encoder.begin(ENCODER_TYPE, ENTER_PIN, ENCA_PIN, ENCB_PIN, ENTER_INT, ENCA_INT);
    #endif
    #ifdef ENCODER_ACTIVELOW
      Encoder.setActiveLow(1);
    #endif
  #else
     Encoder.begin(ENCODER_I2CADDR);
  #endif



  //Check to see if EEPROM Initialization is needed
  if (checkConfig()) {
    LCD.clear();
    LCD.print_P(0, 0, PSTR("Missing Config"));
    if (confirmChoice(INIT_EEPROM, 3)) UIinitEEPROM();
    LCD.clear();
  }

  setActive(SCREEN_HOME);
  unlockUI();
}

void UIinitEEPROM() {
  LCD.clear();
  LCD.print_P(1, 0, INIT_EEPROM);
  LCD.print_P(2, 3, PSTR("Please Wait..."));
  LCD.update();
  initEEPROM();
  //Apply any EEPROM updates
  checkConfig();
}

void uiEvent(byte eventID, byte eventParam) {
  if (eventID == EVENT_STEPINIT) {
    if (eventParam == STEP_FILL 
      || eventParam == STEP_REFILL
    ) setActive(SCREEN_FILL);
    else if (eventParam == STEP_DELAY
      || eventParam == STEP_PREHEAT
      || eventParam == STEP_DOUGHIN
      || eventParam == STEP_ACID
      || eventParam == STEP_PROTEIN
      || eventParam == STEP_SACCH
      || eventParam == STEP_SACCH2
      || eventParam == STEP_MASHOUT
      || eventParam == STEP_MASHHOLD
    ) setActive(SCREEN_MASH);
    else if (eventParam == STEP_ADDGRAIN
      || eventParam == STEP_SPARGE
    ) setActive(SCREEN_SPARGE);
    else if (eventParam == STEP_BOIL) setActive(SCREEN_BOIL);
    else if (eventParam == STEP_CHILL) setActive(SCREEN_CHILL);
  }
  else if (eventID == EVENT_STEPEXIT) doInit = 1;
}

//**********************************************************************************
// unlockUI:  Unlock active screen to select another
//**********************************************************************************
void unlockUI() {
  Encoder.setMin(SCREEN_HOME);
  Encoder.setMax(SCREEN_AUX);
  Encoder.setCount(activeScreen);
  screenLock = 0;
  //Reinit screen to show unlock icon hide parts not visible while locked
  doInit = 1;
}

void lockUI() {
  screenLock = 1;
  //Recall screenInit to setup encoder and other functions available only when locked
  doInit = 1;
}

//**********************************************************************************
// screenCore: Called in main loop to handle all UI functions
//**********************************************************************************
void uiCore() {
  if (estop) uiEstop();
  if (!screenLock) {
    int encValue = Encoder.change();
    if (encValue >= 0) {
      setActive(encValue);
    }
  }
  if (doInit) {
    screenInit();
    doInit = 0;
  }
  screenEnter();
  screenRefresh();
}

void setActive(byte screen) {
  activeScreen = screen;
  doInit = 1;
}

//**********************************************************************************
// screenInit: Initialize active screen
//**********************************************************************************
void screenInit() {
  LCD.clear();
  LCD.setCustChar_P(7, UNLOCK_ICON);
  
  //Print Program Active Char (Overwritten if no program active)
  if (activeScreen != SCREEN_HOME) {
    LCD.setCustChar_P(6, PROG_ICON);
    LCD.writeCustChar(0, 0, 6);
    LCD.setCustChar_P(5, BELL);
  }
  
  if (activeScreen == SCREEN_HOME) {
    //Screen Init: Home
    #ifdef LOGO_TROLL
      LCD.setCustChar_P(0, BMP0);
      LCD.setCustChar_P(1, BMP1);
      LCD.setCustChar_P(2, BMP2);
      LCD.setCustChar_P(3, BMP3);
      LCD.setCustChar_P(4, BMP4);
      LCD.setCustChar_P(5, BMP5);
      LCD.setCustChar_P(6, BMP6);
      LCD.writeCustChar(0, 1, 0);
      LCD.writeCustChar(0, 2, 1);
      LCD.writeCustChar(1, 0, 2); 
      LCD.writeCustChar(1, 1, 3); 
      LCD.writeCustChar(1, 2, 255); 
      LCD.writeCustChar(2, 0, 4); 
      LCD.writeCustChar(2, 1, 5); 
      LCD.writeCustChar(2, 2, 6); 
      LCD.print_P(3, 0, BT);
      LCD.print_P(3, 12, BTVER);
      LCD.lPad(3, 16, itoa(BUILD, buf, 10), 4, '0');
    #endif
    #ifdef LOGO_BREWTROLLER
      LCD.setCustChar_P(0, BMP0);
      LCD.setCustChar_P(1, BMP1);
      LCD.setCustChar_P(2, BMP2);
      LCD.setCustChar_P(3, BMP3);
      LCD.setCustChar_P(4, BMP4);
      LCD.writeCustChar(0, 0, 0);
      LCD.writeCustChar(0, 1, 1);
      LCD.writeCustChar(0, 2, 2);
      LCD.writeCustChar(1, 1, 3);
      LCD.writeCustChar(1, 2, 4);
      LCD.print_P(1, 4, BT);
      LCD.print_P(1, 16, BTVER);
      LCD.print_P(2, 4, PSTR("Build"));
      LCD.lPad(2, 10, itoa(BUILD, buf, 10), 4, '0');
      LCD.print_P(3, 0, PSTR("www.brewtroller.com"));
    #endif
    
  } else if (activeScreen == SCREEN_FILL) {
    //Screen Init: Fill/Refill
    if (stepIsActive(STEP_FILL)) LCD.print_P(0, 1, PSTR("Fill"));
    else if (stepIsActive(STEP_REFILL)) LCD.print_P(0, 1, PSTR("Refill"));
    else LCD.print_P(0, 0, PSTR("Fill"));
    LCD.print_P(0, 11, PSTR("HLT"));
    LCD.print_P(0, 16, PSTR("Mash"));
    LCD.print_P(1, 1, PSTR("Target"));
    LCD.print_P(2, 1, PSTR("Actual"));
    vftoa(tgtVol[VS_HLT], buf, 1000, 1);
    truncFloat(buf, 5);
    LCD.lPad(1, 9, buf, 5, ' ');
    vftoa(tgtVol[VS_MASH], buf, 1000, 1);
    truncFloat(buf, 5);
    LCD.lPad(1, 15, buf, 5, ' ');

    if (screenLock) {
      LCD.print_P(3, 0, PSTR(">"));
      LCD.print_P(3, 10, PSTR("<"));
      LCD.print_P(3, 1, CONTINUE);
      Encoder.setMin(0);
      Encoder.setMax(5);
      Encoder.setCount(0);
    }
    
  } else if (activeScreen == SCREEN_MASH) {
    //Screen Init: Preheat/Mash
    //Delay Start Indication
    timerLastPrint = 0;
    
    if (stepIsActive(STEP_DELAY)) LCD.print_P(0, 1, PSTR("Delay"));
    else if (stepIsActive(STEP_PREHEAT)) LCD.print_P(0, 1, PSTR("Preheat"));
    else if (stepIsActive(STEP_DOUGHIN)) LCD.print_P(0, 1, PSTR("Dough In"));
    else if (stepIsActive(STEP_ACID)) LCD.print_P(0, 1, PSTR("Acid"));
    else if (stepIsActive(STEP_PROTEIN)) LCD.print_P(0, 1, PSTR("Protein"));
    else if (stepIsActive(STEP_SACCH)) LCD.print_P(0, 1, PSTR("Sacch"));
    else if (stepIsActive(STEP_SACCH2)) LCD.print_P(0, 1, PSTR("Sacch2"));
    else if (stepIsActive(STEP_MASHOUT)) LCD.print_P(0, 1, PSTR("Mash Out"));
    else if (stepIsActive(STEP_MASHHOLD)) LCD.print_P(0, 1, PSTR("End Mash"));
    else LCD.print_P(0, 0, PSTR("Mash"));
    // For DIRECT_FIRED_RIMS (and possibly just RIMS), we need a different layout here.
#ifdef DIRECT_FIRED_RIMS
    // This is the RIMS screen
    LCD.print_P(0, 9, PSTR("At"));
    LCD.print_P(0, 15, PSTR("Set"));
    LCD.print_P(1, 1, PSTR("HLT"));
    LCD.print_P(2, 1, PSTR("Mash"));
    LCD.print_P(3, 1, PSTR("RIMS"));
    
    LCD.print_P(1, 13, TUNIT);
    LCD.print_P(1, 19, TUNIT);
    LCD.print_P(2, 13, TUNIT);
    LCD.print_P(2, 19, TUNIT);
    LCD.print_P(3, 13, TUNIT);
    LCD.print_P(3, 19, TUNIT);
    
#else
    // This is the standard screen
    LCD.print_P(0, 11, PSTR("HLT"));
    LCD.print_P(0, 16, PSTR("Mash"));
    LCD.print_P(1, 1, PSTR("Target"));
    LCD.print_P(2, 1, PSTR("Actual"));
    
    LCD.print_P(1, 13, TUNIT);
    LCD.print_P(1, 19, TUNIT);
    LCD.print_P(2, 13, TUNIT);
    LCD.print_P(2, 19, TUNIT);
#endif

  } else if (activeScreen == SCREEN_SPARGE) {
    //Screen Init: Sparge
    if (stepIsActive(STEP_SPARGE)) LCD.print_P(0, 1, PSTR("Sparge"));
    else if (stepIsActive(STEP_ADDGRAIN)) LCD.print_P(0, 1, PSTR("Grain In"));
    else LCD.print_P(0, 0, PSTR("Sparge"));
    LCD.print_P(1, 1, PSTR("HLT"));
    LCD.print_P(2, 1, PSTR("Mash"));
    LCD.print_P(3, 1, PSTR("Kettle"));
    LCD.print_P(1, 8, PSTR("---"));
    LCD.print_P(2, 8, PSTR("---"));
    LCD.print_P(3, 8, PSTR("---"));
    LCD.print_P(1, 14, PSTR("--.---"));
    LCD.print_P(2, 14, PSTR("--.---"));
    LCD.print_P(3, 14, PSTR("--.---"));
    LCD.print_P(1, 12, TUNIT);
    LCD.print_P(2, 12, TUNIT);
    LCD.print_P(3, 12, TUNIT);

    if (screenLock) {
      LCD.print_P(0, 8, PSTR(">"));
      LCD.print_P(0, 19, PSTR("<"));
      LCD.print_P(0, 10, CONTINUE);
      Encoder.setMin(0);
      Encoder.setMax(7);
      Encoder.setCount(0);
    }
    
  } else if (activeScreen == SCREEN_BOIL) {
    //Screen Init: Boil
    timerLastPrint = 0;
    if (stepIsActive(STEP_BOIL)) LCD.print_P(0, 1, PSTR("Boil"));
    else LCD.print_P(0,0,PSTR("Boil"));
    LCD.print_P(1, 19, TUNIT);

    if (screenLock) {
        Encoder.setMin(0);
        Encoder.setMax(PIDLIMIT_KETTLE);
        Encoder.setCount(PIDOutput[VS_KETTLE]/PIDCycle[VS_KETTLE]);
        //If Kettle is off keep it off until unlocked
        if (!setpoint[VS_KETTLE]) boilControlState = CONTROLSTATE_OFF;
    }

  } else if (activeScreen == SCREEN_CHILL) {
    //Screen Init: Chill
    if (stepIsActive(STEP_CHILL)) LCD.print_P(0, 1, PSTR("Chill"));
    else LCD.print_P(0, 0, PSTR("Chill"));
    LCD.print_P(0, 11, PSTR("Beer"));
    LCD.print_P(0, 17, PSTR("H2O"));
    LCD.print_P(1, 8, PSTR("In"));
//RDE    LCD.print_P(2, 7, PSTR("Out"));

    LCD.print_P(1, 14, TUNIT);
    LCD.print_P(1, 19, TUNIT);
//RDE    LCD.print_P(2, 14, TUNIT);
//RDE    LCD.print_P(2, 19, TUNIT);
    
    if (screenLock) {
      LCD.print_P(3, 0, PSTR(">"));
      LCD.print_P(3, 11, PSTR("<"));
      LCD.print_P(3, 2, CONTINUE);
      Encoder.setMin(0);
      Encoder.setMax(6);
      Encoder.setCount(0);
    }

  } else if (activeScreen == SCREEN_AUX) {
    //Screen Init: AUX
    LCD.print_P(0,0,PSTR("AUX Temps"));
    LCD.print_P(1,1,PSTR("AUX1"));
    LCD.print_P(2,1,PSTR("AUX2"));
    LCD.print_P(1, 11, TUNIT);
    LCD.print_P(2, 11, TUNIT);
#ifndef DIRECT_FIRED_RIMS
    LCD.print_P(3, 1, PSTR("AUX3"));
    LCD.print_P(3, 11, TUNIT);
#endif
    
  }
  
  //Write Unlock symbol to upper right corner
  if (!screenLock) LCD.writeCustChar(0, 19, 7);
}

//**********************************************************************************
// screenRefresh:  Refresh active screen
//**********************************************************************************
void screenRefresh() {
  if (activeScreen == SCREEN_HOME) {
    //Refresh Screen: Home

  } else if (activeScreen == SCREEN_FILL) {
    vftoa(volAvg[VS_HLT], buf, 1000, 1);
    truncFloat(buf, 5);
    LCD.lPad(2, 9, buf, 5, ' ');

    vftoa(volAvg[VS_MASH], buf, 1000, 1);
    truncFloat(buf, 5);
    LCD.lPad(2, 15, buf, 5, ' ');

    if (vlvConfigIsActive(VLV_FILLHLT)) LCD.print_P(3, 11, PSTR("On "));
    else LCD.print_P(3, 11, PSTR("Off"));

    if (vlvConfigIsActive(VLV_FILLMASH)) LCD.print_P(3, 17, PSTR(" On"));
    else LCD.print_P(3, 17, PSTR("Off"));
    
    if (screenLock) {
      int encValue = Encoder.change();
      if (encValue >= 0) {
        LCD.rPad(3, 1, "", 9, ' ');
        if (encValue == 0) LCD.print_P(3, 1, CONTINUE);
        else if (encValue == 1) LCD.print_P(3, 1, FILLHLT);
        else if (encValue == 2) LCD.print_P(3, 1, FILLMASH);
        else if (encValue == 3) LCD.print_P(3, 1, FILLBOTH);
        else if (encValue == 4) LCD.print_P(3, 2, ALLOFF);
        else if (encValue == 5) LCD.print_P(3, 3, MENU);
      }
    }
    
  } else if (activeScreen == SCREEN_MASH) {
    //Refresh Screen: Preheat/Mash
    
    // The DIRECT_FIRED_RIMS option uses a different screen layout, so the logic just
    // does not work.  So two blocks are required.
#ifdef DIRECT_FIRED_RIMS
    byte vessels[3] = {VS_HLT, VS_MASH, VS_MASH};
    byte temps[3] = {TS_HLT, TS_MASH, RIMS_TEMP_SENSOR};
    byte heatSources[3] = {VS_HLT, VS_MASH, VS_STEAM};
    for (byte i = 0; i <= 2; i++) {
      vftoa(setpoint[vessels[i]], buf, 100, 1);
      truncFloat(buf, 4);
      LCD.lPad(i + 1, 15, buf, 4, ' ');
      vftoa(temp[temps[i]], buf, 100, 1);
      truncFloat(buf, 4);
      if (temp[temps[i]] == BAD_TEMP) {
        LCD.print_P(i + 1, 1, PSTR("12345678----")); 
        // LCD.print_P(i + 1, 9, PSTR("----")); 
      } else {
        LCD.lPad(i + 1, 9, buf, 4, ' ');      
      }
      if (PIDEnabled[vessels[i]]) {
        // There is no good way to currently show this.
        // Removing for now.
        LCD.print_P(i + 1, 6, PSTR("#")); 
      } else if (heatStatus[heatSources[i]]) {
        LCD.print_P(i + 1, 6, PSTR("*")); 
      } else {
        LCD.print_P(i + 1, 6, PSTR("-"));
      }
      // This over-writes the RIMS row, so commented out.
//    printTimer(TIMER_MASH, 3, 0);
    }
#else
    for (byte i = VS_HLT; i <= VS_MASH; i++) {
      vftoa(setpoint[i], buf, 100, 1);
      truncFloat(buf, 4);
      LCD.lPad(1, i * 6 + 9, buf, 4, ' ');
      vftoa(temp[i], buf, 100, 1);
      truncFloat(buf, 4);
      if (temp[i] == BAD_TEMP) {
        LCD.print_P(2, i * 6 + 9, PSTR("----")); 
      } else {
        LCD.lPad(2, i * 6 + 9, buf, 4, ' ');
      }
      byte pct;
      if (PIDEnabled[i]) {
        pct = PIDOutput[i] / PIDCycle[i];
        if (pct == 0) strcpy_P(buf, PSTR("Off"));
        else if (pct == 100) strcpy_P(buf, PSTR(" On"));
        else { itoa(pct, buf, 10); strcat(buf, "%"); }
      } else if (heatStatus[i]) {
        strcpy_P(buf, PSTR(" On")); 
        pct = 100;
      } else {
        strcpy_P(buf, PSTR("Off"));
        pct = 0;
      }
      LCD.lPad(3, i * 6 + 11, buf, 3, ' ');
    printTimer(TIMER_MASH, 3, 0);
    }
#endif



  } else if (activeScreen == SCREEN_SPARGE) {
    //Refresh Screen: Sparge
    #ifdef VOLUME_MANUAL
      // In manual volume mode show the target volumes instead of the current volumes
      vftoa(tgtVol[VS_HLT], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(1, 14, buf, 6, ' ');
        
      vftoa(tgtVol[VS_MASH], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(2, 14, buf, 6, ' ');
        
      vftoa(tgtVol[VS_KETTLE], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(3, 14, buf, 6, ' ');
    #else
      vftoa(volAvg[VS_HLT], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(1, 14, buf, 6, ' ');
        
      vftoa(volAvg[VS_MASH], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(2, 14, buf, 6, ' ');
        
      vftoa(volAvg[VS_KETTLE], buf, 1000, 1);
      truncFloat(buf, 6);
      LCD.lPad(3, 14, buf, 6, ' ');
    #endif
    
    if (screenLock) {
      int encValue = Encoder.change();
      if (encValue >= 0) {
        LCD.rPad(0, 9, "", 10, ' ');

        if (encValue == 0) LCD.print_P(0, 10, CONTINUE);
        else if (encValue == 1) LCD.print_P(0, 9, SPARGEIN);
        else if (encValue == 2) LCD.print_P(0, 9, SPARGEOUT);
        else if (encValue == 3) LCD.print_P(0, 9, FLYSPARGE);
        else if (encValue == 4) LCD.print_P(0, 9, MASHHEAT);
        else if (encValue == 5) LCD.print_P(0, 9, MASHIDLE);
        else if (encValue == 6) LCD.print_P(0, 11, ALLOFF);
        else if (encValue == 7) LCD.print_P(0, 12, MENU);
      }
    }

    // Not sure what to do here, due to the very serious design
    // defect of using temperature sensors IDs as the index variable.
    for (byte i = TS_HLT; i <= TS_KETTLE; i++) {
      vftoa(temp[i], buf, 100, 1);
      truncFloat(buf, 4);
      if (temp[i] == BAD_TEMP) LCD.print_P(i + 1, 8, PSTR("----")); else LCD.lPad(i + 1, 8, buf, 4, ' ');
    }
  } else if (activeScreen == SCREEN_BOIL) {
    //Refresh Screen: Boil
    if (screenLock) {
      switch (boilControlState) {
        case CONTROLSTATE_OFF:
          LCD.print_P(0, 14, PSTR("   Off"));
          break;
        case CONTROLSTATE_AUTO:
          LCD.print_P(0, 14, PSTR("  Auto"));
          break;
        case CONTROLSTATE_ON:
          LCD.print_P(0, 14, PSTR("Manual"));
          break;
      }
    }
    
    printTimer(TIMER_BOIL, 3, 0);

    vftoa(volAvg[VS_KETTLE], buf, 1000, 1);
    truncFloat(buf, 5);
    LCD.lPad(2, 15, buf, 5, ' ');

    if (PIDEnabled[TS_KETTLE]) {
      byte pct = PIDOutput[TS_KETTLE] / PIDCycle[TS_KETTLE];
      if (pct == 0) strcpy_P(buf, PSTR("Off"));
      else if (pct == 100) strcpy_P(buf, PSTR(" On"));
      else { itoa(pct, buf, 10); strcat(buf, "%"); }
    } else if (heatStatus[TS_KETTLE]) {
      strcpy_P(buf, PSTR(" On")); 
    } else {
      strcpy_P(buf, PSTR("Off"));
    }
    LCD.lPad(3, 17, buf, 3, ' ');
    vftoa(temp[TS_KETTLE], buf, 100, 1);
    truncFloat(buf, 5);
    if (temp[TS_KETTLE] == BAD_TEMP) LCD.print_P(1, 14, PSTR("-----")); else LCD.lPad(1, 14, buf, 5, ' ');
    if (screenLock) {
      if (boilControlState != CONTROLSTATE_OFF) {
        int encValue = Encoder.change();
        if (encValue >= 0) {
          boilControlState = CONTROLSTATE_ON;
          setpoint[VS_KETTLE] = encValue ? getBoilTemp() * SETPOINT_MULT : 0;
          PIDOutput[VS_KETTLE] = PIDCycle[VS_KETTLE] * encValue;
        }
      }
      if (boilControlState == CONTROLSTATE_AUTO) Encoder.setCount(PIDOutput[VS_KETTLE] / PIDCycle[VS_KETTLE]);
    }
    
  } else if (activeScreen == SCREEN_CHILL) {
    //Refresh Screen: Chill
    if (screenLock) {
      int encValue = Encoder.change();
      if (encValue >= 0) {
        LCD.rPad(3, 1, "", 10, ' ');
        if (encValue == 0) LCD.print_P(3, 2, CONTINUE);
        else if (encValue == 1) LCD.print_P(3, 1, CHILLNORM);
        else if (encValue == 2) LCD.print_P(3, 1, CHILLH2O);
        else if (encValue == 3) LCD.print_P(3, 1, CHILLBEER);
        else if (encValue == 4) LCD.print_P(3, 2, ALLOFF);
        else if (encValue == 5) LCD.print_P(3, 4, PSTR("Auto"));
        else if (encValue == 6) LCD.print_P(3, 3, ABORT);
      }
    }
    if (temp[TS_KETTLE] == BAD_TEMP) LCD.print_P(1, 11, PSTR("---")); else LCD.lPad(1, 11, itoa(temp[TS_KETTLE] / 100, buf, 10), 3, ' ');
//RDE    if (temp[TS_BEEROUT] == BAD_TEMP) LCD.print_P(2, 11, PSTR("---")); else LCD.lPad(2, 11, itoa(temp[TS_BEEROUT] / 100, buf, 10), 3, ' ');
//RDE if (temp[TS_H2OIN] == BAD_TEMP) LCD.print_P(1, 16, PSTR("---")); else LCD.lPad(1, 16, itoa(temp[TS_H2OIN] / 100, buf, 10), 3, ' ');
    if (temp[TS_HLT] == BAD_TEMP) LCD.print_P(1, 16, PSTR("---")); else LCD.lPad(1, 16, itoa(temp[TS_HLT] / 100, buf, 10), 3, ' '); // Use HLT as H20 in temp for chill

//RDE    if (temp[TS_H2OOUT] == BAD_TEMP) LCD.print_P(2, 16, PSTR("---")); else LCD.lPad(2, 16, itoa(temp[TS_H2OOUT] / 100, buf, 10), 3, ' ');
//RDE    if (vlvConfigIsActive(VLV_CHILLBEER)) LCD.print_P(3, 12, PSTR(" On")); else LCD.print_P(3, 12, PSTR("Off"));
//RDE    if (vlvConfigIsActive(VLV_CHILLH2O)) LCD.print_P(3, 17, PSTR(" On")); else LCD.print_P(3, 17, PSTR("Off"));

  } else if (activeScreen == SCREEN_AUX) {
    //Screen Refresh: AUX
  #ifndef DIRECT_FIRED_RIMS
    for (byte i = TS_AUX1; i <= TS_AUX3; i++)
  #else
    for (byte i = TS_AUX1; i <= TS_AUX2; i++)
  #endif
    {
      if (temp[i] == BAD_TEMP) {
        LCD.print_P(i - 5, 6, PSTR("-----")); 
      } else {
        vftoa(temp[i], buf, 100, 1);
        truncFloat(buf, 5);
        LCD.lPad(i - 5, 6, buf, 5, ' ');
      }
    }
  }
}


//**********************************************************************************
// screenEnter:  Check enterStatus and handle based on screenLock and activeScreen
//**********************************************************************************
void screenEnter() {
  if (Encoder.cancel()) {
    //Unlock screens
    unlockUI();
  } else if (Encoder.ok()) {
    if (alarmStatus) setAlarm(0);
    else if (!screenLock) lockUI();
    else {
      if (activeScreen == SCREEN_HOME) {
      //Screen Enter: Home
        menu homeMenu(3, 9);

        while(1) {
          //Item updated on each cycle
          homeMenu.setItem_P(EXIT, 255);
          homeMenu.setItem_P(PSTR("Edit Program"), 1);
          homeMenu.setItem_P(PSTR("Start Program"), 2);

          homeMenu.setItem_P(DRAIN, 3);
          if (vlvConfigIsActive(VLV_DRAIN)) homeMenu.appendItem_P(PSTR(": On"), 3);
          else homeMenu.appendItem_P(PSTR(": Off"), 3);
          
          homeMenu.setItem_P(USER1, 4);
          if (vlvConfigIsActive(VLV_USER1)) homeMenu.appendItem_P(PSTR(": On"), 4);
          else homeMenu.appendItem_P(PSTR(": Off"), 4);
          
          homeMenu.setItem_P(USER2, 5);
          if (vlvConfigIsActive(VLV_USER2)) homeMenu.appendItem_P(PSTR(": On"), 5);
          else homeMenu.appendItem_P(PSTR(": Off"), 5);
          
          homeMenu.setItem_P(USER3, 6);
          if (vlvConfigIsActive(VLV_USER3)) homeMenu.appendItem_P(PSTR(": On"), 6);
          else homeMenu.appendItem_P(PSTR(": Off"), 6);

          homeMenu.setItem_P(PSTR("Reset All"), 7);
          #ifndef UI_NO_SETUP
            homeMenu.setItem_P(PSTR("System Setup"), 8);
          #endif

          byte lastOption = scrollMenu("Main Menu", &homeMenu);
          
          if (lastOption == 1) editProgramMenu();
          else if (lastOption == 2) {
              startProgramMenu();
              if (activeScreen == SCREEN_FILL) {
                doInit = 1;
                break;
              }
          }
          else if (lastOption == 3) {
            //Drain
            if (vlvConfigIsActive(VLV_DRAIN)) bitClear(actProfiles, VLV_DRAIN);
            else {
              if (zoneIsActive(ZONE_MASH) || zoneIsActive(ZONE_BOIL)) {
                LCD.clear();
                LCD.print_P(0, 0, PSTR("Cannot drain while"));
                LCD.print_P(1, 0, PSTR("mash or boil zone"));
                LCD.print_P(2, 0, PSTR("is active"));
                LCD.print(3, 4, ">");
                LCD.print_P(3, 6, CONTINUE);
                LCD.print(3, 15, "<");
                while (!Encoder.ok()) brewCore();
              } else bitSet(actProfiles, VLV_DRAIN);
            }
          }
          else if (lastOption >= 4 && lastOption <= 6) {
            //User Valve 1-3
            if (vlvConfigIsActive(lastOption + 13)) bitClear(actProfiles, lastOption + 13);
            else bitSet(actProfiles, lastOption + 13);
          }          
          else if (lastOption == 7) {
            //Reset All
            if (confirmAbort()) {
              resetOutputs();
              clearTimer(TIMER_MASH);
              clearTimer(TIMER_BOIL);
            }
          }
          
#ifndef UI_NO_SETUP        
          else if (lastOption == 8) menuSetup();
#endif
          else {
            //On exit of the Main menu go back to Splash/Home screen.
            setActive(SCREEN_HOME);
            unlockUI();
            break;
          }
        }
        doInit = 1;

      } else if (activeScreen == SCREEN_FILL) {
        //Sceeen Enter: Fill/Refill
        int encValue = Encoder.getCount();
        if (encValue == 0) continueClick();
        else if (encValue == 1) { autoValve[AV_FILL] = 0; bitClear(actProfiles, VLV_FILLMASH); bitSet(actProfiles, VLV_FILLHLT);}
        else if (encValue == 2) { autoValve[AV_FILL] = 0; bitClear(actProfiles, VLV_FILLHLT); bitSet(actProfiles, VLV_FILLMASH);}
        else if (encValue == 3) { autoValve[AV_FILL] = 0; bitSet(actProfiles, VLV_FILLHLT); bitSet(actProfiles, VLV_FILLMASH);}
        else if (encValue == 4) { autoValve[AV_FILL] = 0; bitClear(actProfiles, VLV_FILLHLT); bitClear(actProfiles, VLV_FILLMASH);}
        else if (encValue == 5) {
          menu fillMenu(3, 6);
          fillMenu.setItem_P(PSTR("Auto Fill"), 0);
          fillMenu.setItem_P(PSTR("HLT Target"), 1);
          fillMenu.setItem_P(PSTR("Mash Target"), 2);
          fillMenu.setItem_P(CONTINUE, 3);
          fillMenu.setItem_P(ABORT, 4);
          fillMenu.setItem_P(EXIT, 255);

          byte lastOption = scrollMenu("Fill Menu", &fillMenu);
          if (lastOption == 0) { if(tgtVol[VS_HLT] || tgtVol[VS_MASH]) autoValve[AV_FILL] = 1; }
          else if (lastOption == 1) tgtVol[VS_HLT] = getValue_P(PSTR("HLT Target Vol"), tgtVol[VS_HLT], 1000, 9999999, VOLUNIT);
          else if (lastOption == 2) tgtVol[VS_MASH] = getValue_P(PSTR("Mash Target Vol"), tgtVol[VS_MASH], 1000, 9999999, VOLUNIT);
          else if (lastOption == 3) continueClick();     
          else if (lastOption == 4) {
            if (confirmAbort()) {
              if (stepIsActive(STEP_FILL)) stepExit(STEP_FILL);
              else stepExit(STEP_REFILL); //Abort STEP_REFILL or manual operation
            }
          }
          doInit = 1;
        }

      } else if (activeScreen == SCREEN_MASH) {
        //Screen Enter: Preheat/Mash
        menu mashMenu(3, 7);

        mashMenu.setItem_P(PSTR("HLT Setpoint:"), 0);
        vftoa(setpoint[VS_HLT], buf, 100, 1);
        truncFloat(buf, 4);
        mashMenu.appendItem(buf, 0);
        mashMenu.appendItem_P(TUNIT, 0);
        
        mashMenu.setItem_P(PSTR("Mash Setpoint:"), 1);
        vftoa(setpoint[VS_MASH], buf, 100, 1);
        truncFloat(buf, 4);
        mashMenu.appendItem(buf, 1);
        mashMenu.appendItem_P(TUNIT, 1);
        
        mashMenu.setItem_P(PSTR("Set Timer"), 2);

        if (timerStatus[TIMER_MASH]) mashMenu.setItem_P(PSTR("Pause Timer"), 3);
        else mashMenu.setItem_P(PSTR("Start Timer"), 3);

        mashMenu.setItem_P(CONTINUE, 4);
        mashMenu.setItem_P(ABORT, 5);
        mashMenu.setItem_P(EXIT, 255);
        
        byte lastOption = scrollMenu("Mash Menu", &mashMenu);
        if (lastOption == 0) setSetpoint(VS_HLT, getValue_P(PSTR("HLT Setpoint"), setpoint[VS_HLT] / SETPOINT_MULT, SETPOINT_DIV, 255, TUNIT));
        else if (lastOption == 1) setSetpoint(VS_MASH, getValue_P(PSTR("Mash Setpoint"), setpoint[VS_MASH] / SETPOINT_MULT, SETPOINT_DIV, 255, TUNIT));
        else if (lastOption == 2) { 
          setTimer(TIMER_MASH, getTimerValue(PSTR("Mash Timer"), timerValue[TIMER_MASH] / 60000, 1));
          //Force Preheated
          preheated[VS_MASH] = 1;
        } 
        else if (lastOption == 3) {
          pauseTimer(TIMER_MASH);
          //Force Preheated
          preheated[VS_MASH] = 1;
        } 
        else if (lastOption == 4) {
          byte brewstep = PROGRAM_IDLE;
          if (stepIsActive(STEP_DELAY)) brewstep = STEP_DELAY;
          else if (stepIsActive(STEP_DOUGHIN)) brewstep = STEP_DOUGHIN;
          else if (stepIsActive(STEP_PREHEAT)) brewstep = STEP_PREHEAT;
          else if (stepIsActive(STEP_ACID)) brewstep = STEP_ACID;
          else if (stepIsActive(STEP_PROTEIN)) brewstep = STEP_PROTEIN;
          else if (stepIsActive(STEP_SACCH)) brewstep = STEP_SACCH;
          else if (stepIsActive(STEP_SACCH2)) brewstep = STEP_SACCH2;
          else if (stepIsActive(STEP_MASHOUT)) brewstep = STEP_MASHOUT;
          else if (stepIsActive(STEP_MASHHOLD)) brewstep = STEP_MASHHOLD;
          if(brewstep != PROGRAM_IDLE) {
            if (stepAdvance(brewstep)) {
              //Failed to advance step
              stepAdvanceFailDialog();
            }
          } else activeScreen = SCREEN_SPARGE;
        } else if (lastOption == 5) {
          if (confirmAbort()) {
            if (stepIsActive(STEP_DELAY)) stepExit(STEP_DELAY);
            else if (stepIsActive(STEP_DOUGHIN)) stepExit(STEP_DOUGHIN);
            else if (stepIsActive(STEP_PREHEAT)) stepExit(STEP_PREHEAT);
            else if (stepIsActive(STEP_ACID)) stepExit(STEP_ACID);
            else if (stepIsActive(STEP_PROTEIN)) stepExit(STEP_PROTEIN);
            else if (stepIsActive(STEP_SACCH)) stepExit(STEP_SACCH);
            else if (stepIsActive(STEP_SACCH2)) stepExit(STEP_SACCH2);
            else if (stepIsActive(STEP_MASHOUT)) stepExit(STEP_MASHOUT);
            else stepExit(STEP_MASHHOLD); //Abort STEP_MASHOUT or manual operation
          }
        }
        doInit = 1;
        
      } else if (activeScreen == SCREEN_SPARGE) {
        //Screen Enter: Sparge
        int encValue = Encoder.getCount();
        if (encValue == 0) continueClick();
        else if (encValue == 1) { resetSpargeValves(); bitSet(actProfiles, VLV_SPARGEIN); }
        else if (encValue == 2) { resetSpargeValves(); bitSet(actProfiles, VLV_SPARGEOUT); }
        else if (encValue == 3) { resetSpargeValves(); bitSet(actProfiles, VLV_SPARGEIN); bitSet(actProfiles, VLV_SPARGEOUT); }
        else if (encValue == 4) { resetSpargeValves(); bitSet(actProfiles, VLV_MASHHEAT); }
        else if (encValue == 5) { resetSpargeValves(); bitSet(actProfiles, VLV_MASHIDLE); }
        else if (encValue == 6) { resetSpargeValves(); }
        else if (encValue == 7) {
          menu spargeMenu(3, 8);
          spargeMenu.setItem_P(PSTR("Auto In"), 0);
          spargeMenu.setItem_P(PSTR("Auto Out"), 1);
          spargeMenu.setItem_P(PSTR("Auto Fly"), 2);
          spargeMenu.setItem_P(PSTR("HLT Target"), 3);
          spargeMenu.setItem_P(PSTR("Kettle Target"), 4);
          spargeMenu.setItem_P(CONTINUE, 5);
          spargeMenu.setItem_P(ABORT, 6);
          spargeMenu.setItem_P(EXIT, 255);
          byte lastOption = scrollMenu("Sparge Menu", &spargeMenu);
          if (lastOption == 0) { resetSpargeValves(); if(tgtVol[VS_HLT]) autoValve[AV_SPARGEIN] = 1; }
          else if (lastOption == 1) { resetSpargeValves(); if(tgtVol[VS_KETTLE]) autoValve[AV_SPARGEOUT] = 1; }
          else if (lastOption == 2) { resetSpargeValves(); if(tgtVol[VS_KETTLE]) autoValve[AV_FLYSPARGE] = 1; }
          else if (lastOption == 3) tgtVol[VS_HLT] = getValue_P(PSTR("HLT Target Vol"), tgtVol[VS_HLT], 1000, 9999999, VOLUNIT);
          else if (lastOption == 4) tgtVol[VS_KETTLE] = getValue_P(PSTR("Kettle Target Vol"), tgtVol[VS_KETTLE], 1000, 9999999, VOLUNIT);
          else if (lastOption == 5) continueClick();
          else if (lastOption == 6) {
            if (confirmAbort()) {
              if (stepIsActive(STEP_ADDGRAIN)) stepExit(STEP_ADDGRAIN);
              else stepExit(STEP_SPARGE); //Abort STEP_SPARGE or manual operation
            }
          }
          doInit = 1;
        }
       

      } else if (activeScreen == SCREEN_BOIL) {
        //Screen Enter: Boil
        menu boilMenu(3, 9);
        boilMenu.setItem_P(PSTR("Set Timer"), 0);
        
        if (timerStatus[TIMER_BOIL]) boilMenu.setItem_P(PSTR("Pause Timer"), 1);
        else boilMenu.setItem_P(PSTR("Start Timer"), 1);
        
        boilMenu.setItem_P(PSTR("Boil Ctrl: "), 2);
        switch (boilControlState) {
          case CONTROLSTATE_OFF:
            boilMenu.appendItem_P(PSTR("Off"), 2);
            break;
          case CONTROLSTATE_AUTO:
            boilMenu.appendItem_P(PSTR("Auto"), 2);
            break;
          case CONTROLSTATE_ON:
            boilMenu.appendItem_P(PSTR("Manual"), 2);
            break;
        }

        
        boilMenu.setItem_P(PSTR("Boil Temp: "), 3);
        vftoa(getBoilTemp() * SETPOINT_MULT, buf, 100, 1);
        truncFloat(buf, 5);
        boilMenu.appendItem(buf, 3);
        boilMenu.appendItem_P(TUNIT, 3);
        
        boilMenu.setItem_P(PSTR("Boil Power: "), 4);
        boilMenu.appendItem(itoa(boilPwr, buf, 10), 4);
        boilMenu.appendItem("%", 4);
        
        boilMenu.setItem_P(BOILRECIRC, 5);
        if (vlvConfigIsActive(VLV_BOILRECIRC)) boilMenu.appendItem_P(PSTR(": On"), 5);
        else boilMenu.appendItem_P(PSTR(": Off"), 5);
        
        boilMenu.setItem_P(CONTINUE, 6);
        boilMenu.setItem_P(ABORT, 7);
        boilMenu.setItem_P(EXIT, 255);        
        byte lastOption = scrollMenu("Boil Menu", &boilMenu);
        if (lastOption == 0) {
          setTimer(TIMER_BOIL, getTimerValue(PSTR("Boil Timer"), timerValue[TIMER_BOIL] / 60000, 2));
          //Force Preheated
          preheated[VS_KETTLE] = 1;
        } 
        else if (lastOption == 1) {
          pauseTimer(TIMER_BOIL);
          //Force Preheated
          preheated[VS_KETTLE] = 1;
        } 
        else if (lastOption == 2) boilControlMenu();
        else if (lastOption == 3) {
          setBoilTemp(getValue_P(PSTR("Boil Temp"), getBoilTemp(), SETPOINT_DIV, 255, TUNIT));
          setSetpoint(VS_KETTLE, getBoilTemp() * SETPOINT_MULT);
        }
        else if (lastOption == 4) setBoilPwr(getValue_P(PSTR("Boil Power"), boilPwr, 1, min(PIDLIMIT_KETTLE, 100), PSTR("%")));
        else if (lastOption == 5) {
          if (vlvConfigIsActive(VLV_BOILRECIRC)) bitClear(actProfiles, VLV_BOILRECIRC);
          else bitSet(actProfiles, VLV_BOILRECIRC);
        } else if (lastOption == 6) {
          byte brewstep = PROGRAM_IDLE;
          if (stepIsActive(STEP_BOIL)) brewstep = STEP_BOIL;
          if(brewstep != PROGRAM_IDLE) {
            if (stepAdvance(brewstep)) {
              //Failed to advance step
              stepAdvanceFailDialog();
            }
          } else {
            setActive(SCREEN_CHILL);
          }
        } else if (lastOption == 7) { if (confirmAbort()) stepExit(STEP_BOIL); }
        doInit = 1;
        
      } else if (activeScreen == SCREEN_CHILL) {
        //Screen Enter: Chill

        int encValue = Encoder.getCount();
        if (encValue == 0) {
          stepExit(STEP_CHILL);
          setActive(SCREEN_HOME);
        }
        else if (encValue == 1) { autoValve[AV_CHILL] = 0; bitSet(actProfiles, VLV_CHILLH2O); bitSet(actProfiles, VLV_CHILLBEER); }
        else if (encValue == 2) { autoValve[AV_CHILL] = 0; bitClear(actProfiles, VLV_CHILLBEER); bitSet(actProfiles, VLV_CHILLH2O); }
        else if (encValue == 3) { autoValve[AV_CHILL] = 0; bitClear(actProfiles, VLV_CHILLH2O); bitSet(actProfiles, VLV_CHILLBEER); }
        else if (encValue == 4) { autoValve[AV_CHILL] = 0; bitClear(actProfiles, VLV_CHILLH2O); bitClear(actProfiles, VLV_CHILLBEER); }
        else if (encValue == 5) autoValve[AV_CHILL] = 1;        
      }
    }
  }
}

void uiEstop() {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("E-Stop Triggered"));
  Encoder.setMin(0);
  Encoder.setMax(1);
  Encoder.setCount(0);
  LCD.print_P(1, 0, PSTR(">Clear Alarm"));
  LCD.print_P(2, 0, PSTR(" Clear E-Stop"));

  while (estop) {
    if (Encoder.change() >= 0) {
      LCD.print(2 - Encoder.getCount(), 0, " ");
      LCD.print(Encoder.getCount() + 1, 0, ">");
      LCD.update();
    }
    if (Encoder.ok()) {
      if (Encoder.getCount() == 0) setAlarm(0);
      else if (Encoder.getCount() == 1) estop = 0;
    }
    brewCore();
  }
  doInit = 1; 
}

void boilControlMenu() {
  menu boilMenu(3, 3);
  boilMenu.setItem_P(PSTR("Off"), CONTROLSTATE_OFF);
  boilMenu.setItem_P(PSTR("Auto"), CONTROLSTATE_AUTO);
  boilMenu.setItem_P(PSTR("Manual"), CONTROLSTATE_ON);
  byte lastOption = scrollMenu("Boil Control Menu", &boilMenu);
  if (lastOption < NUM_CONTROLSTATES) boilControlState = (ControlState) lastOption;
  switch (boilControlState) {
    case CONTROLSTATE_OFF:
      PIDOutput[VS_KETTLE] = 0;
      setpoint[VS_KETTLE] = 0;
      break;
    case CONTROLSTATE_AUTO:
      setpoint[VS_KETTLE] = getBoilTemp() * SETPOINT_MULT;
      break;
    case CONTROLSTATE_ON:
      setpoint[VS_KETTLE] = 1;
      break;
  }
}

void continueClick() {
  byte brewstep = PROGRAM_IDLE;
  if (stepIsActive(STEP_FILL)) brewstep = STEP_FILL;
  else if (stepIsActive(STEP_REFILL)) brewstep = STEP_REFILL;
  else if (stepIsActive(STEP_SPARGE)) brewstep = STEP_SPARGE;
  else if (stepIsActive(STEP_ADDGRAIN)) brewstep = STEP_ADDGRAIN;
  if(brewstep != PROGRAM_IDLE) {
    if (stepAdvance(brewstep)) {
      //Failed to advance step
      stepAdvanceFailDialog();
    }
  } else setActive(activeScreen + 1);
  doInit = 1;
}

void stepAdvanceFailDialog() {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("Failed to advance"));
  LCD.print_P(1, 0, PSTR("program."));
  LCD.print(3, 4, ">");
  LCD.print_P(3, 6, CONTINUE);
  LCD.print(3, 15, "<");
  while (!Encoder.ok()) brewCore();
}

void editProgramMenu() {
  char itemDesc[20];
  menu progMenu(3, 20);
  for (byte i = 0; i < 20; i++) {
    getProgName(i, itemDesc);
    progMenu.setItem(itemDesc, i);
  }
  byte profile = scrollMenu("Edit Program", &progMenu);
  if (profile < 20) {
    progMenu.getSelectedRow(itemDesc);
    getString(PSTR("Program Name:"), itemDesc, 19);
    setProgName(profile, itemDesc);
    editProgram(profile);
  }
}

void startProgramMenu() {
  char progName[20];
  menu progMenu(3, 20);
  for (byte i = 0; i < 20; i++) {
    getProgName(i, progName);
    progMenu.setItem(progName, i);
  }
  byte profile = scrollMenu("Start Program", &progMenu);
  progMenu.getSelectedRow(progName);
  if (profile < 20) {
    byte lastOption = 0; 
    menu startMenu(3, 5);
    while(1) {
      unsigned long spargeVol = calcSpargeVol(profile);
      unsigned long mashVol = calcStrikeVol(profile);
      unsigned long grainVol = calcGrainVolume(profile);
      unsigned long preboilVol = calcPreboilVol(profile);
      if (spargeVol > getCapacity(VS_HLT)) warnHLT(spargeVol);
      if (mashVol + grainVol > getCapacity(VS_MASH)) warnMash(mashVol, grainVol);
      if (preboilVol > getCapacity(VS_KETTLE)) warnBoil(preboilVol);
      startMenu.setItem_P(PSTR("Edit Program"), 0);
      
      startMenu.setItem_P(PSTR("Grain Temp:"), 1);
      startMenu.appendItem(itoa(getGrainTemp() / SETPOINT_DIV, buf, 10), 1);
      startMenu.appendItem_P(TUNIT, 1);
      
      startMenu.setItem_P(PSTR("Start"), 2);
      startMenu.setItem_P(PSTR("Delay Start"), 3);
      startMenu.setItem_P(EXIT, 255);

      lastOption = scrollMenu(progName, &startMenu);
      if (lastOption == 0) editProgram(profile);
      else if (lastOption == 1) setGrainTemp(getValue_P(PSTR("Grain Temp"), getGrainTemp(), SETPOINT_DIV, 255, TUNIT)); 
      else if (lastOption == 2 || lastOption == 3) {
        if (zoneIsActive(ZONE_MASH)) {
          LCD.clear();
          LCD.print_P(0, 0, PSTR("Cannot start program"));
          LCD.print_P(1, 0, PSTR("while mash zone is"));
          LCD.print_P(2, 0, PSTR("active."));
          LCD.print(3, 4, ">");
          LCD.print_P(3, 6, CONTINUE);
          LCD.print(3, 15, "<");
          while (!Encoder.ok()) brewCore();
        } else {
          if (lastOption == 3) {
            //Delay Start
            setDelayMins(getTimerValue(PSTR("Delay Start"), getDelayMins(), 23));
          }
          if (stepInit(profile, STEP_FILL)) {
            LCD.clear();
            LCD.print_P(1, 0, PSTR("Program start failed"));
            LCD.print(3, 4, ">");
            LCD.print_P(3, 6, CONTINUE);
            LCD.print(3, 15, "<");
            while (!Encoder.ok()) brewCore();
          } else {
            setActive(SCREEN_FILL);
            //screenInit called on next uiCore() call
            break;
          }
        }
      } else break;
    }
  }
}

void editProgram(byte pgm) {
  menu progMenu(3, 12);

  while (1) {
    
    progMenu.setItem_P(PSTR("Batch Vol:"), 0);
    vftoa(getProgBatchVol(pgm), buf, 1000, 1);
    truncFloat(buf, 5);
    progMenu.appendItem(buf, 0);
    progMenu.appendItem_P(VOLUNIT, 0);

    progMenu.setItem_P(PSTR("Grain Wt:"), 1);
    vftoa(getProgGrain(pgm), buf, 1000, 1);
    truncFloat(buf, 7);
    progMenu.appendItem(buf, 1);
    progMenu.appendItem_P(WTUNIT, 1);

    
    progMenu.setItem_P(PSTR("Boil Length:"), 2);
    progMenu.appendItem(itoa(getProgBoil(pgm), buf, 10), 2);
    progMenu.appendItem_P(PSTR(" min"), 2);
    
    progMenu.setItem_P(PSTR("Mash Ratio:"), 3);
    unsigned int mashRatio = getProgRatio(pgm);
    if (mashRatio) {
      vftoa(mashRatio, buf, 100, 1);
      truncFloat(buf, 4);
      progMenu.appendItem(buf, 3);
      progMenu.appendItem_P(PSTR(":1"), 3);
    }
    else {
      progMenu.appendItem_P(PSTR("NoSparge"), 3);
    }
    
    progMenu.setItem_P( PSTR("HLT Temp:"), 4);
    vftoa(getProgHLT(pgm) * SETPOINT_MULT, buf, 100, 1);
    truncFloat(buf, 4);
    progMenu.appendItem(buf, 4);
    progMenu.appendItem_P(TUNIT, 4);
    
    progMenu.setItem_P(PSTR("Sparge Temp:"), 5);
    vftoa(getProgSparge(pgm) * SETPOINT_MULT, buf, 100, 1);
    truncFloat(buf, 4);
    progMenu.appendItem(buf, 5);
    progMenu.appendItem_P(TUNIT, 5);
    
    progMenu.setItem_P(PSTR("Pitch Temp:"), 6);
    vftoa(getProgPitch(pgm) * SETPOINT_MULT, buf, 100, 1);
    truncFloat(buf, 4);
    progMenu.appendItem(buf, 6);
    progMenu.appendItem_P(TUNIT, 6);

    progMenu.setItem_P(PSTR("Mash Schedule"), 7);

    progMenu.setItem_P(PSTR("Heat Strike In:"), 8);
    byte MLHeatSrc = getProgMLHeatSrc(pgm);
    if (MLHeatSrc == VS_HLT) progMenu.appendItem_P(PSTR("HLT"), 8);
    else if (MLHeatSrc == VS_MASH) progMenu.appendItem_P(PSTR("MASH"), 8);
    else progMenu.appendItem_P(PSTR("UNKWN"), 8);

    progMenu.setItem_P(BOILADDS, 9);
    progMenu.setItem_P(PSTR("Program Calcs"), 10);
    progMenu.setItem_P(EXIT, 255);

    byte lastOption = scrollMenu("Program Parameters", &progMenu);
    
    if (lastOption == 0) setProgBatchVol(pgm, getValue_P(PSTR("Batch Volume"), getProgBatchVol(pgm), 1000, 9999999, VOLUNIT));
    else if (lastOption == 1) setProgGrain(pgm, getValue_P(PSTR("Grain Weight"), getProgGrain(pgm), 1000, 9999999, WTUNIT));
    else if (lastOption == 2) setProgBoil(pgm, getTimerValue(PSTR("Boil Length"), getProgBoil(pgm), 2));
    else if (lastOption == 3) { 
      #ifdef USEMETRIC
        setProgRatio(pgm, getValue_P(PSTR("Mash Ratio"), getProgRatio(pgm), 100, 999, PSTR(" l/kg"))); 
      #else
        setProgRatio(pgm, getValue_P(PSTR("Mash Ratio"), getProgRatio(pgm), 100, 999, PSTR(" qts/lb")));
      #endif
    }
    else if (lastOption == 4) setProgHLT(pgm, getValue_P(PSTR("HLT Setpoint"), getProgHLT(pgm), SETPOINT_DIV, 255, TUNIT));
    else if (lastOption == 5) setProgSparge(pgm, getValue_P(PSTR("Sparge Temp"), getProgSparge(pgm), SETPOINT_DIV, 255, TUNIT));
    else if (lastOption == 6) setProgPitch(pgm, getValue_P(PSTR("Pitch Temp"), getProgPitch(pgm), SETPOINT_DIV, 255, TUNIT));
    else if (lastOption == 7) editMashSchedule(pgm);
    else if (lastOption == 8) setProgMLHeatSrc(pgm, MLHeatSrcMenu(getProgMLHeatSrc(pgm)));
    else if (lastOption == 9) setProgAdds(pgm, editHopSchedule(getProgAdds(pgm)));
    else if (lastOption == 10) showProgCalcs(pgm);
    else return;
    unsigned long spargeVol = calcSpargeVol(pgm);
    unsigned long mashVol = calcStrikeVol(pgm);
    unsigned long grainVol = calcGrainVolume(pgm);
    unsigned long preboilVol = calcPreboilVol(pgm);
    if (spargeVol > getCapacity(VS_HLT)) warnHLT(spargeVol);
    if (mashVol + grainVol > getCapacity(VS_MASH)) warnMash(mashVol, grainVol);
    if (preboilVol > getCapacity(VS_KETTLE)) warnBoil(preboilVol);
  }
}

void showProgCalcs(byte pgm) {
  menu calcsMenu(3, 6);
  unsigned long value;
  char valtxt[8];

  calcsMenu.setItem_P(PSTR("Strike Temp:"), 0);
  value = calcStrikeTemp(pgm);
  vftoa(value * SETPOINT_MULT, buf, 100, 1);
  truncFloat(buf, 3);
  calcsMenu.appendItem(buf, 0);
  calcsMenu.appendItem_P(TUNIT, 0);
  
  calcsMenu.setItem_P(PSTR("Strike Vol:"), 1);
  value = calcStrikeVol(pgm);
  vftoa(value, buf, 1000, 1);
  truncFloat(buf, 4);
  calcsMenu.appendItem(buf, 1);
  calcsMenu.appendItem_P(VOLUNIT, 1);
  
  calcsMenu.setItem_P(PSTR("Sparge Vol:"), 2);
  value = calcSpargeVol(pgm);
  vftoa(value, buf, 1000, 1);
  truncFloat(buf, 4);
  calcsMenu.appendItem(buf, 2);
  calcsMenu.appendItem_P(VOLUNIT, 2);

  calcsMenu.setItem_P(PSTR("Preboil Vol:"), 3);
  value = calcPreboilVol(pgm);
  vftoa(value, buf, 1000, 1);
  truncFloat(buf, 4);
  calcsMenu.appendItem(buf, 3);
  calcsMenu.appendItem_P(VOLUNIT, 3);

  calcsMenu.setItem_P(PSTR("Grain Vol:"), 4);
  value = calcGrainVolume(pgm);
  vftoa(value, buf, 1000, 1);
  truncFloat(buf, 4);
  calcsMenu.appendItem(buf, 4);
  calcsMenu.appendItem_P(VOLUNIT, 4);

  calcsMenu.setItem_P(PSTR("Grain Loss:"), 5);
  value = calcGrainLoss(pgm);
  vftoa(value, buf, 1000, 1);
  truncFloat(buf, 4);
  calcsMenu.appendItem(buf, 5);
  calcsMenu.appendItem_P(VOLUNIT, 5);
  
  scrollMenu("Program Calcs", &calcsMenu);
}


#define OPT_SETMINS 0
#define OPT_SETTEMP 1

//Note: Menu values represent two 4-bit values
//High-nibble = mash step: MASH_DOUGHIN-MASH_MASHOUT
//Low-nibble = menu item: OPT_XXXXXXXX (see #defines above)
void editMashSchedule(byte pgm) {
  menu mashMenu(3, 13);
  while (1) {

    for (byte i = MASH_DOUGHIN; i <= MASH_MASHOUT; i++) {  
      mashMenu.setItem_P((char*)pgm_read_word(&(TITLE_MASHSTEP[i])), i << 4 | OPT_SETMINS);
      mashMenu.setItem_P((char*)pgm_read_word(&(TITLE_MASHSTEP[i])), i << 4 | OPT_SETTEMP);
      
      mashMenu.appendItem(itoa(getProgMashMins(pgm, i), buf, 10), i << 4 | OPT_SETMINS);
      mashMenu.appendItem(" min", i << 4 | OPT_SETMINS);

      vftoa(getProgMashTemp(pgm, i) * SETPOINT_MULT, buf, 100, 1);
      truncFloat(buf, 4);
      mashMenu.appendItem(buf, i << 4 | OPT_SETTEMP);
      mashMenu.appendItem_P(TUNIT, i << 4 | OPT_SETTEMP);
    }
    mashMenu.setItem_P(EXIT, 255);
    byte lastOption = scrollMenu("Mash Schedule", &mashMenu);
    byte mashstep = lastOption>>4;
    
    if ((lastOption & B00001111) == OPT_SETMINS)
      setProgMashMins(pgm, mashstep, getTimerValue((char*)pgm_read_word(&(TITLE_MASHSTEP[mashstep])), getProgMashMins(pgm, mashstep), 1));
    else if ((lastOption & B00001111) == OPT_SETTEMP)
      setProgMashTemp(pgm, mashstep, getValue_P((char*)pgm_read_word(&(TITLE_MASHSTEP[mashstep])), getProgMashTemp(pgm, mashstep), SETPOINT_DIV, 255, TUNIT));
    else return;
  }
}

unsigned int editHopSchedule (unsigned int sched) {
  unsigned int retVal = sched;
  menu hopMenu(3, 13);
  
  while (1) {
    if (retVal & 1) hopMenu.setItem_P(PSTR("At Boil: On"), 0); else hopMenu.setItem_P(PSTR("At Boil: Off"), 0);
    for (byte i = 0; i < 10; i++) {
      hopMenu.setItem(itoa(hoptimes[i], buf, 10), i + 1);
      if (i == 0) hopMenu.appendItem_P(PSTR(" Min: "), i + 1);
      else if (i < 9) hopMenu.appendItem_P(PSTR("  Min: "), i + 1);
      else hopMenu.appendItem_P(PSTR("   Min: "), i + 1);
      if (retVal & (1<<(i + 1))) hopMenu.appendItem_P(PSTR("On"), i + 1); else hopMenu.appendItem_P(PSTR("Off"), i + 1);
    }
    if (retVal & 2048) hopMenu.setItem_P(PSTR("0   Min: On"), 11); else hopMenu.setItem_P(PSTR("0   Min: Off"), 11);
    hopMenu.setItem_P(EXIT, 12);

    byte lastOption = scrollMenu("Boil Additions", &hopMenu);
    if (lastOption < 12) retVal = retVal ^ (1 << lastOption);
    else if (lastOption == 12) return retVal;
    else return sched;
  }
}

byte MLHeatSrcMenu(byte MLHeatSrc) {
  menu mlHeatMenu(3, 2);
  mlHeatMenu.setItem_P(HLTDESC, VS_HLT);
  mlHeatMenu.setItem_P(MASHDESC, VS_MASH);
  mlHeatMenu.setSelectedByValue(MLHeatSrc);
  byte lastOption = scrollMenu("Heat Strike In:", &mlHeatMenu);
  if (lastOption > 1) return MLHeatSrc;
  else return lastOption;
}

void warnHLT(unsigned long spargeVol) {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("HLT Capacity Issue"));
  LCD.print_P(1, 0, PSTR("Sparge Vol:"));
  vftoa(spargeVol, buf, 1000, 1);
  truncFloat(buf, 5);
  LCD.print(1, 11, buf);
  LCD.print_P(1, 16, VOLUNIT);
  LCD.print(3, 4, ">");
  LCD.print_P(3, 6, CONTINUE);
  LCD.print(3, 15, "<");
  while (!Encoder.ok()) brewCore();
}


void warnMash(unsigned long mashVol, unsigned long grainVol) {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("Mash Capacity Issue"));
  LCD.print_P(1, 0, PSTR("Strike Vol:"));
  vftoa(mashVol, buf, 1000, 1);
  truncFloat(buf, 5);
  LCD.print(1, 11, buf);
  LCD.print_P(1, 16, VOLUNIT);
  LCD.print_P(2, 0, PSTR("Grain Vol:"));
  vftoa(grainVol, buf, 1000, 1);
  truncFloat(buf, 5);
  LCD.print(2, 11, buf);
  LCD.print_P(2, 16, VOLUNIT);
  LCD.print(3, 4, ">");
  LCD.print_P(3, 6, CONTINUE);
  LCD.print(3, 15, "<");
  while (!Encoder.ok()) brewCore();
}

void warnBoil(unsigned long preboilVol) {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("Boil Capacity Issue"));
  LCD.print_P(1, 0, PSTR("Preboil Vol:"));
  vftoa(preboilVol, buf, 1000, 1);
  truncFloat(buf, 5);
  LCD.print(1, 12, buf);
  LCD.print_P(1, 17, VOLUNIT);
  LCD.print(3, 4, ">");
  LCD.print_P(3, 6, CONTINUE);
  LCD.print(3, 15, "<");
  while (!Encoder.ok()) brewCore();
}

//*****************************************************************************************************************************
//Generic Menu Functions
//*****************************************************************************************************************************
/*
  scrollMenu() & drawMenu():
  Glues together menu, Encoder and LCD objects
*/

byte scrollMenu(char sTitle[], menu *objMenu) {
  Encoder.setMin(0);
  Encoder.setMax(objMenu->getItemCount() - 1);
  //Force refresh in case selected value was set
  Encoder.setCount(objMenu->getSelected());
  boolean redraw = 1;
  
  while(1) {
    int encValue;
    if (redraw) encValue = Encoder.getCount();
    else encValue = Encoder.change();
    if (encValue >= 0) {
      objMenu->setSelected(Encoder.getCount());
      if (objMenu->refreshDisp() || redraw) drawMenu(sTitle, objMenu);
      for (byte i = 0; i < 3; i++) LCD.print(i + 1, 0, " ");
      LCD.print(objMenu->getCursor() + 1, 0, ">");
    }
    redraw = 0;
    //If Enter
    if (Encoder.ok()) {
      return objMenu->getValue();
    } else if (Encoder.cancel()) {
      return 255;
    }
    brewCore();
  }
}

void drawMenu(char sTitle[], menu *objMenu) {
  LCD.clear();
  if (sTitle != NULL) LCD.print(0, 0, sTitle);

  for (byte i = 0; i < 3; i++) {
    objMenu->getVisibleRow(i, buf);
    LCD.print(i + 1, 1, buf);
  }
  LCD.print(objMenu->getCursor() + 1, 0, ">");
}

byte getChoice(menu *objMenu, byte iRow) {
  LCD.print_P(iRow, 0, PSTR(">"));
  LCD.print_P(iRow, 19, PSTR("<"));
  Encoder.setMin(0);
  Encoder.setMax(objMenu->getItemCount() - 1);
  Encoder.setCount(0);
  boolean redraw = 1;
  
  while(1) {
    int encValue;
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    }
    else encValue = Encoder.change();
    if (encValue >= 0) {
      objMenu->setSelected(encValue);
      LCD.center(iRow, 1, objMenu->getSelectedRow(buf), 18);
    }
    
    //If Enter
    if (Encoder.ok()) {
      LCD.print_P(iRow, 0, SPACE);
      LCD.print_P(iRow, 19, SPACE);
      return Encoder.getCount();
    } else if (Encoder.cancel()) {
      return 255;
    }
    brewCore();
  }
}

boolean confirmChoice(const char *choice, byte row) {
  menu choiceMenu(1, 2);
  choiceMenu.setItem_P(CANCEL, 0);
  choiceMenu.setItem_P(choice, 1);
  if(getChoice(&choiceMenu, row) == 1) return 1; else return 0;
}

boolean confirmAbort() {
  LCD.clear();
  LCD.print_P(0, 0, PSTR("Abort operation and"));
  LCD.print_P(1, 0, PSTR("reset setpoints,"));
  LCD.print_P(2, 0, PSTR("timers and outputs?"));
  return confirmChoice(PSTR("Reset"), 3);
}

boolean confirmDel() {
  LCD.clear();
  LCD.print_P(1, 0, PSTR("Delete Item?"));
  return confirmChoice(PSTR("Delete"), 3);
}

unsigned long getValue_P(const char *sTitle, unsigned long defValue, unsigned int divisor, unsigned long maxValue, const char *dispUnit) {
  char title[20];
  strcpy_P(title, sTitle);
  return getValue(title, defValue, divisor, maxValue, dispUnit);
}

unsigned long getValue(char sTitle[], unsigned long defValue, unsigned int divisor, unsigned long maxValue, const char *dispUnit) {
  unsigned long retValue = defValue;
  char strValue[11];
  byte cursorPos = 0; 
  boolean cursorState = 0; //0 = Unselected, 1 = Selected
  byte increment;
  
  itoa(divisor - 1, strValue, 10);
  byte precision = strlen(strValue);
  if (divisor == 1) precision = 0;
  unsigned int mult = pow10(precision);
  ultoa(maxValue/divisor, strValue, 10);
  byte digits = strlen(strValue) + precision;

  Encoder.setMin(0);
  Encoder.setMax(digits);
  Encoder.setCount(0);

  LCD.setCustChar_P(0, CHARFIELD);
  LCD.setCustChar_P(1, CHARCURSOR);
  LCD.setCustChar_P(2, CHARSEL);
  
  byte valuePos = (20 - digits + 1) / 2;
  LCD.clear();
  LCD.print(0, 0, sTitle);
  LCD.print_P(1, valuePos + digits + 1, dispUnit);
  LCD.print_P(3, 9, OK);
  boolean redraw = 1;
  
  while(1) {
    int encValue;
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    }
    else encValue = Encoder.change();
    if (encValue >= 0) {
      if (cursorState) {
        vftoa(retValue, strValue, divisor, 0);
        strLPad(strValue, digits, '0');
        strValue[cursorPos] = '0' + encValue * increment;
        retValue = min(strtoul(strValue, NULL, 10) / (mult / divisor), maxValue);
      } else {
        cursorPos = encValue;
        for (byte i = valuePos - 1; i < valuePos - 1 + digits - precision; i++) LCD.writeCustChar(2, i, 0);
        if (precision) for (byte i = valuePos + digits - precision; i < valuePos + digits; i++) LCD.writeCustChar(2, i, 0);
        LCD.print(3, 8, " ");
        LCD.print(3, 11, " ");
        if (cursorPos == digits) {
          LCD.print(3, 8, ">");
          LCD.print(3, 11, "<");
        } else {
          if (cursorPos < digits - precision) LCD.writeCustChar(2, valuePos + cursorPos - 1, 1);
          else LCD.writeCustChar(2, valuePos + cursorPos, 1);
        }
      }
      vftoa(retValue, strValue, divisor, 1);
      strLPad(strValue, digits + (precision ? 1 : 0), ' ');
      LCD.print(1, valuePos - 1, strValue);
    }
    
    if (Encoder.ok()) {
      if (cursorPos == digits) break;
      else {
        cursorState = cursorState ^ 1;
        if (cursorState) {
          if (cursorPos < digits - precision) LCD.writeCustChar(2, valuePos + cursorPos - 1, 2);
          else LCD.writeCustChar(2, valuePos + cursorPos, 2);
          unsigned long cursorPow = pow10(digits - cursorPos - 1);
          if(divisor == 1) increment = 1;
          else increment = max(10 / (cursorPow * divisor), 1);
          Encoder.setMin(0);
          Encoder.setMax(10 / increment - 1);
          vftoa(retValue, strValue, divisor, 0);
          strLPad(strValue, digits, '0');
          Encoder.setCount((strValue[cursorPos] - '0') / increment);
        } else {
          if (cursorPos < digits - precision) LCD.writeCustChar(2, valuePos + cursorPos - 1, 1);
          else LCD.writeCustChar(2, valuePos + cursorPos, 1);
          Encoder.setMin(0);
          Encoder.setMax(digits);
          Encoder.setCount(cursorPos);
        }
      }
    } else if (Encoder.cancel()) {
      retValue = defValue;
      break;
    }
    brewCore();
  }
  return retValue;
}

unsigned long ulpow(unsigned long base, unsigned long exponent) {
  unsigned long ret = 1;
  for (int i = 0; i < exponent; i++) {
    ret *= base;
  }
  return ret;
}

/**
 * Prompt the user for a value in hex. The value is shown with 0x prepended
 * and the user may only select 0-f for each digit.
 */
unsigned long getHexValue(char sTitle[], unsigned long defValue) {
  unsigned long retValue = defValue;
  byte cursorPos = 0; 
  boolean cursorState = 0; //0 = Unselected, 1 = Selected
  
  byte digits = 2;

  Encoder.setMin(0);
  Encoder.setMax(digits);
  Encoder.setCount(0);

  LCD.setCustChar_P(0, CHARFIELD);
  LCD.setCustChar_P(1, CHARCURSOR);
  LCD.setCustChar_P(2, CHARSEL);
  
  byte valuePos = (20 - digits + 1) / 2;
  LCD.clear();
  LCD.print(0, 0, sTitle);
  LCD.print_P(3, 9, OK);
  boolean redraw = 1;
  
  unsigned long multiplier = ulpow(16, (digits - cursorPos - 1));
  
  while(1) {
    int encValue;
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    }
    else {
      encValue = Encoder.change();
    }
    if (encValue >= 0) {
      if (cursorState) {
        retValue -= (retValue / multiplier % 16 * multiplier);
        retValue += (encValue * multiplier);
      } 
      else {
        cursorPos = encValue;
        multiplier = ulpow(16, (digits - cursorPos - 1));
        for (byte i = valuePos - 1; i < valuePos - 1 + digits; i++) {
          LCD.writeCustChar(2, i, 0);
        }
        LCD.print(3, 8, " ");
        LCD.print(3, 11, " ");
        if (cursorPos == digits) {
          LCD.print(3, 8, ">");
          LCD.print(3, 11, "<");
        } 
        else {
          if (cursorPos < digits) {
            LCD.writeCustChar(2, valuePos + cursorPos - 1, 1);
          }
          else {
            LCD.writeCustChar(2, valuePos + cursorPos, 1);
          }
        }
      }
      sprintf(buf, "%02x", retValue);
      LCD.print(1, valuePos - 1, buf);
      LCD.print(1, valuePos - 3, "0x");
    }
    
    if (Encoder.ok()) {
      if (cursorPos == digits) {
        break;
      }
      else {
        cursorState = cursorState ^ 1;
        if (cursorState) {
          if (cursorPos < digits) {
            LCD.writeCustChar(2, valuePos + cursorPos - 1, 2);
          }
          else {
            LCD.writeCustChar(2, valuePos + cursorPos, 2);
          }
          Encoder.setMin(0);
          Encoder.setMax(0x0f);
          Encoder.setCount(retValue / multiplier % 16);
        } 
        else {
          if (cursorPos < digits) {
            LCD.writeCustChar(2, valuePos + cursorPos - 1, 1);
          }
          else LCD.writeCustChar(2, valuePos + cursorPos, 1);
          Encoder.setMin(0);
          Encoder.setMax(digits);
          Encoder.setCount(cursorPos);
        }
      }
    } 
    else if (Encoder.cancel()) {
      retValue = defValue;
      break;
    }
    brewCore();
  }
  return retValue;
}

void printTimer(byte timer, byte iRow, byte iCol) {
  if (timerValue[timer] > 0 && !timerStatus[timer]) LCD.print(iRow, iCol, "PAUSED");
  else if (alarmStatus || timerStatus[timer]) {
    byte hours = timerValue[timer] / 3600000;
    byte mins = (timerValue[timer] - hours * 3600000) / 60000;
    byte secs = (timerValue[timer] - hours * 3600000 - mins * 60000) / 1000;

    //Update LCD once per second
    if (millis() - timerLastPrint >= 1000) {
      timerLastPrint = millis();
      LCD.rPad(iRow, iCol, "", 6, ' ');
      LCD.print_P(iRow, iCol+2, PSTR(":  :"));
      LCD.lPad(iRow, iCol, itoa(hours, buf, 10), 2, '0');
      LCD.lPad(iRow, iCol + 3, itoa(mins, buf, 10), 2, '0');
      LCD.lPad(iRow, iCol + 6, itoa(secs, buf, 10), 2, '0');
      if (alarmStatus) LCD.writeCustChar(iRow, iCol + 8, 5);
    }
  } else LCD.rPad(iRow, iCol, "", 9, ' ');
}

int getTimerValue(const char *sTitle, int defMins, byte maxHours) {
  byte hours = defMins / 60;
  byte mins = defMins - hours * 60;
  byte cursorPos = 0; //0 = Hours, 1 = Mins, 2 = OK
  boolean cursorState = 0; //0 = Unselected, 1 = Selected
  Encoder.setMin(0);
  Encoder.setMax(2);
  Encoder.setCount(0);
  
  LCD.clear();
  LCD.print_P(0,0,sTitle);
  LCD.print(1, 7, "(hh:mm)");
  LCD.print(2, 10, ":");
  LCD.print_P(3, 9, OK);
  boolean redraw = 1;
  int encValue;
 
  while(1) {
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    } else encValue = Encoder.change();
    if (encValue >= 0) {
      if (cursorState) {
        if (cursorPos) mins = encValue; else hours = encValue;
      } else {
        cursorPos = encValue;
        switch (cursorPos) {
          case 0: //hours
            LCD.print(2, 7, ">");
            LCD.print(2, 13, " ");
            LCD.print(3, 8, " ");
            LCD.print(3, 11, " ");
            break;
          case 1: //mins
            LCD.print(2, 7, " ");
            LCD.print(2, 13, "<");
            LCD.print(3, 8, " ");
            LCD.print(3, 11, " ");
            break;
          case 2: //OK
            LCD.print(2, 7, " ");
            LCD.print(2, 13, " ");
            LCD.print(3, 8, ">");
            LCD.print(3, 11, "<");
            break;
        }
      }
      LCD.lPad(2, 8, itoa(hours, buf, 10), 2, '0');
      LCD.lPad(2, 11, itoa(mins, buf, 10), 2, '0');
    }
    
    if (Encoder.ok()) {
      if (cursorPos == 2) return hours * 60 + mins;
      cursorState = cursorState ^ 1; //Toggles between value editing mode and cursor navigation.
      if (cursorState) {
        //Edition mode
        Encoder.setMin(0);
        if (cursorPos) {
          //Editing minutes
          Encoder.setMax(59);
          Encoder.setCount(mins); 
        } else {
          //Editing hours
          Encoder.setMax(maxHours);
          Encoder.setCount(hours);
        }
      } else {
        Encoder.setMin(0);
        Encoder.setMax(2);
        Encoder.setCount(cursorPos);
      }
    } else if (Encoder.cancel()) return -1; //This value will be validated in SetTimerValue. SetTimerValue will reject the storage of the timer value. 
    brewCore();
  }
}

void getString(const char *sTitle, char defValue[], byte chars) {
  char retValue[20];
  strcpy(retValue, defValue);
  
  //Right-Pad with spaces
  boolean doWipe = 0;
  for (byte i = 0; i < chars; i++) {
    if (retValue[i] < 32 || retValue[i] > 126) doWipe = 1;
    if (doWipe) retValue[i] = 32;
  }
  retValue[chars] = '\0';
  
  byte cursorPos = 0; 
  boolean cursorState = 0; //0 = Unselected, 1 = Selected
  Encoder.setMin(0);
  Encoder.setMax(chars);
  Encoder.setCount(0);


  LCD.setCustChar_P(0, CHARFIELD);
  LCD.setCustChar_P(1, CHARCURSOR);
  LCD.setCustChar_P(2, CHARSEL);
  
  LCD.clear();
  LCD.print_P(0,0,sTitle);
  LCD.print_P(3, 9, OK);
  boolean redraw = 1;
  while(1) {
    int encValue;
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    }
    else encValue = Encoder.change();
    if (encValue >= 0) {
      if (cursorState) {
        retValue[cursorPos] = enc2ASCII(encValue);
      } else {
        cursorPos = encValue;
        for (byte i = (20 - chars + 1) / 2 - 1; i < (20 - chars + 1) / 2 - 1 + chars; i++) LCD.writeCustChar(2, i, 0);
        LCD.print(3, 8, " ");
        LCD.print(3, 11, " ");
        if (cursorPos == chars) {
          LCD.print(3, 8, ">");
          LCD.print(3, 11, "<");
        } else {
          LCD.writeCustChar(2, (20 - chars + 1) / 2 + cursorPos - 1, 1);
        }
      }
      LCD.print(1, (20 - chars + 1) / 2 - 1, retValue);
    }
    
    if (Encoder.ok()) {
      if (cursorPos == chars) {
        strcpy(defValue, retValue);
        return;
      }
      else {
        cursorState = cursorState ^ 1;
        if (cursorState) {
          Encoder.setMin(0);
          Encoder.setMax(94);
          Encoder.setCount(ASCII2enc(retValue[cursorPos]));
          LCD.writeCustChar(2, (20 - chars + 1) / 2 + cursorPos - 1, 2);
        } else {
          Encoder.setMin(0);
          Encoder.setMax(chars);
          Encoder.setCount(cursorPos);
          LCD.writeCustChar(2, (20 - chars + 1) / 2 + cursorPos - 1, 1);
        }
      }
    } else if (Encoder.cancel()) return;
    brewCore();
  }
}

//Next two functions used to change order of charactor scroll to (space), A-Z, a-z, 0-9, symbols
byte ASCII2enc(byte charin) {
  if (charin == 32) return 0;
  else if (charin >= 65 && charin <= 90) return charin - 64;
  else if (charin >= 97 && charin <= 122) return charin - 70;
  else if (charin >= 48 && charin <= 57) return charin + 5;
  else if (charin >= 33 && charin <= 47) return charin + 30;
  else if (charin >= 58 && charin <= 64) return charin + 20;
  else if (charin >= 91 && charin <= 96) return charin - 6;
  else if (charin >= 123 && charin <= 126) return charin - 32;
}

byte enc2ASCII(byte charin) {
  if (charin == 0) return 32;
  else if (charin >= 1 && charin <= 26) return charin + 64;  //Scan uper case alphabet
  else if (charin >= 27 && charin <= 52) return charin + 70; //Scan lower case alphabet
  else if (charin >= 53 && charin <= 62) return charin - 5;  //Scan number
  else if (charin >= 63 && charin <= 77) return charin - 30; //Scan special character from space
  else if (charin >= 78 && charin <= 84) return charin - 20; //Scan special character :
  else if (charin >= 85 && charin <= 90) return charin + 6;  //Scan special character from [
  else if (charin >= 91 && charin <= 94) return charin + 32; //Scan special character from {
}

//*****************************************************************************************************************************
// System Setup Menus
//*****************************************************************************************************************************
#ifndef UI_NO_SETUP
void menuSetup() {
  menu setupMenu(3, 9);
  setupMenu.setItem_P(PSTR("Temperature Sensors"), 0);
  setupMenu.setItem_P(PSTR("Outputs"), 1);
  setupMenu.setItem_P(PSTR("Volume/Capacity"), 2);
  #ifdef PVOUT
    setupMenu.setItem_P(PSTR("Valve Profiles"), 3);
  #endif
  setupMenu.setItem_P(INIT_EEPROM, 4);
  #ifdef UI_DISPLAY_SETUP
    setupMenu.setItem_P(PSTR("Display"), 5);
  #endif
  #ifdef RGBIO8_ENABLE
  #ifdef RGBIO8_SETUP
    setupMenu.setItem_P(PSTR("RGB Setup"), 6);
  #endif
  #endif  
  #ifdef DIGITAL_INPUTS
    setupMenu.setItem_P(PSTR("Triggers"), 7);
  #endif
  setupMenu.setItem_P(EXIT, 255);
  
  while(1) {
    byte lastOption = scrollMenu("System Setup", &setupMenu);
    if (lastOption == 0) assignSensor();
    else if (lastOption == 1) cfgOutputs();
    else if (lastOption == 2) cfgVolumes();
    #ifdef PVOUT
      else if (lastOption == 3) cfgValves();
    #endif  
    else if (lastOption == 4) {
      LCD.clear();
      LCD.print_P(0, 0, PSTR("Reset Configuration?"));
      if (confirmChoice(INIT_EEPROM, 3)) UIinitEEPROM();
    }
    #ifdef UI_DISPLAY_SETUP
      else if (lastOption == 5) adjustLCD();
    #endif
    #ifdef RGBIO8_ENABLE
    #ifdef RGBIO8_SETUP
      else if (lastOption == 6) {
        cfgRgb();
      }
    #endif
    #endif  
    #ifdef DIGITAL_INPUTS
      else if (lastOption == 7) cfgTriggers();
    #endif
    else return;
  }
}

#ifdef RGBIO8_ENABLE
#ifdef RGBIO8_SETUP

void cfgRgb() {
  byte targetAddr = 0x7f;
  boolean identifyOn = false;
  
  menu m(3, 5);
  RGBIO8 rgb;
  rgb.begin(0, targetAddr);

  while (1) {
    m.setItem_P(PSTR("Target Addr: "), 0);
    sprintf(buf, "0x%02x", targetAddr);
    m.appendItem(buf, 0);
    m.setItem_P(PSTR("Set Address"), 1);
    m.setItem_P(PSTR("Identify: "), 2);
    m.appendItem((char*) (identifyOn ? "On" : "Off"), 2);
    m.setItem_P(PSTR("Restart"), 3);
    m.setItem_P(EXIT, 255);
    byte lastOption = scrollMenu("RGB Setup", &m);
    if (lastOption == 0) {
      targetAddr = (byte) getHexValue("Target Address", targetAddr);
    }
    else if (lastOption == 1) {
      byte address = (byte) getHexValue("Set Address", targetAddr);
      RGBIO8 rgb;
      rgb.begin(0, targetAddr);
      rgb.setAddress(address);
      delay(250);
      rgb.restart();
      targetAddr = address;
    }
    else if (lastOption == 2) {
      RGBIO8 rgb;
      rgb.begin(0, targetAddr);
      identifyOn = !identifyOn;
      rgb.setIdMode(identifyOn);
    }
    else if (lastOption == 3) {
      RGBIO8 rgb;
      rgb.begin(0, targetAddr);
      rgb.restart();
    }
    else if (lastOption == 255) {
      return;
    }
  }
}

#endif
#endif

void assignSensor() {
  menu tsMenu(1, 9);
  tsMenu.setItem_P(HLTDESC, TS_HLT);
  tsMenu.setItem_P(MASHDESC, TS_MASH);
  tsMenu.setItem_P(PSTR("Brew Kettle"), TS_KETTLE);
  tsMenu.setItem_P(PSTR("H2O In"), TS_H2OIN);
  tsMenu.setItem_P(PSTR("H2O Out"), TS_H2OOUT);
  tsMenu.setItem_P(PSTR("Beer Out"), TS_BEEROUT);
  tsMenu.setItem_P(PSTR("AUX 1"), TS_AUX1);
  tsMenu.setItem_P(PSTR("AUX 2"), TS_AUX2);
  tsMenu.setItem_P(PSTR("AUX 3"), TS_AUX3);
  #ifdef RIMS_TEMP_SENSOR
    tsMenu.setItem_P(PSTR("RIMS"), RIMS_TEMP_SENSOR);
  #endif
  
  Encoder.setMin(0);
  Encoder.setMax(tsMenu.getItemCount() - 1);
  Encoder.setCount(tsMenu.getSelected());
  
  boolean redraw = 1;
  int encValue;
  
  while (1) {
    if (redraw) {
      //First time entry or back from the sub-menu.
      redraw = 0;
      encValue = Encoder.getCount();
    } else encValue = Encoder.change();
    
    if (encValue >= 0) {
      tsMenu.setSelected(encValue);
      //The user has navigated toward a new temperature probe screen.
      LCD.clear();
      LCD.print_P(0, 0, PSTR("Assign Temp Sensor"));
      LCD.center(1, 0, tsMenu.getSelectedRow(buf), 20);
      for (byte i=0; i<8; i++) LCD.lPad(2,i*2+2,itoa(tSensor[tsMenu.getValue()][i], buf, 16), 2, '0');
    }
    displayAssignSensorTemp(tsMenu.getValue()); //Update each loop

    if (Encoder.cancel()) return;
    else if (Encoder.ok()) {
      encValue = Encoder.getCount();
      //Pop-Up Menu
      menu tsOpMenu(3, 4);
      tsOpMenu.setItem_P(PSTR("Scan Bus"), 0);
      tsOpMenu.setItem_P(PSTR("Delete Address"), 1);
      tsOpMenu.setItem_P(CANCEL, 2);
      tsOpMenu.setItem_P(EXIT, 255);
      byte selected = scrollMenu(tsMenu.getSelectedRow(buf), &tsOpMenu);
      if (selected == 0) {
        LCD.clear();
        LCD.center(0, 0, tsMenu.getSelectedRow(buf), 20);
        LCD.print_P(1,0,PSTR("Disconnect all other"));
        LCD.print_P(2,2,PSTR("temp sensors now"));
        {
          if (confirmChoice(CONTINUE, 3)) {
            byte addr[8] = {0, 0, 0, 0, 0, 0, 0, 0};
            getDSAddr(addr);
            setTSAddr(encValue, addr);
          }
        }
      } else if (selected == 1) {
        byte addr[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        setTSAddr(encValue, addr);
      }
      else if (selected > 2) return;

      Encoder.setMin(0);
      Encoder.setMax(tsMenu.getItemCount() - 1);
      Encoder.setCount(tsMenu.getSelected());
      redraw = 1;
    }
    brewCore();
  }
}

void displayAssignSensorTemp(int sensor) {
  LCD.print_P(3, 10, TUNIT); 
  if (temp[sensor] == BAD_TEMP) {
    LCD.print_P(3, 7, PSTR("---"));
  } else {
    LCD.lPad(3, 7, itoa(temp[sensor] / 100, buf, 10), 3, ' ');
  }
}


#define OPT_MODE 0
#define OPT_CYCLE 1
#define OPT_GAIN 2
#define OPT_HYSTERESIS 3
#define OPT_PRESS 4
#define OPT_SENSOR 5
#define OPT_ZERO 6
#define OPT_BOILTEMP 7
#define OPT_BOILPWR 8
    
void cfgOutputs() {
  menu outputMenu(3, 21);
  
  while(1) {
    //Note: Menu values represent two 4-bit values
    //High-nibble = vessel: VS_HLT-VS_STEAM/VS_PUMP
    //Low-nibble = menu item: OPT_XXXXXXXX (see #defines above)
    
    if (PIDEnabled[VS_HLT]) outputMenu.setItem_P(PSTR("HLT Mode: PID"), VS_HLT<<4 | OPT_MODE); else outputMenu.setItem_P(PSTR("HLT Mode: On/Off"), VS_HLT<<4 | OPT_MODE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_HLT])), VS_HLT<<4 | OPT_CYCLE);
    outputMenu.appendItem_P(PIDCYCLE, VS_HLT<<4 | OPT_CYCLE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_HLT])), VS_HLT<<4 | OPT_GAIN);
    outputMenu.appendItem_P(PIDGAIN, VS_HLT<<4 | OPT_GAIN);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_HLT])), VS_HLT<<4 | OPT_HYSTERESIS);
    outputMenu.appendItem_P(HYSTERESIS, VS_HLT<<4 | OPT_HYSTERESIS);
    
    if (PIDEnabled[VS_MASH]) outputMenu.setItem_P(PSTR("Mash Mode: PID"), VS_MASH<<4 | OPT_MODE); else outputMenu.setItem_P(PSTR("Mash Mode: On/Off"), VS_MASH<<4 | OPT_MODE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_MASH])), VS_MASH<<4 | OPT_CYCLE);
    outputMenu.appendItem_P(PIDCYCLE, VS_MASH<<4 | OPT_CYCLE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_MASH])), VS_MASH<<4 | OPT_GAIN);
    outputMenu.appendItem_P(PIDGAIN, VS_MASH<<4 | OPT_GAIN);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_MASH])), VS_MASH<<4 | OPT_HYSTERESIS);
    outputMenu.appendItem_P(HYSTERESIS, VS_MASH<<4 | OPT_HYSTERESIS);
    
    if (PIDEnabled[VS_KETTLE]) outputMenu.setItem_P(PSTR("Kettle Mode: PID"), VS_KETTLE<<4 | OPT_MODE); else outputMenu.setItem_P(PSTR("Kettle Mode: On/Off"), VS_KETTLE<<4 | OPT_MODE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_KETTLE])), VS_KETTLE<<4 | OPT_CYCLE);
    outputMenu.appendItem_P(PIDCYCLE, VS_KETTLE<<4 | OPT_CYCLE);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_KETTLE])), VS_KETTLE<<4 | OPT_GAIN);
    outputMenu.appendItem_P(PIDGAIN, VS_KETTLE<<4 | OPT_GAIN);
    outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_KETTLE])), VS_KETTLE<<4 | OPT_HYSTERESIS);
    outputMenu.appendItem_P(HYSTERESIS, VS_KETTLE<<4 | OPT_HYSTERESIS);
    
    outputMenu.setItem_P(PSTR("Boil Temp: "), OPT_BOILTEMP);
    vftoa(getBoilTemp(), buf, SETPOINT_DIV, 1);
    truncFloat(buf, 5);
    outputMenu.appendItem(buf, OPT_BOILTEMP);
    outputMenu.appendItem_P(TUNIT, OPT_BOILTEMP);
    
    outputMenu.setItem_P(PSTR("Boil Power: "), OPT_BOILPWR);
    outputMenu.appendItem(itoa(boilPwr, buf, 10), OPT_BOILPWR);
    outputMenu.appendItem("%", OPT_BOILPWR);
    
    #ifdef PID_FLOW_CONTROL
      if (PIDEnabled[VS_PUMP]) outputMenu.setItem_P(PSTR("Sparge Pump: PID"), VS_PUMP<<4 | OPT_MODE); else outputMenu.setItem_P(PSTR("Sparge Pump: On/Off"), VS_PUMP<<4 | OPT_MODE);
      outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_PUMP])), VS_PUMP<<4 | OPT_GAIN);
      outputMenu.appendItem_P(PIDGAIN, VS_PUMP<<4 | OPT_GAIN);
      outputMenu.setItem_P(PUMPFLOW, VS_PUMP<<4 | OPT_PRESS);
    #elif defined USESTEAM
      if (PIDEnabled[VS_STEAM]) outputMenu.setItem_P(PSTR("Steam Mode: PID"), VS_STEAM<<4 | OPT_MODE); else outputMenu.setItem_P(PSTR("Steam Mode: On/Off"), VS_STEAM<<4 | OPT_MODE);
      outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_STEAM])), VS_STEAM<<4 | OPT_CYCLE);
      outputMenu.appendItem_P(PIDCYCLE, VS_STEAM<<4 | OPT_CYCLE);
      outputMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[VS_STEAM])), VS_STEAM<<4 | OPT_GAIN);
      outputMenu.appendItem_P(PIDGAIN, VS_STEAM<<4 | OPT_GAIN);
      outputMenu.setItem_P(STEAMPRESS, VS_STEAM<<4 | OPT_PRESS);
      outputMenu.setItem_P(STEAMSENSOR, VS_STEAM<<4 | OPT_SENSOR);
      outputMenu.setItem_P(STEAMZERO, VS_STEAM<<4 | OPT_ZERO);
    #endif
    outputMenu.setItem_P(EXIT, 255);
    
    byte lastOption = scrollMenu("Output Settings", &outputMenu);
    byte vessel = lastOption>>4;
    char title[20];
    #ifdef PID_FLOW_CONTROL
      if (vessel >= VS_HLT && vessel <= VS_PUMP)
    #elif defined USESTEAM
      if (vessel >= VS_HLT && vessel <= VS_STEAM)
    #else
      if (vessel >= VS_HLT && vessel <= VS_KETTLE)
    #endif
        strcpy_P(title, (char*)pgm_read_word(&(TITLE_VS[vessel])));
    
    if ((lastOption & B00001111) == OPT_MODE) {
      if (PIDEnabled[vessel]) setPIDEnabled(vessel, 0);
      else setPIDEnabled(vessel, 1);
    } else if ((lastOption & B00001111) == OPT_CYCLE) {
      strcat_P(title, PIDCYCLE);
      setPIDCycle(vessel, getValue(title, PIDCycle[vessel], 10, 255, SEC));
      pid[vessel].SetOutputLimits(0, PIDCycle[vessel] * pidLimits[vessel]);
      
    } else if ((lastOption & B00001111) == OPT_GAIN) {
      strcat_P(title, PIDGAIN);
      setPIDGain(title, vessel);
    } else if ((lastOption & B00001111) == OPT_HYSTERESIS) {
      strcat_P(title, HYSTERESIS);
      setHysteresis(vessel, getValue(title, hysteresis[vessel], 10, 255, TUNIT));
#if defined USESTEAM || defined PID_FLOW_CONTROL      
    } else if ((lastOption & B00001111) == OPT_PRESS) {
      #ifdef PID_FLOW_CONTROL
        setSteamTgt(getValue_P(PUMPFLOW, getSteamTgt(), 1, 255, PUNIT));
      #else
        setSteamTgt(getValue_P(STEAMPRESS, getSteamTgt(), 1, 255, PUNIT));
      #endif      
#endif
#ifdef USESTEAM
    } else if ((lastOption & B00001111) == OPT_SENSOR) {
      setSteamPSens(getValue_P(STEAMSENSOR, steamPSens, 10, 9999, PSTR("mV/kPa")));
    } else if ((lastOption & B00001111) == OPT_ZERO) {
      LCD.clear();
      LCD.print_P(0, 0, STEAMZERO);
      LCD.print_P(1,2,PSTR("Calibrate Zero?"));
      if (confirmChoice(CONTINUE, 3)) setSteamZero(analogRead(STEAMPRESS_APIN));
#endif
    } else if ((lastOption & B00001111) == OPT_BOILTEMP) {
      setBoilTemp(getValue_P(PSTR("Boil Temp"), getBoilTemp(), SETPOINT_DIV, 255, TUNIT));
    } else if ((lastOption & B00001111) == OPT_BOILPWR) {
      setBoilPwr(getValue_P(PSTR("Boil Power"), boilPwr, 1, min(PIDLIMIT_KETTLE, 100), PSTR("%")));
    } else return;
    brewCore();
  } 
}

void setPIDGain(char sTitle[], byte vessel) {
  byte retP = pid[vessel].GetP_Param();
  byte retI = pid[vessel].GetI_Param();
  byte retD = pid[vessel].GetD_Param();
  byte cursorPos = 0; //0 = p, 1 = i, 2 = d, 3 = OK
  boolean cursorState = 0; //0 = Unselected, 1 = Selected
  Encoder.setMin(0);
  Encoder.setMax(3);
  Encoder.setCount(0);
  
  LCD.clear();
  LCD.print(0,0,sTitle);
  LCD.print_P(1, 0, PSTR("P:     I:     D:    "));
  LCD.print_P(3, 8, OK);
  boolean redraw = 1;
  while(1) {
    int encValue;
    if (redraw) {
      redraw = 0;
      encValue = Encoder.getCount();
    }
    else encValue = Encoder.change();
    if (encValue >= 0) {
      if (cursorState) {
        if (cursorPos == 0) retP = encValue;
        else if (cursorPos == 1) retI = encValue;
        else if (cursorPos == 2) retD = encValue;
      } else {
        cursorPos = encValue;
        if (cursorPos == 0) {
          LCD.print_P(1, 2, PSTR(">"));
          LCD.print_P(1, 9, PSTR(" "));
          LCD.print_P(1, 16, PSTR(" "));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 10, PSTR(" "));
        } else if (cursorPos == 1) {
          LCD.print_P(1, 2, PSTR(" "));
          LCD.print_P(1, 9, PSTR(">"));
          LCD.print_P(1, 16, PSTR(" "));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 10, PSTR(" "));
        } else if (cursorPos == 2) {
          LCD.print_P(1, 2, PSTR(" "));
          LCD.print_P(1, 9, PSTR(" "));
          LCD.print_P(1, 16, PSTR(">"));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 10, PSTR(" "));
        } else if (cursorPos == 3) {
          LCD.print_P(1, 2, PSTR(" "));
          LCD.print_P(1, 9, PSTR(" "));
          LCD.print_P(1, 16, PSTR(" "));
          LCD.print_P(3, 7, PSTR(">"));
          LCD.print_P(3, 10, PSTR("<"));
        }
      }
      LCD.lPad(1, 3, itoa(retP, buf, 10), 3, ' ');
      LCD.lPad(1, 10, itoa(retI, buf, 10), 3, ' ');
      LCD.lPad(1, 17, itoa(retD, buf, 10), 3, ' ');
    }
    if (Encoder.ok()) {
      if (cursorPos == 3) {
        setPIDp(vessel, retP);
        setPIDi(vessel, retI);
        setPIDd(vessel, retD);
#ifdef DEBUG_PID_GAIN
        logDebugPIDGain(vessel);
#endif
        break;
      }
      cursorState = cursorState ^ 1;
      if (cursorState) {
        Encoder.setMin(0);
        Encoder.setMax(255);
        if (cursorPos == 0) Encoder.setCount(retP);
        else if (cursorPos == 1) Encoder.setCount(retI);
        else if (cursorPos == 2) Encoder.setCount(retD);
      } else {
        Encoder.setMin(0);
        Encoder.setMax(3);
        Encoder.setCount(cursorPos);
      }
    } else if (Encoder.cancel()) break;
    brewCore();
  }
  brewCore();
}

#define OPT_CAPACITY 0
#define OPT_DEADSPACE 1
#define OPT_CALIBRATION 2
#define OPT_EVAP 3

void cfgVolumes() {
  //Note: Menu values represent two 4-bit values
  //High-nibble = vessel: VS_HLT-VS_STEAM/VS_PUMP
  //Low-nibble = menu item: OPT_XXXXXXXX (see #defines above)
  menu volMenu(3, 11);
  for (byte vessel = VS_HLT; vessel <= VS_KETTLE; vessel++) {
    volMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[vessel])), vessel<<4 | OPT_CAPACITY);
    volMenu.appendItem_P(CAPACITY, vessel<<4 | OPT_CAPACITY);
    
    volMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[vessel])), vessel<<4 | OPT_DEADSPACE);
    volMenu.appendItem_P(DEADSPACE, vessel<<4 | OPT_DEADSPACE);
    
    volMenu.setItem_P((char*)pgm_read_word(&(TITLE_VS[vessel])), vessel<<4 | OPT_CALIBRATION);
    volMenu.appendItem_P(CALIBRATION, vessel<<4 | OPT_CALIBRATION);
  }
  volMenu.setItem_P(PSTR("Evaporation Rate"), OPT_EVAP);
  volMenu.setItem_P(EXIT, 255);

  while(1) {
    byte lastOption = scrollMenu("Volume/Capacity", &volMenu);
    byte vessel = lastOption>>4;

    char title[20];
    #ifdef PID_FLOW_CONTROL
      if (vessel >= VS_HLT && vessel <= VS_PUMP)
    #elif defined USESTEAM
      if (vessel >= VS_HLT && vessel <= VS_STEAM)
    #else
      if (vessel >= VS_HLT && vessel <= VS_KETTLE)
    #endif
        strcpy_P(title, (char*)pgm_read_word(&(TITLE_VS[vessel])));

    if ((lastOption & B00001111) == OPT_CAPACITY) {
      strcat_P(title, CAPACITY);
      setCapacity(vessel, getValue(title, getCapacity(vessel), 1000, 9999999, VOLUNIT));
    }
    else if ((lastOption & B00001111) == OPT_DEADSPACE) {
      strcat_P(title, DEADSPACE);
      setVolLoss(vessel, getValue(title, getVolLoss(vessel), 1000, 65535, VOLUNIT));
    }
    else if ((lastOption & B00001111) == OPT_CALIBRATION) {
      strcat_P(title, CALIBRATION);
      volCalibMenu(title, vessel);
    }
    #ifdef BOIL_OFF_GALLONS
	 #ifdef USEMETRIC
	else if ((lastOption & B00001111) == OPT_EVAP) setEvapRate(getValue_P(PSTR("Evaporation Rate"), getEvapRate(), 1, 255, PSTR("l/hr")));
	 #else
    else if ((lastOption & B00001111) == OPT_EVAP) setEvapRate(getValue_P(PSTR("Evaporation Rate"), getEvapRate(), 1, 255, PSTR("0.1g/hr")));
	 #endif
    #else
    else if ((lastOption & B00001111) == OPT_EVAP) setEvapRate(getValue_P(PSTR("Evaporation Rate"), getEvapRate(), 1, 100, PSTR("%/hr")));
    #endif
    else return;
  } 
}

void volCalibMenu(char sTitle[], byte vessel) {
  menu calibMenu(3, 11);    
  while(1) {
    for(byte i = 0; i < 10; i++) {
      if (calibVals[vessel][i] > 0) {
        vftoa(calibVols[vessel][i], buf, 1000, 1);
        truncFloat(buf, 6);
        calibMenu.setItem(buf, i);
        calibMenu.appendItem_P(SPACE, i);
        calibMenu.appendItem_P(VOLUNIT, i);
        calibMenu.appendItem_P(PSTR(" ("), i);
        calibMenu.appendItem(itoa(calibVals[vessel][i], buf, 10), i);
        calibMenu.appendItem_P(PSTR(")"), i);
      } else calibMenu.setItem_P(PSTR("OPEN"), i);
    }
    calibMenu.setItem_P(EXIT, 255);
    byte lastOption = scrollMenu(sTitle, &calibMenu);
    if (lastOption > 9) return; 
    else {
      if (calibVals[vessel][lastOption] > 0) {
        //There is already a value saved for that volume. 
        //Review the saved value for the selected volume value.
        volCalibEntryMenu(vessel, lastOption);
      } else {
        #ifdef DEBUG_VOLCALIB
          logVolCalib("Value before dialog:", analogRead(vSensor[vessel]));
        #endif

        setVolCalib(vessel, lastOption, 0, getValue_P(PSTR("Current Volume:"), 0, 1000, 9999999, VOLUNIT)); //Set temporary the value to zero. It will be updated in the next step.
        volCalibEntryMenu(vessel, lastOption);

        #ifdef DEBUG_VOLCALIB
          logVolCalib("Value that was saved:", PROMreadInt(239 + vessel * 20 + lastOption * 2));
        #endif
      } 
    }
  }
}

//This function manages the volume value to calibrate. 
//The value can be updated or deleted. 
//Users can skip all actions by exiting. 
void volCalibEntryMenu(byte vessel, byte entry) {
  char sTitle[21] ="";
  menu calibMenu(3, 4);
  
  while(1) {
    vftoa(calibVols[vessel][entry], buf, 1000, 1);
    truncFloat(buf, 6);
    strcpy_P(sTitle, PSTR("Calibrate"));
    strcat_P(sTitle, SPACE);
    strcat(sTitle, buf);
    strcat_P(sTitle, SPACE);
    strcat_P(sTitle, VOLUNIT);
      
    unsigned int newSensorValue = GetCalibrationValue(vessel);
    
    calibMenu.setItem_P(PSTR("Update "), 0);
    calibMenu.appendItem(itoa(calibVals[vessel][entry], buf, 10), 0); //Show the currently saved value which can be zero.
    calibMenu.appendItem_P(PSTR(" To "), 0);
    calibMenu.appendItem(itoa(newSensorValue, buf, 10), 0); //Show the value to be saved. So users know what to expect.
    calibMenu.setItem_P(PSTR("Manual Entry"), 1);
    calibMenu.setItem_P(PSTR("Delete"), 2);
    calibMenu.setItem_P(EXIT, 255);
    
    byte lastOption = scrollMenu(sTitle, &calibMenu);

    if (lastOption == 0) {
      //Update the volume value.
      setVolCalib(vessel, entry, newSensorValue, calibVols[vessel][entry]); 
      return;
    } else if (lastOption == 1) {
      newSensorValue = (unsigned int) getValue_P(PSTR("Manual Volume Entry"), calibVals[vessel][entry], 1, 1023, PSTR(""));
      setVolCalib(vessel, entry, newSensorValue, calibVols[vessel][entry]); 
      return;    
    } else if (lastOption == 2) {
      //Delete the volume and value.
      if(confirmDel()) {
        setVolCalib(vessel, entry, 0, 0); 
        return;
      } 
    } else return;
  }
}

#ifdef PVOUT
  void cfgValves() {
    byte dispOrder[] = {
      VLV_FILLHLT,
      VLV_FILLMASH,
      VLV_HLTHEAT,
      VLV_HLTIDLE,
      VLV_MASHHEAT,
      VLV_MASHIDLE,
      VLV_ADDGRAIN,
      VLV_SPARGEIN,
      VLV_SPARGEOUT,
      VLV_KETTLEHEAT,
      VLV_KETTLEIDLE,
      VLV_HOPADD,
      VLV_KETTLELID,
      VLV_CHILLH2O,
      VLV_CHILLBEER,
      VLV_BOILRECIRC,
      VLV_DRAIN,
      VLV_USER1,
      VLV_USER2,
      VLV_USER3
    };
    menu vlvMenu(3, 21);
    for (byte profile = 0; profile < NUM_VLVCFGS; profile++) vlvMenu.setItem_P((char*)pgm_read_word(&(TITLE_VLV[dispOrder[profile]])), dispOrder[profile]);
    vlvMenu.setItem_P(EXIT, 255);
    while (1) {
      byte profile = scrollMenu("Valve Configuration", &vlvMenu);
      if (profile >= NUM_VLVCFGS) return;
      else setValveCfg(profile, cfgValveProfile(vlvMenu.getSelectedRow(buf), vlvConfig[profile]));
    }
  }
  
  unsigned long cfgValveProfile (char sTitle[], unsigned long defValue) {
    unsigned long retValue = defValue;
    //firstBit: The left most bit being displayed
    byte firstBit, encMax;
    
    encMax = PVOUT_COUNT + 1;
  
    Encoder.setMin(0);
    Encoder.setCount(0);
    Encoder.setMax(encMax);
    //(Set to MAX + 1 to force redraw)
    firstBit = encMax + 1;
    
    LCD.clear();
    LCD.print(0,0,sTitle);
    LCD.print_P(3, 3, PSTR("Test"));
    LCD.print_P(3, 13, PSTR("Save"));
    
    boolean redraw = 1;
    while(1) {
      int encValue;
      if (redraw) {
        redraw = 0;
        encValue = Encoder.getCount();
      }
      else encValue = Encoder.change();
      if (encValue >= 0) {
        if (encValue < firstBit || encValue > firstBit + 17) {
          if (encValue < firstBit) firstBit = encValue; else if (encValue < encMax - 1) firstBit = encValue - 17;
          for (byte i = firstBit; i < min(encMax - 1, firstBit + 18); i++) if (retValue & ((unsigned long)1<<i)) LCD.print_P(1, i - firstBit + 1, PSTR("1")); else LCD.print_P(1, i - firstBit + 1, PSTR("0"));
        }
  
        for (byte i = firstBit; i < min(encMax - 1, firstBit + 18); i++) {
          if (i < 9) itoa(i + 1, buf, 10); else buf[0] = i + 56;
          buf[1] = '\0';
          LCD.print(2, i - firstBit + 1, buf);
        }
  
        if (firstBit > 0) LCD.print_P(2, 0, PSTR("<")); else LCD.print_P(2, 0, PSTR(" "));
        if (firstBit + 18 < encMax - 1) LCD.print_P(2, 19, PSTR(">")); else LCD.print_P(2, 19, PSTR(" "));
        if (encValue == encMax - 1) {
          LCD.print_P(3, 2, PSTR(">"));
          LCD.print_P(3, 7, PSTR("<"));
          LCD.print_P(3, 12, PSTR(" "));
          LCD.print_P(3, 17, PSTR(" "));
        } else if (encValue == encMax) {
          LCD.print_P(3, 2, PSTR(" "));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 12, PSTR(">"));
          LCD.print_P(3, 17, PSTR("<"));
        } else {
          LCD.print_P(3, 2, PSTR(" "));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 12, PSTR(" "));
          LCD.print_P(3, 17, PSTR(" "));
          LCD.print_P(2, encValue - firstBit + 1, PSTR("^"));
        }
      }
      
      if (Encoder.ok()) {
        encValue = Encoder.getCount();
        if (encValue == encMax) return retValue;
        else if (encValue == encMax - 1) {
          //Test Profile
          Valves.set(retValue);
          LCD.print_P(3, 2, PSTR("["));
          LCD.print_P(3, 7, PSTR("]"));
          LCD.update();
          while (!Encoder.ok()) {
#ifdef HEARTBEAT
            heartbeat();
#endif
            delay(50);
          }
          Valves.set(0);
          redraw = 1;
        } else {
          retValue = retValue ^ ((unsigned long)1<<encValue);
          for (byte i = firstBit; i < min(encMax - 1, firstBit + 18); i++) if (retValue & ((unsigned long)1<<i)) LCD.print_P(1, i - firstBit + 1, PSTR("1")); else LCD.print_P(1, i - firstBit + 1, PSTR("0"));
        }
      } else if (Encoder.cancel()) return defValue;
      brewCore();
    }
  }
#endif

#ifdef UI_DISPLAY_SETUP
  void adjustLCD() {
    byte cursorPos = 0; //0 = brightness, 1 = contrast, 2 = cancel, 3 = save
    boolean cursorState = 0; //0 = Unselected, 1 = Selected

    Encoder.setMin(0);
    Encoder.setCount(0);
    Encoder.setMax(3);
    
    LCD.clear();
    LCD.print_P(0,0,PSTR("Adjust LCD"));
    LCD.print_P(1, 1, PSTR("Brightness:"));
    LCD.print_P(2, 3, PSTR("Contrast:"));
    LCD.print_P(3, 1, PSTR("Cancel"));
    LCD.print_P(3, 15, PSTR("Save"));
    byte bright = LCD.getBright();
    byte contrast = LCD.getContrast();
    byte origBright = bright;
    byte origContrast = contrast;
    boolean redraw = 1;
    while(1) {
      int encValue;
      if (redraw) {
        redraw = 0;
        encValue = Encoder.getCount();
      }
      else encValue = Encoder.change();
      if (encValue >= 0) {
        if (cursorState) {
          if (cursorPos == 0) { 
            bright = encValue;
            LCD.setBright(bright);
          } else if (cursorPos == 1) {
            contrast = encValue;
            LCD.setContrast(contrast);
          }
        } else {
          cursorPos = encValue;
          LCD.print_P(1, 12, PSTR(" "));
          LCD.print_P(1, 16, PSTR(" "));
          LCD.print_P(2, 12, PSTR(" "));
          LCD.print_P(2, 16, PSTR(" "));
          LCD.print_P(3, 0, PSTR(" "));
          LCD.print_P(3, 7, PSTR(" "));
          LCD.print_P(3, 14, PSTR(" "));
          LCD.print_P(3, 19, PSTR(" "));
          if (cursorPos == 0) {
            LCD.print_P(1, 12, PSTR(">"));
            LCD.print_P(1, 16, PSTR("<"));
          } else if (cursorPos == 1) {
            LCD.print_P(2, 12, PSTR(">"));
            LCD.print_P(2, 16, PSTR("<"));
          } else if (cursorPos == 2) {
            LCD.print_P(3, 0, PSTR(">"));
            LCD.print_P(3, 7, PSTR("<"));
          } else if (cursorPos == 3) {
            LCD.print_P(3, 14, PSTR(">"));
            LCD.print_P(3, 19, PSTR("<"));
          }
        }
        LCD.lPad(1, 13, itoa(bright, buf, 10), 3, ' ');
        LCD.lPad(2, 13, itoa(contrast, buf, 10), 3, ' ');
      }
      if (Encoder.ok()) {
        if (cursorPos == 2) {
          LCD.setBright(origBright);
          LCD.setContrast(origContrast);
          return;
        }
        else if (cursorPos == 3) {
          LCD.saveConfig();
          return;
        }
        cursorState = cursorState ^ 1;
        if (cursorState) {
          Encoder.setMin(0);
          Encoder.setMax(255);
          if (cursorPos == 0) Encoder.setCount(bright);
          else if (cursorPos == 1) Encoder.setCount(contrast);
        } else {
          Encoder.setMin(0);
          Encoder.setMax(3);
          Encoder.setCount(cursorPos);
        }
      } else if (Encoder.cancel()) return;
      brewCore();
    }
  }
#endif //#ifdef UI_DISPLAY_SETUP

#ifdef DIGITAL_INPUTS
  void cfgTriggers() {
    menu triggerMenu(3, 6);
   
    while(1) {
      triggerMenu.setItem_P(PSTR("E-Stop: "), 0);
      triggerMenu.setItem_P(PSTR("Sparge Max: "), 1);
      triggerMenu.setItem_P(PSTR("HLT Min: "), 2);
      triggerMenu.setItem_P(PSTR("Mash Min: "), 3);
      triggerMenu.setItem_P(PSTR("Kettle Min: "), 4);
      triggerMenu.setItem_P(PSTR("Exit"), 255);
      for (byte i = 0; i < 5; i++) {
        if (getTriggerPin(i)) triggerMenu.appendItem(itoa(getTriggerPin(i), buf, 10), i);
        else triggerMenu.appendItem_P(PSTR("None"), i);
      }
      
      byte lastOption = scrollMenu("Trigger Assignment", &triggerMenu);
      if (lastOption < 5) setTriggerPin(lastOption, getValue_P(PSTR("Input Pin (0=None):"), getTriggerPin(lastOption), 1, DIGIN_COUNT, PSTR("")));
      else return;
    }
  }
#endif

#endif //#ifndef UI_NO_SETUP

#endif //#ifndef NOUI
