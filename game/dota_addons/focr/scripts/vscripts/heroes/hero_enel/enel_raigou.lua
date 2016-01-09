function Raigou(keys)
	local point = keys.target_points[1]
	local ability = keys.ability
	local caster = keys.caster
	local dummy = CreateUnitByName( "npc_dummy_unit", point, false, caster, caster, caster:GetTeamNumber() )
	local dummyPos = dummy:GetAbsOrigin()
	ability:ApplyDataDrivenModifier( caster, dummy, "modifier_raigou_dummy", {} )
	local particle1 = ParticleManager:CreateParticle("particles/econ/items/sven/sven_warcry_ti5/sven_spell_warcry_ti_5.vpcf", PATTACH_ABSORIGIN, dummy)
	local particleC = ParticleManager:CreateParticle("particles/econ/items/gyrocopter/hero_gyrocopter_gyrotechnics/gyro_call_down_explosion_impact_h.vpcf", PATTACH_POINT, dummy)
	EmitSoundOn("Hero_Invoker.ChaosMeteor.Impact", dummy)
	Timers:CreateTimer( 0.30, function()
		EmitSoundOn("Hero_Zuus.LightningBolt", dummy)
		local particle2a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle3a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle4a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle5a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle6a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle7a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle8a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle9a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		ParticleManager:SetParticleControl(particle2a, 0, dummyPos + Vector(260, 0, 0))
		ParticleManager:SetParticleControl(particle2a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle3a, 0, dummyPos + Vector(184, 184 ,0))
		ParticleManager:SetParticleControl(particle3a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle4a, 0, dummyPos + Vector(0, 260, 0))
		ParticleManager:SetParticleControl(particle4a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle5a, 0, dummyPos + Vector(-184, 184, 0))
		ParticleManager:SetParticleControl(particle5a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle6a, 0, dummyPos + Vector(-260, 0, 0))
		ParticleManager:SetParticleControl(particle6a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle7a, 0, dummyPos + Vector(-184, -184, 0))
		ParticleManager:SetParticleControl(particle7a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle8a, 0, dummyPos + Vector(0, -260, 0))
		ParticleManager:SetParticleControl(particle8a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle9a, 0, dummyPos + Vector(184, -184, 0))
		ParticleManager:SetParticleControl(particle9a, 1, dummyPos + Vector(0, 0, 2000))
		
		local particle2b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle3b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle4b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle5b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle6b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle7b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle8b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle9b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)

		ParticleManager:SetParticleControl(particle2b, 0, dummyPos + Vector(260, 0, 0))
		ParticleManager:SetParticleControl(particle3b, 0, dummyPos + Vector(184, 184 ,0))
		ParticleManager:SetParticleControl(particle4b, 0, dummyPos + Vector(0, 260, 0))
		ParticleManager:SetParticleControl(particle5b, 0, dummyPos + Vector(-184, 184, 0))
		ParticleManager:SetParticleControl(particle6b, 0, dummyPos + Vector(-260, 0, 0))
		ParticleManager:SetParticleControl(particle7b, 0, dummyPos + Vector(-184, -184, 0))
		ParticleManager:SetParticleControl(particle8b, 0, dummyPos + Vector(0, -260, 0))
		ParticleManager:SetParticleControl(particle9b, 0, dummyPos + Vector(184, -184, 0))
		
		return nil
	end )
	
	Timers:CreateTimer( 0.60, function()
		EmitSoundOn("Hero_Zuus.LightningBolt", dummy)
		local particle10a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle11a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle12a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle13a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle14a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle15a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle16a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		local particle17a = ParticleManager:CreateParticle("particles/units/heroes/hero_zuus/zuus_lightning_bolt.vpcf", PATTACH_POINT, dummy)
		ParticleManager:SetParticleControl(particle10a, 0, dummyPos + Vector(520, 0, 0))
		ParticleManager:SetParticleControl(particle10a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle11a, 0, dummyPos + Vector(368, 368 ,0))
		ParticleManager:SetParticleControl(particle11a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle12a, 0, dummyPos + Vector(0, 520, 0))
		ParticleManager:SetParticleControl(particle12a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle13a, 0, dummyPos + Vector(-368, 368, 0))
		ParticleManager:SetParticleControl(particle13a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle14a, 0, dummyPos + Vector(-520, 0, 0))
		ParticleManager:SetParticleControl(particle14a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle15a, 0, dummyPos + Vector(-368, -368, 0))
		ParticleManager:SetParticleControl(particle15a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle16a, 0, dummyPos + Vector(0, -520, 0))
		ParticleManager:SetParticleControl(particle16a, 1, dummyPos + Vector(0, 0, 2000))
		ParticleManager:SetParticleControl(particle17a, 0, dummyPos + Vector(368, -368, 0))
		ParticleManager:SetParticleControl(particle17a, 1, dummyPos + Vector(0, 0, 2000))
		
		local particle10b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle11b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle12b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle13b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle14b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle15b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle16b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)
		local particle17b = ParticleManager:CreateParticle("particles/units/heroes/hero_stormspirit/stormspirit_overload_discharge.vpcf", PATTACH_ABSORIGIN, dummy)

		ParticleManager:SetParticleControl(particle10b, 0, dummyPos + Vector(520, 0, 0))
		ParticleManager:SetParticleControl(particle11b, 0, dummyPos + Vector(368, 368 ,0))
		ParticleManager:SetParticleControl(particle12b, 0, dummyPos + Vector(0, 520, 0))
		ParticleManager:SetParticleControl(particle13b, 0, dummyPos + Vector(-368, 368, 0))
		ParticleManager:SetParticleControl(particle14b, 0, dummyPos + Vector(-520, 0, 0))
		ParticleManager:SetParticleControl(particle15b, 0, dummyPos + Vector(-368, -368, 0))
		ParticleManager:SetParticleControl(particle16b, 0, dummyPos + Vector(0, -520, 0))
		ParticleManager:SetParticleControl(particle17b, 0, dummyPos + Vector(368, -368, 0))

		return nil
	end )
	Timers:CreateTimer( 0.63, function()
		dummy:ForceKill( true )
		return nil
	end )
end
