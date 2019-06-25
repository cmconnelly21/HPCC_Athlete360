﻿
	EXPORT WSOCjump := RECORD
		STRING Name;
		STRING Test;
		STRING Date;
		STRING BodyWeight;
		STRING RSI_trial1;
		STRING RSI_trial2;
		STRING RSI_trial3;
		STRING RSIm;
		STRING RSIsd;
		STRING RSIcov;
		STRING RSI_JH_trial1;
		STRING RSI_JH_trial2;
		STRING RSI_JH_trial3;
		STRING RSI_JHm;
		STRING RSI_JHsd;
		STRING RSI_JHcov;
		STRING Jumpheight_impmom_trial1;
		STRING Jumpheight_impmom_trial2;
		STRING Jumpheight_impmom_trial3;
		STRING Jumpheight_impmomm;
		STRING Jumpheight_impmomsd;
		STRING Jumpheight_impmomcov;
		STRING ActiveStiffness_trial1;
		STRING ActiveStiffness_trial2;
		STRING ActiveStiffness_trial3;
		STRING ActiveStiffnessm;
		STRING ActiveStiffnesssd;
		STRING ActiveStiffnesscov;
		STRING ActiveStiffness_index_trial1;
		STRING ActiveStiffness_index_trial2;
		STRING ActiveStiffness_index_trial3;
		STRING ActiveStiffness_indexm;
		STRING ActiveStiffness_indexsd;
		STRING ActiveStiffness_indexcov;
		STRING Impulse_concentric_trial1;
		STRING Impulse_concentric_trial2;
		STRING Impulse_concentric_trial3;
		STRING Impulse_concentricm;
		STRING Impulse_concentricsd;
		STRING Impulse_concentriccov;
		STRING meanforce_concentric_trial1;
		STRING meanforce_concentric_trial2;
		STRING meanforce_concentric_trial3;
		STRING meanforce_concentricm;
		STRING meanforce_concentricsd;
		STRING meanforce_concentriccov;
		STRING meanwkg_concentric_trial1;
		STRING meanwkg_concentric_trial2;
		STRING meanwkg_concentric_trial3;
		STRING meanwkg_concentricm;
		STRING meanwkg_concentricsd;
		STRING meanwkg_concentriccov;
		STRING meanpower_concentric_trial1;
		STRING meanpower_concentric_trial2;
		STRING meanpower_concentric_trial3;
		STRING meanpower_concentricm;
		STRING meanpower_concentricsd;
		STRING meanpower_concentriccov;
		STRING peakvelocity_concentric_trial1;
		STRING peakvelocity_concentric_trial2;
		STRING peakvelocity_concentric_trial3;
		STRING peakvelocity_concentricm;
		STRING peakvelocity_concentricsd;
		STRING peakvelocity_concentriccov;
		STRING contacttime_trial1;
		STRING contacttime_trial2;
		STRING contacttime_trial3;
		STRING contacttimem;
		STRING contacttimesd;
		STRING contacttimecov;
		STRING countermvmt_depth_trial1;
		STRING countermvmt_depth_trial2;
		STRING countermvmt_depth_trial3;
		STRING countermvmt_depthm;
		STRING countermvmt_depthsd;
		STRING countermvmt_depthcov;
		STRING dropheight_trial1;
		STRING dropheight_trial2;
		STRING dropheight_trial3;
		STRING dropheightm;
		STRING dropheightsd;
		STRING dropheightcov;
		STRING droplanding_trial1;
		STRING droplanding_trial2;
		STRING droplanding_trial3;
		STRING droplandingm;
		STRING droplandingsd;
		STRING droplandingcov;
		STRING ecc_con_meanforceratio_trial1;
		STRING ecc_con_meanforceratio_trial2;
		STRING ecc_con_meanforceratio_trial3;
		STRING ecc_con_meanforceratiom;
		STRING ecc_con_meanforceratiosd;
		STRING ecc_con_meanforceratiocov;
		STRING impulse_eccentric_trial1;
		STRING impulse_eccentric_trial2;
		STRING impulse_eccentric_trial3;
		STRING impulse_eccentricm;
		STRING impulse_eccentricsd;
		STRING impulse_eccentriccov;
		STRING meanforce_eccentric_trial1;
		STRING meanforce_eccentric_trial2;
		STRING meanforce_eccentric_trial3;
		STRING meanforce_eccentricm;
		STRING meanforce_eccentricsd;
		STRING meanforce_eccentriccov;
		STRING effectivedrop_trial1;
		STRING effectivedrop_trial2;
		STRING effectivedrop_trial3;
		STRING effectivedropm;
		STRING effectivedropsd;
		STRING effectivedropcov;
		STRING flighttime_trial1;
		STRING flighttime_trial2;
		STRING flighttime_trial3;
		STRING flighttimem;
		STRING flighttimesd;
		STRING flighttimecov;
		STRING force_zerovelocity_trial1;
		STRING force_zerovelocity_trial2;
		STRING force_zerovelocity_trial3;
		STRING force_zerovelocitym;
		STRING force_zerovelocitysd;
		STRING force_zerovelocitycov;
		STRING jumpheight_flighttime_trial1;
		STRING jumpheight_flighttime_trial2;
		STRING jumpheight_flighttime_trial3;
		STRING jumpheight_flighttimem;
		STRING jumpheight_flighttimesd;
		STRING jumpheight_flighttimecov;
		STRING jumpheight_flighttime_in_trial1;
		STRING jumpheight_flighttime_in_trial2;
		STRING jumpheight_flighttime_in_trial3;
		STRING jumpheight_flighttime_inm;
		STRING jumpheight_flighttime_insd;
		STRING jumpheight_flighttime_incov;
		STRING jumpheight_impdis_trial1;
		STRING jumpheight_impdis_trial2;
		STRING jumpheight_impdis_trial3;
		STRING jumpheight_impdism;
		STRING jumpheight_impdissd;
		STRING jumpheight_impdiscov;
		STRING jumpheight_impmom_in_trial1;
		STRING jumpheight_impmom_in_trial2;
		STRING jumpheight_impmom_in_trial3;
		STRING jumpheight_impmom_inm;
		STRING jumpheight_impmom_insd;
		STRING jumpheight_impmom_incov;
		STRING Movementstart_peakpower_trial1;
		STRING Movementstart_peakpower_trial2;
		STRING Movementstart_peakpower_trial3;
		STRING Movementstart_peakpowerm;
		STRING Movementstart_peakpowersd;
		STRING Movementstart_peakpowercov;
		STRING force_peakdriveoff_trial1;
		STRING force_peakdriveoff_trial2;
		STRING force_peakdriveoff_trial3;
		STRING force_peakdriveoffm;
		STRING force_peakdriveoffsd;
		STRING force_peakdriveoffcov;
		STRING peakforce_droplanding_trial1;
		STRING peakforce_droplanding_trial2;
		STRING peakforce_droplanding_trial3;
		STRING peakforce_droplandingm;
		STRING peakforce_droplandingsd;
		STRING peakforce_droplandingcov;
		STRING peakwkg_trial1;
		STRING peakwkg_trial2;
		STRING peakwkg_trial3;
		STRING peakwkgm;
		STRING peakwkgsd;
		STRING peakwkgcov;
		STRING peakpower_trial1;
		STRING peakpower_trial2;
		STRING peakpower_trial3;
		STRING peakpowerm;
		STRING peakpowersd;
		STRING peakpowercov;
		STRING impulse_postive_trial1;
		STRING impulse_postive_trial2;
		STRING impulse_postive_trial3;
		STRING impulse_postivem;
		STRING impulse_postivesd;
		STRING impulse_postivecov;
		STRING concentricstart_trial1;
		STRING concentricstart_trial2;
		STRING concentricstart_trial3;
		STRING concentricstartm;
		STRING concentricstartsd;
		STRING concentricstartcov;
		STRING verticalvelocity_contact_trial1;
		STRING verticalvelocity_contact_trial2;
		STRING verticalvelocity_contact_trial3;
		STRING verticalvelocity_contactm;
		STRING verticalvelocity_contactsd;
		STRING verticalvelocity_contactcov;
		STRING verticalvelocity_takeoff_trial1;
		STRING verticalvelocity_takeoff_trial2;
		STRING verticalvelocity_takeoff_trial3;
		STRING verticalvelocity_takeoffm;
		STRING verticalvelocity_takeoffsd;
		STRING verticalvelocity_takeoffcov;
		STRING contacttrough_trial1;
		STRING contacttrough_trial2;
		STRING contacttrough_trial3;
		STRING contacttroughm;
		STRING contacttroughsd;
		STRING contacttroughcov;
		STRING jumpheight_relativelandingRFD_trial1;
		STRING jumpheight_relativelandingRFD_trial2;
		STRING jumpheight_relativelandingRFD_trial3;
		STRING jumpheight_relativelandingRFDm;
		STRING jumpheight_relativelandingRFDsd;
		STRING jumpheight_relativelandingRFDcov;
		STRING jumpheight_relativepeaklandingforce_trial1;
		STRING jumpheight_relativepeaklandingforce_trial2;
		STRING jumpheight_relativepeaklandingforce_trial3;
		STRING jumpheight_relativepeaklandingforcem;
		STRING jumpheight_relativepeaklandingforcesd;
		STRING jumpheight_relativepeaklandingforcecov;
		STRING landing_netpeakforce_trial1;
		STRING landing_netpeakforce_trial2;
		STRING landing_netpeakforce_trial3;
		STRING landing_netpeakforcem;
		STRING landing_netpeakforcesd;
		STRING landing_netpeakforcecov;
		STRING landingRFD_trial1;
		STRING landingRFD_trial2;
		STRING landingRFD_trial3;
		STRING landingRFDm;
		STRING landingRFDsd;
		STRING landingRFDcov;
		STRING meanlanding_accel_trial1;
		STRING meanlanding_accel_trial2;
		STRING meanlanding_accel_trial3;
		STRING meanlanding_accelm;
		STRING meanlanding_accelsd;
		STRING meanlanding_accelcov;
		STRING meanlanding_power_trial1;
		STRING meanlanding_power_trial2;
		STRING meanlanding_power_trial3;
		STRING meanlanding_powerm;
		STRING meanlanding_powersd;
		STRING meanlanding_powercov;
		STRING meanlanding_velocity_trial1;
		STRING meanlanding_velocity_trial2;
		STRING meanlanding_velocity_trial3;
		STRING meanlanding_velocitym;
		STRING meanlanding_velocitysd;
		STRING meanlanding_velocitycov;
		STRING passivestiffness_trial1;
		STRING passivestiffness_trial2;
		STRING passivestiffness_trial3;
		STRING passivestiffnessm;
		STRING passivestiffnesssd;
		STRING passivestiffnesscov;
		STRING passivestiffness_index_trial1;
		STRING passivestiffness_index_trial2;
		STRING passivestiffness_index_trial3;
		STRING passivestiffness_indexm;
		STRING passivestiffness_indexsd;
		STRING passivestiffness_indexcov;
		STRING peakimpactforce_trial1;
		STRING peakimpactforce_trial2;
		STRING peakimpactforce_trial3;
		STRING peakimpactforcem;
		STRING peakimpactforcesd;
		STRING peakimpactforcecov;
		STRING peaklanding_accel_trial1;
		STRING peaklanding_accel_trial2;
		STRING peaklanding_accel_trial3;
		STRING peaklanding_accelm;
		STRING peaklanding_accelsd;
		STRING peaklanding_accelcov;
		STRING peaklanding_force_trial1;
		STRING peaklanding_force_trial2;
		STRING peaklanding_force_trial3;
		STRING peaklanding_forcem;
		STRING peaklanding_forcesd;
		STRING peaklanding_forcecov;
		STRING peaklanding_power_trial1;
		STRING peaklanding_power_trial2;
		STRING peaklanding_power_trial3;
		STRING peaklanding_powerm;
		STRING peaklanding_powersd;
		STRING peaklanding_powercov;
		STRING peaklanding_velocity_trial1;
		STRING peaklanding_velocity_trial2;
		STRING peaklanding_velocity_trial3;
		STRING peaklanding_velocitym;
		STRING peaklanding_velocitysd;
		STRING peaklanding_velocitycov;
		STRING peaktakeoffaccel_trial1;
		STRING peaktakeoffaccel_trial2;
		STRING peaktakeoffaccel_trial3;
		STRING peaktakeoffaccelm;
		STRING peaktakeoffaccelsd;
		STRING peaktakeoffaccelcov;
		String wuid := workunit;
	END;