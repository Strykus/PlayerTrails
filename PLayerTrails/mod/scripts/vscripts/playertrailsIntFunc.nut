///////////////////////////////////////////////////////////////////////////////////////////////////
//__________ .__                                  ___________                .__ .__             //
//\______   \|  |  _____   ___.__.  ____ _______  \__    ___/_______ _____   |__||  |    ______  //
// |     ___/|  |  \__  \ <   |  |_/ __ \\_  __ \   |    |   \_  __ \\__  \  |  ||  |   /  ___/  //
// |    |    |  |__ / __ \_\___  |\  ___/ |  | \/   |    |    |  | \/ / __ \_|  ||  |__ \___ \   //
// |____|    |____/(____  // ____| \___  >|__|      |____|    |__|   (____  /|__||____//____  >  //
//                      \/ \/          \/                                 \/                \/   //
///////////////////////////////////////////////////////////////////////////////////////////////////
untyped
global function playertrailsIntFunc
void function playertrailsIntFunc(){
PrecacheParticleSystem($"P_xo_trail_beam")
PrecacheParticleSystem($"P_xo_trail_lava")
PrecacheParticleSystem($"P_xo_trail_thunder")
PrecacheParticleSystem($"P_xo_trail_borealis")
PrecacheParticleSystem($"P_xo_trail_speed")
PrecacheParticleSystem($"P_xo_trail_cloud")
PrecacheParticleSystem($"P_xo_trail_smoke")
AddPrivateMatchModeSettingEnum("Trails", "Player_Trail", ["Disabled", "Beam", "Turbokiller", "AuroraBorealis", "Thunder", "Speed", "Cloud", "Smoke"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Beam", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Turbokiller", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "AuroraBorealis", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Thunder", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Speed", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Cloud", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")
AddPrivateMatchModeSettingEnum("Trails", "Smoke", ["#SETTING_DISABLED", "#SETTING_ENABLED"], "0")

#if SERVER
AddCallback_OnPlayerRespawned( OnPlayerRespawned )
#endif
}
#if SERVER
void function OnPlayerRespawned(entity player){
  if((GetCurrentPlaylistVarInt("Beam", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_beam") , FX_PATTACH_POINT_FOLLOW, 5 )
  }
  if((GetCurrentPlaylistVarInt("Turbokiller", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_lava") , FX_PATTACH_POINT_FOLLOW, 2 )
  }
  if((GetCurrentPlaylistVarInt("AuroraBorealis", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_borealis") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
  if((GetCurrentPlaylistVarInt("Thunder", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_thunder") , FX_PATTACH_POINT_FOLLOW, 5 )
  }
  if((GetCurrentPlaylistVarInt("Speed", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_speed") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
  if((GetCurrentPlaylistVarInt("Cloud", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_cloud") , FX_PATTACH_POINT_FOLLOW, 4 )
  }
  if((GetCurrentPlaylistVarInt("Smoke", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_smoke") , FX_PATTACH_POINT_FOLLOW, 4 )
  }
if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_beam") , FX_PATTACH_POINT_FOLLOW, 5 )
  }
  if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 2)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_lava") , FX_PATTACH_POINT_FOLLOW, 2 )
 }
   if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 3)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_borealis") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 4)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_thunder") , FX_PATTACH_POINT_FOLLOW, 5 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 5)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_speed") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 6)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_cloud") , FX_PATTACH_POINT_FOLLOW, 4 )
}
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 7)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_smoke") , FX_PATTACH_POINT_FOLLOW, 4 )
}
}
#endif
/*
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_beam") , FX_PATTACH_POINT_FOLLOW, 5 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_lava") , FX_PATTACH_POINT_FOLLOW, 2 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_borealis") , FX_PATTACH_POINT_FOLLOW, 3 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_thunder") , FX_PATTACH_POINT_FOLLOW, 5 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_speed") , FX_PATTACH_POINT_FOLLOW, 3 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_cloud") , FX_PATTACH_POINT_FOLLOW, 4 );
script StartParticleEffectOnEntity(GetPlayerArray()[0],  GetParticleSystemIndex($"P_xo_trail_smoke") , FX_PATTACH_POINT_FOLLOW, 4 );
*/