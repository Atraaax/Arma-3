/**
* Generated by LEA for Arma 3
* Version: 2.0.17
* Sun May 11 22:07:52 CEST 2014
* Mission file name: TFAR-Test.Altis
* Mission name: TFAR-Test.Altis
* Required mods:
* + ArmA 3
* 
* Call the script: _dummy = [] execvm "lea\loadoutServer.sqf";
* 
*/

/**
* Loadout for crates
*/

//Empty, nothing to do. unit box_scopes
//Empty, nothing to do. unit box_weapon
//Empty, nothing to do. unit box_ammo

/**
* Loadout for soldiers units
*/

if (!isNil "Ausbilder") then {
removeallweapons Ausbilder;
removeallassigneditems Ausbilder;
removeHeadgear Ausbilder;
removeBackpack Ausbilder;
removeVest Ausbilder;

Ausbilder addWeapon "ItemMap";
Ausbilder addWeapon "ItemWatch";
Ausbilder addWeapon "ItemCompass";
Ausbilder addWeapon "ItemGPS";
Ausbilder addWeapon "H_MilCap_dgtl";
Ausbilder addWeapon "Binocular";
Ausbilder addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Ausbilder);
clearMagazineCargoGlobal (vestContainer Ausbilder);
clearWeaponCargoGlobal (vestContainer Ausbilder);
clearItemCargoGlobal (uniformContainer Ausbilder);
clearMagazineCargoGlobal (uniformContainer Ausbilder);
clearWeaponCargoGlobal (uniformContainer Ausbilder);
if (count weapons Ausbilder > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Ausbilder) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Ausbilder selectWeapon (_muzzles select 0);
  }
  else {
     Ausbilder selectWeapon _type;
  };
};
};

if (!isNil "Soldat_1") then {
removeallweapons Soldat_1;
removeallassigneditems Soldat_1;
removeHeadgear Soldat_1;
removeBackpack Soldat_1;
removeVest Soldat_1;

Soldat_1 addWeapon "ItemMap";
Soldat_1 addWeapon "ItemWatch";
Soldat_1 addWeapon "ItemCompass";
Soldat_1 addWeapon "ItemGPS";
Soldat_1 addWeapon "H_Booniehat_grn";
Soldat_1 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_1);
clearMagazineCargoGlobal (vestContainer Soldat_1);
clearWeaponCargoGlobal (vestContainer Soldat_1);
clearItemCargoGlobal (uniformContainer Soldat_1);
clearMagazineCargoGlobal (uniformContainer Soldat_1);
clearWeaponCargoGlobal (uniformContainer Soldat_1);
if (count weapons Soldat_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_1 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_1 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_2") then {
removeallweapons Soldat_2;
removeallassigneditems Soldat_2;
removeHeadgear Soldat_2;
removeBackpack Soldat_2;
removeVest Soldat_2;

Soldat_2 addWeapon "ItemMap";
Soldat_2 addWeapon "ItemWatch";
Soldat_2 addWeapon "ItemCompass";
Soldat_2 addWeapon "ItemGPS";
Soldat_2 addWeapon "H_Booniehat_grn";
Soldat_2 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_2);
clearMagazineCargoGlobal (vestContainer Soldat_2);
clearWeaponCargoGlobal (vestContainer Soldat_2);
clearItemCargoGlobal (uniformContainer Soldat_2);
clearMagazineCargoGlobal (uniformContainer Soldat_2);
clearWeaponCargoGlobal (uniformContainer Soldat_2);
if (count weapons Soldat_2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_2 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_2 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_3") then {
removeallweapons Soldat_3;
removeallassigneditems Soldat_3;
removeHeadgear Soldat_3;
removeBackpack Soldat_3;
removeVest Soldat_3;

Soldat_3 addWeapon "ItemMap";
Soldat_3 addWeapon "ItemWatch";
Soldat_3 addWeapon "ItemCompass";
Soldat_3 addWeapon "ItemGPS";
Soldat_3 addWeapon "H_Booniehat_grn";
Soldat_3 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_3);
clearMagazineCargoGlobal (vestContainer Soldat_3);
clearWeaponCargoGlobal (vestContainer Soldat_3);
clearItemCargoGlobal (uniformContainer Soldat_3);
clearMagazineCargoGlobal (uniformContainer Soldat_3);
clearWeaponCargoGlobal (uniformContainer Soldat_3);
if (count weapons Soldat_3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_3 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_3 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_4") then {
removeallweapons Soldat_4;
removeallassigneditems Soldat_4;
removeHeadgear Soldat_4;
removeBackpack Soldat_4;
removeVest Soldat_4;

Soldat_4 addWeapon "ItemMap";
Soldat_4 addWeapon "ItemWatch";
Soldat_4 addWeapon "ItemCompass";
Soldat_4 addWeapon "ItemGPS";
Soldat_4 addWeapon "H_Booniehat_grn";
Soldat_4 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_4);
clearMagazineCargoGlobal (vestContainer Soldat_4);
clearWeaponCargoGlobal (vestContainer Soldat_4);
clearItemCargoGlobal (uniformContainer Soldat_4);
clearMagazineCargoGlobal (uniformContainer Soldat_4);
clearWeaponCargoGlobal (uniformContainer Soldat_4);
if (count weapons Soldat_4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_4 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_4 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_5") then {
removeallweapons Soldat_5;
removeallassigneditems Soldat_5;
removeHeadgear Soldat_5;
removeBackpack Soldat_5;
removeVest Soldat_5;

Soldat_5 addWeapon "ItemMap";
Soldat_5 addWeapon "ItemWatch";
Soldat_5 addWeapon "ItemCompass";
Soldat_5 addWeapon "ItemGPS";
Soldat_5 addWeapon "H_Booniehat_grn";
Soldat_5 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_5);
clearMagazineCargoGlobal (vestContainer Soldat_5);
clearWeaponCargoGlobal (vestContainer Soldat_5);
clearItemCargoGlobal (uniformContainer Soldat_5);
clearMagazineCargoGlobal (uniformContainer Soldat_5);
clearWeaponCargoGlobal (uniformContainer Soldat_5);
if (count weapons Soldat_5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_5 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_5 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_6") then {
removeallweapons Soldat_6;
removeallassigneditems Soldat_6;
removeHeadgear Soldat_6;
removeBackpack Soldat_6;
removeVest Soldat_6;

Soldat_6 addWeapon "ItemMap";
Soldat_6 addWeapon "ItemWatch";
Soldat_6 addWeapon "ItemCompass";
Soldat_6 addWeapon "ItemGPS";
Soldat_6 addWeapon "H_Booniehat_grn";
Soldat_6 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_6);
clearMagazineCargoGlobal (vestContainer Soldat_6);
clearWeaponCargoGlobal (vestContainer Soldat_6);
clearItemCargoGlobal (uniformContainer Soldat_6);
clearMagazineCargoGlobal (uniformContainer Soldat_6);
clearWeaponCargoGlobal (uniformContainer Soldat_6);
if (count weapons Soldat_6 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_6) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_6 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_6 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_7") then {
removeallweapons Soldat_7;
removeallassigneditems Soldat_7;
removeHeadgear Soldat_7;
removeBackpack Soldat_7;
removeVest Soldat_7;

Soldat_7 addWeapon "ItemMap";
Soldat_7 addWeapon "ItemWatch";
Soldat_7 addWeapon "ItemCompass";
Soldat_7 addWeapon "ItemGPS";
Soldat_7 addWeapon "H_Booniehat_grn";
Soldat_7 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_7);
clearMagazineCargoGlobal (vestContainer Soldat_7);
clearWeaponCargoGlobal (vestContainer Soldat_7);
clearItemCargoGlobal (uniformContainer Soldat_7);
clearMagazineCargoGlobal (uniformContainer Soldat_7);
clearWeaponCargoGlobal (uniformContainer Soldat_7);
if (count weapons Soldat_7 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_7) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_7 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_7 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_8") then {
removeallweapons Soldat_8;
removeallassigneditems Soldat_8;
removeHeadgear Soldat_8;
removeBackpack Soldat_8;
removeVest Soldat_8;

Soldat_8 addWeapon "ItemMap";
Soldat_8 addWeapon "ItemWatch";
Soldat_8 addWeapon "ItemCompass";
Soldat_8 addWeapon "ItemGPS";
Soldat_8 addWeapon "H_Booniehat_grn";
Soldat_8 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_8);
clearMagazineCargoGlobal (vestContainer Soldat_8);
clearWeaponCargoGlobal (vestContainer Soldat_8);
clearItemCargoGlobal (uniformContainer Soldat_8);
clearMagazineCargoGlobal (uniformContainer Soldat_8);
clearWeaponCargoGlobal (uniformContainer Soldat_8);
if (count weapons Soldat_8 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_8) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_8 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_8 selectWeapon _type;
  };
};
};

if (!isNil "Soldat_9") then {
removeallweapons Soldat_9;
removeallassigneditems Soldat_9;
removeHeadgear Soldat_9;
removeBackpack Soldat_9;
removeVest Soldat_9;

Soldat_9 addWeapon "ItemMap";
Soldat_9 addWeapon "ItemWatch";
Soldat_9 addWeapon "ItemCompass";
Soldat_9 addWeapon "ItemGPS";
Soldat_9 addWeapon "H_Booniehat_grn";
Soldat_9 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Soldat_9);
clearMagazineCargoGlobal (vestContainer Soldat_9);
clearWeaponCargoGlobal (vestContainer Soldat_9);
clearItemCargoGlobal (uniformContainer Soldat_9);
clearMagazineCargoGlobal (uniformContainer Soldat_9);
clearWeaponCargoGlobal (uniformContainer Soldat_9);
if (count weapons Soldat_9 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Soldat_9) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Soldat_9 selectWeapon (_muzzles select 0);
  }
  else {
     Soldat_9 selectWeapon _type;
  };
};
};

if (!isNil "Player1") then {
removeallweapons Player1;
removeallassigneditems Player1;
removeHeadgear Player1;
removeBackpack Player1;
removeVest Player1;

Player1 addWeapon "ItemMap";
Player1 addWeapon "ItemWatch";
Player1 addWeapon "ItemCompass";
Player1 addWeapon "ItemGPS";
Player1 addWeapon "H_MilCap_dgtl";
Player1 addWeapon "Binocular";
Player1 addVest "V_PlateCarrier1_rgr";
clearItemCargoGlobal (vestContainer Player1);
clearMagazineCargoGlobal (vestContainer Player1);
clearWeaponCargoGlobal (vestContainer Player1);
clearItemCargoGlobal (uniformContainer Player1);
clearMagazineCargoGlobal (uniformContainer Player1);
clearWeaponCargoGlobal (uniformContainer Player1);
if (count weapons Player1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Player1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Player1 selectWeapon (_muzzles select 0);
  }
  else {
     Player1 selectWeapon _type;
  };
};
};

if (!isNil "bubba") then {
removeallweapons bubba;
removeallassigneditems bubba;
removeHeadgear bubba;
removeUniform bubba;
removeBackpack bubba;
removeVest bubba;

bubba addWeapon "H_Cap_grn";
bubba addUniform "U_NikosAgedBody";
clearItemCargoGlobal (uniformContainer bubba);
clearMagazineCargoGlobal (uniformContainer bubba);
clearWeaponCargoGlobal (uniformContainer bubba);
if (count weapons bubba > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons bubba) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     bubba selectWeapon (_muzzles select 0);
  }
  else {
     bubba selectWeapon _type;
  };
};
};

if (!isNil "bubba2") then {
removeallweapons bubba2;
removeallassigneditems bubba2;
removeHeadgear bubba2;
removeUniform bubba2;
removeBackpack bubba2;
removeVest bubba2;

bubba2 addWeapon "H_Cap_grn";
bubba2 addUniform "U_NikosAgedBody";
clearItemCargoGlobal (uniformContainer bubba2);
clearMagazineCargoGlobal (uniformContainer bubba2);
clearWeaponCargoGlobal (uniformContainer bubba2);
if (count weapons bubba2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons bubba2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     bubba2 selectWeapon (_muzzles select 0);
  }
  else {
     bubba2 selectWeapon _type;
  };
};
};

if (!isNil "bubba3") then {
removeallweapons bubba3;
removeallassigneditems bubba3;
removeHeadgear bubba3;
removeUniform bubba3;
removeBackpack bubba3;
removeVest bubba3;

bubba3 addWeapon "H_Cap_grn";
bubba3 addUniform "U_NikosAgedBody";
clearItemCargoGlobal (uniformContainer bubba3);
clearMagazineCargoGlobal (uniformContainer bubba3);
clearWeaponCargoGlobal (uniformContainer bubba3);
if (count weapons bubba3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons bubba3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     bubba3 selectWeapon (_muzzles select 0);
  }
  else {
     bubba3 selectWeapon _type;
  };
};
};

if (!isNil "bubba4") then {
removeallweapons bubba4;
removeallassigneditems bubba4;
removeHeadgear bubba4;
removeUniform bubba4;
removeBackpack bubba4;
removeVest bubba4;

bubba4 addWeapon "H_Cap_grn";
bubba4 addUniform "U_NikosAgedBody";
clearItemCargoGlobal (uniformContainer bubba4);
clearMagazineCargoGlobal (uniformContainer bubba4);
clearWeaponCargoGlobal (uniformContainer bubba4);
if (count weapons bubba4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons bubba4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     bubba4 selectWeapon (_muzzles select 0);
  }
  else {
     bubba4 selectWeapon _type;
  };
};
};

if (!isNil "bubba5") then {
removeallweapons bubba5;
removeallassigneditems bubba5;
removeHeadgear bubba5;
removeUniform bubba5;
removeBackpack bubba5;
removeVest bubba5;

bubba5 addWeapon "H_Cap_grn";
bubba5 addUniform "U_NikosAgedBody";
clearItemCargoGlobal (uniformContainer bubba5);
clearMagazineCargoGlobal (uniformContainer bubba5);
clearWeaponCargoGlobal (uniformContainer bubba5);
if (count weapons bubba5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons bubba5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     bubba5 selectWeapon (_muzzles select 0);
  }
  else {
     bubba5 selectWeapon _type;
  };
};
};

if (!isNil "V1") then {
removeallweapons V1;
removeallassigneditems V1;
removeHeadgear V1;
removeUniform V1;
removeBackpack V1;
removeVest V1;

if (count weapons V1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V1 selectWeapon (_muzzles select 0);
  }
  else {
     V1 selectWeapon _type;
  };
};
};

if (!isNil "V2") then {
removeallweapons V2;
removeallassigneditems V2;
removeHeadgear V2;
removeUniform V2;
removeBackpack V2;
removeVest V2;

if (count weapons V2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V2 selectWeapon (_muzzles select 0);
  }
  else {
     V2 selectWeapon _type;
  };
};
};

if (!isNil "V4") then {
removeallweapons V4;
removeallassigneditems V4;
removeHeadgear V4;
removeUniform V4;
removeBackpack V4;
removeVest V4;

if (count weapons V4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V4 selectWeapon (_muzzles select 0);
  }
  else {
     V4 selectWeapon _type;
  };
};
};

if (!isNil "V3") then {
removeallweapons V3;
removeallassigneditems V3;
removeHeadgear V3;
removeUniform V3;
removeBackpack V3;
removeVest V3;

if (count weapons V3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V3 selectWeapon (_muzzles select 0);
  }
  else {
     V3 selectWeapon _type;
  };
};
};

if (!isNil "V5") then {
removeallweapons V5;
removeallassigneditems V5;
removeHeadgear V5;
removeUniform V5;
removeBackpack V5;
removeVest V5;

if (count weapons V5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V5 selectWeapon (_muzzles select 0);
  }
  else {
     V5 selectWeapon _type;
  };
};
};

if (!isNil "V6") then {
removeallweapons V6;
removeallassigneditems V6;
removeHeadgear V6;
removeUniform V6;
removeBackpack V6;
removeVest V6;

if (count weapons V6 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V6) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V6 selectWeapon (_muzzles select 0);
  }
  else {
     V6 selectWeapon _type;
  };
};
};

if (!isNil "V7") then {
removeallweapons V7;
removeallassigneditems V7;
removeHeadgear V7;
removeUniform V7;
removeBackpack V7;
removeVest V7;

if (count weapons V7 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons V7) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     V7 selectWeapon (_muzzles select 0);
  }
  else {
     V7 selectWeapon _type;
  };
};
};

if (!isNil "homebase") then {
removeallweapons homebase;
removeallassigneditems homebase;
removeHeadgear homebase;
removeUniform homebase;
removeBackpack homebase;
removeVest homebase;

if (count weapons homebase > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons homebase) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     homebase selectWeapon (_muzzles select 0);
  }
  else {
     homebase selectWeapon _type;
  };
};
};

if (!isNil "two") then {
removeallweapons two;
removeallassigneditems two;
removeHeadgear two;
removeUniform two;
removeBackpack two;
removeVest two;

if (count weapons two > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons two) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     two selectWeapon (_muzzles select 0);
  }
  else {
     two selectWeapon _type;
  };
};
};

if (!isNil "Altis_base") then {
removeallweapons Altis_base;
removeallassigneditems Altis_base;
removeHeadgear Altis_base;
removeUniform Altis_base;
removeBackpack Altis_base;
removeVest Altis_base;

if (count weapons Altis_base > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons Altis_base) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     Altis_base selectWeapon (_muzzles select 0);
  }
  else {
     Altis_base selectWeapon _type;
  };
};
};

if (!isNil "twenty") then {
removeallweapons twenty;
removeallassigneditems twenty;
removeHeadgear twenty;
removeUniform twenty;
removeBackpack twenty;
removeVest twenty;

if (count weapons twenty > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons twenty) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     twenty selectWeapon (_muzzles select 0);
  }
  else {
     twenty selectWeapon _type;
  };
};
};

if (!isNil "tisch2") then {
removeallweapons tisch2;
removeallassigneditems tisch2;
removeHeadgear tisch2;
removeUniform tisch2;
removeBackpack tisch2;
removeVest tisch2;

if (count weapons tisch2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch2 selectWeapon (_muzzles select 0);
  }
  else {
     tisch2 selectWeapon _type;
  };
};
};

if (!isNil "tisch4") then {
removeallweapons tisch4;
removeallassigneditems tisch4;
removeHeadgear tisch4;
removeUniform tisch4;
removeBackpack tisch4;
removeVest tisch4;

if (count weapons tisch4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch4 selectWeapon (_muzzles select 0);
  }
  else {
     tisch4 selectWeapon _type;
  };
};
};

if (!isNil "tisch3") then {
removeallweapons tisch3;
removeallassigneditems tisch3;
removeHeadgear tisch3;
removeUniform tisch3;
removeBackpack tisch3;
removeVest tisch3;

if (count weapons tisch3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch3 selectWeapon (_muzzles select 0);
  }
  else {
     tisch3 selectWeapon _type;
  };
};
};

if (!isNil "tisch5") then {
removeallweapons tisch5;
removeallassigneditems tisch5;
removeHeadgear tisch5;
removeUniform tisch5;
removeBackpack tisch5;
removeVest tisch5;

if (count weapons tisch5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch5 selectWeapon (_muzzles select 0);
  }
  else {
     tisch5 selectWeapon _type;
  };
};
};

if (!isNil "tisch1") then {
removeallweapons tisch1;
removeallassigneditems tisch1;
removeHeadgear tisch1;
removeUniform tisch1;
removeBackpack tisch1;
removeVest tisch1;

if (count weapons tisch1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch1 selectWeapon (_muzzles select 0);
  }
  else {
     tisch1 selectWeapon _type;
  };
};
};

if (!isNil "laptop1") then {
removeallweapons laptop1;
removeallassigneditems laptop1;
removeHeadgear laptop1;
removeUniform laptop1;
removeBackpack laptop1;
removeVest laptop1;

if (count weapons laptop1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop1 selectWeapon (_muzzles select 0);
  }
  else {
     laptop1 selectWeapon _type;
  };
};
};

if (!isNil "laptop2") then {
removeallweapons laptop2;
removeallassigneditems laptop2;
removeHeadgear laptop2;
removeUniform laptop2;
removeBackpack laptop2;
removeVest laptop2;

if (count weapons laptop2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop2 selectWeapon (_muzzles select 0);
  }
  else {
     laptop2 selectWeapon _type;
  };
};
};

if (!isNil "laptop3") then {
removeallweapons laptop3;
removeallassigneditems laptop3;
removeHeadgear laptop3;
removeUniform laptop3;
removeBackpack laptop3;
removeVest laptop3;

if (count weapons laptop3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop3 selectWeapon (_muzzles select 0);
  }
  else {
     laptop3 selectWeapon _type;
  };
};
};

if (!isNil "laptop4") then {
removeallweapons laptop4;
removeallassigneditems laptop4;
removeHeadgear laptop4;
removeUniform laptop4;
removeBackpack laptop4;
removeVest laptop4;

if (count weapons laptop4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop4 selectWeapon (_muzzles select 0);
  }
  else {
     laptop4 selectWeapon _type;
  };
};
};

if (!isNil "laptop5") then {
removeallweapons laptop5;
removeallassigneditems laptop5;
removeHeadgear laptop5;
removeUniform laptop5;
removeBackpack laptop5;
removeVest laptop5;

if (count weapons laptop5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop5 selectWeapon (_muzzles select 0);
  }
  else {
     laptop5 selectWeapon _type;
  };
};
};

if (!isNil "range") then {
removeallweapons range;
removeallassigneditems range;
removeHeadgear range;
removeUniform range;
removeBackpack range;
removeVest range;

if (count weapons range > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons range) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     range selectWeapon (_muzzles select 0);
  }
  else {
     range selectWeapon _type;
  };
};
};

if (!isNil "tisch_shoot") then {
removeallweapons tisch_shoot;
removeallassigneditems tisch_shoot;
removeHeadgear tisch_shoot;
removeUniform tisch_shoot;
removeBackpack tisch_shoot;
removeVest tisch_shoot;

if (count weapons tisch_shoot > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons tisch_shoot) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     tisch_shoot selectWeapon (_muzzles select 0);
  }
  else {
     tisch_shoot selectWeapon _type;
  };
};
};

if (!isNil "laptop_shoot") then {
removeallweapons laptop_shoot;
removeallassigneditems laptop_shoot;
removeHeadgear laptop_shoot;
removeUniform laptop_shoot;
removeBackpack laptop_shoot;
removeVest laptop_shoot;

if (count weapons laptop_shoot > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons laptop_shoot) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     laptop_shoot selectWeapon (_muzzles select 0);
  }
  else {
     laptop_shoot selectWeapon _type;
  };
};
};

if (!isNil "pop100_1") then {
removeallweapons pop100_1;
removeallassigneditems pop100_1;
removeHeadgear pop100_1;
removeUniform pop100_1;
removeBackpack pop100_1;
removeVest pop100_1;

if (count weapons pop100_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop100_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop100_1 selectWeapon (_muzzles select 0);
  }
  else {
     pop100_1 selectWeapon _type;
  };
};
};

if (!isNil "pop100_2") then {
removeallweapons pop100_2;
removeallassigneditems pop100_2;
removeHeadgear pop100_2;
removeUniform pop100_2;
removeBackpack pop100_2;
removeVest pop100_2;

if (count weapons pop100_2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop100_2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop100_2 selectWeapon (_muzzles select 0);
  }
  else {
     pop100_2 selectWeapon _type;
  };
};
};

if (!isNil "pop100_3") then {
removeallweapons pop100_3;
removeallassigneditems pop100_3;
removeHeadgear pop100_3;
removeUniform pop100_3;
removeBackpack pop100_3;
removeVest pop100_3;

if (count weapons pop100_3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop100_3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop100_3 selectWeapon (_muzzles select 0);
  }
  else {
     pop100_3 selectWeapon _type;
  };
};
};

if (!isNil "pop100_4") then {
removeallweapons pop100_4;
removeallassigneditems pop100_4;
removeHeadgear pop100_4;
removeUniform pop100_4;
removeBackpack pop100_4;
removeVest pop100_4;

if (count weapons pop100_4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop100_4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop100_4 selectWeapon (_muzzles select 0);
  }
  else {
     pop100_4 selectWeapon _type;
  };
};
};

if (!isNil "pop100_5") then {
removeallweapons pop100_5;
removeallassigneditems pop100_5;
removeHeadgear pop100_5;
removeUniform pop100_5;
removeBackpack pop100_5;
removeVest pop100_5;

if (count weapons pop100_5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop100_5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop100_5 selectWeapon (_muzzles select 0);
  }
  else {
     pop100_5 selectWeapon _type;
  };
};
};

if (!isNil "pop150_1") then {
removeallweapons pop150_1;
removeallassigneditems pop150_1;
removeHeadgear pop150_1;
removeUniform pop150_1;
removeBackpack pop150_1;
removeVest pop150_1;

if (count weapons pop150_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop150_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop150_1 selectWeapon (_muzzles select 0);
  }
  else {
     pop150_1 selectWeapon _type;
  };
};
};

if (!isNil "pop150_2") then {
removeallweapons pop150_2;
removeallassigneditems pop150_2;
removeHeadgear pop150_2;
removeUniform pop150_2;
removeBackpack pop150_2;
removeVest pop150_2;

if (count weapons pop150_2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop150_2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop150_2 selectWeapon (_muzzles select 0);
  }
  else {
     pop150_2 selectWeapon _type;
  };
};
};

if (!isNil "pop150_3") then {
removeallweapons pop150_3;
removeallassigneditems pop150_3;
removeHeadgear pop150_3;
removeUniform pop150_3;
removeBackpack pop150_3;
removeVest pop150_3;

if (count weapons pop150_3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop150_3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop150_3 selectWeapon (_muzzles select 0);
  }
  else {
     pop150_3 selectWeapon _type;
  };
};
};

if (!isNil "pop50_1") then {
removeallweapons pop50_1;
removeallassigneditems pop50_1;
removeHeadgear pop50_1;
removeUniform pop50_1;
removeBackpack pop50_1;
removeVest pop50_1;

if (count weapons pop50_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop50_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop50_1 selectWeapon (_muzzles select 0);
  }
  else {
     pop50_1 selectWeapon _type;
  };
};
};

if (!isNil "pop50_2") then {
removeallweapons pop50_2;
removeallassigneditems pop50_2;
removeHeadgear pop50_2;
removeUniform pop50_2;
removeBackpack pop50_2;
removeVest pop50_2;

if (count weapons pop50_2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop50_2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop50_2 selectWeapon (_muzzles select 0);
  }
  else {
     pop50_2 selectWeapon _type;
  };
};
};

if (!isNil "pop50_3") then {
removeallweapons pop50_3;
removeallassigneditems pop50_3;
removeHeadgear pop50_3;
removeUniform pop50_3;
removeBackpack pop50_3;
removeVest pop50_3;

if (count weapons pop50_3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop50_3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop50_3 selectWeapon (_muzzles select 0);
  }
  else {
     pop50_3 selectWeapon _type;
  };
};
};

if (!isNil "pop50_4") then {
removeallweapons pop50_4;
removeallassigneditems pop50_4;
removeHeadgear pop50_4;
removeUniform pop50_4;
removeBackpack pop50_4;
removeVest pop50_4;

if (count weapons pop50_4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop50_4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop50_4 selectWeapon (_muzzles select 0);
  }
  else {
     pop50_4 selectWeapon _type;
  };
};
};

if (!isNil "pop50_5") then {
removeallweapons pop50_5;
removeallassigneditems pop50_5;
removeHeadgear pop50_5;
removeUniform pop50_5;
removeBackpack pop50_5;
removeVest pop50_5;

if (count weapons pop50_5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons pop50_5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     pop50_5 selectWeapon (_muzzles select 0);
  }
  else {
     pop50_5 selectWeapon _type;
  };
};
};

