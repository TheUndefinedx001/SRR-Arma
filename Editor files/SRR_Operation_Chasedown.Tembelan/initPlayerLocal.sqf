["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

player addEventHandler ["respawn", {
  player setUnitLoadout (player getVariable ["Saved_Loadout", 
  [[],[],[],["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",[["ACE_EarPlugs",1],["UK3CB_BAF_SmokeShell",2,1]]],[],[],"UK3CB_BAF_H_Boonie_MTP","",[],["ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","",""]]]);
}];

["ace_arsenal_displayClosed", {
  player setVariable ["Saved_Loadout", getUnitLoadout player];
}] call CBA_fnc_addEventHandler;

[] spawn {
  while {true} do {
    [
      ["UpdatePartySize", count playableUnits],
      ["UpdatePartyMax", playableSlotsNumber blufor]
    ] call (missionNameSpace getVariable ["DiscordRichPresence_fnc_update",{}]);
    sleep 10;
  };
};