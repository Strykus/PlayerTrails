////////////////////////////////////////////////////////////////////////////////
//__________.__                              ___________             .__.__   //
//\______   \  | _____  ___.__. ___________  \__    ___/___________  |__|  |  //
// |     ___/  | \__  \<   |  |/ __ \_  __ \   |    |  \_  __ \__  \ |  |  |  //
// |    |   |  |__/ __ \\___  \  ___/|  | \/   |    |   |  | \// __ \|  |  |__//
// |____|   |____(____  / ____|\___  >__|      |____|   |__|  (____  /__|____///
//                    \/\/         \/                              \/         //
////////////////////////////////////////////////////////////////////////////////
untyped
global function playertrailsIntFunc
void function playertrailsIntFunc(){
PrecacheParticleSystem($"P_xo_trail_beam")
PrecacheParticleSystem($"P_xo_trail_lava")
PrecacheParticleSystem($"P_xo_trail_thunder")
PrecacheParticleSystem($"P_xo_trail_borealis")
PrecacheParticleSystem($"P_xo_trail_speed")
PrecacheParticleSystem($"P_xo_trail_cloud")
AddPrivateMatchModeSettingEnum("Trails", "Player_Trail", ["Disable", "Beam", "Lava", "Borealis", "Thunder", "Speed", "Cloud"], "0")
#if SERVER
AddCallback_OnPlayerRespawned( OnPlayerRespawned )
#endif
}
#if SERVER
void function OnPlayerRespawned(entity player){
if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 1)){
StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_beam") , FX_PATTACH_POINT_FOLLOW, 5 )
  }
  if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 2)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_lava") , FX_PATTACH_POINT_FOLLOW, 1 )
 }
   if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 2)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_borealis") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 3)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_thunder") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 4)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_speed") , FX_PATTACH_POINT_FOLLOW, 3 )
  }
    if((GetCurrentPlaylistVarInt("Player_Trail", 0) == 5)){
  StartParticleEffectOnEntity(player,  GetParticleSystemIndex($"P_xo_trail_cloud") , FX_PATTACH_POINT_FOLLOW, 4 )
}
}
#endif
