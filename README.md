# rsg-boostfps
Version for RedM / The gusti-boostfps script is to make players boost their fps in the game, to prevent fps drops, stuttering, etc. from occurring.

# Feature
- Boost Fps
- Graphics
- Others Mode
- Reset

# Dependencies
- ox_lib
- rsg-Core
  
Commands = 'boostfps' -- Commands open menu boostfps

- https://github.com/femga/rdr3_discoveries/blob/master/graphics/timecycles/timecycles.lua
-  SET TIMECYCLE:
   			Citizen.InvokeNative(0xFA08722A5EA82DA7,timecycle_modifier)   	-- SET_TIMECYCLE_MODIFIER
- 			Citizen.InvokeNative(0xFDB74C9CC54C3F37,1.0)			-- SET_TIMECYCLE_MODIFIER_STRENGTHs

-  REMOVE TIMECYCLE:
- 		Citizen.InvokeNative(0x0E3F4AF2D63491FB) 			-- CLEAR_TIMECYCLE_MODIFIER

# Credits
- https://github.com/Gustiagung19/gusti-boostfps
