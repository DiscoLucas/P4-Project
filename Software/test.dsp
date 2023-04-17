import("stdfaust.lib");
freq = nentry("freq Hz", 110, 20, 20000, 1); // Hz
ctFreq = hslider("[0]cutoffFrequency",500,50,10000,0.01) : si.smoo; //Cut.off-frequancy
q = hslider("[1]q",5,1,30,0.1) : si.smoo; //Still dont know what q is
gain = hslider("[2]gain",1,0,1,0.01) : si.smoo; //its the Gain
t = button("[3]gate") : si.smoo; //button for making sound
process = no.noise : fi.resonlp(ctFreq,q,gain)freqt <: dm.zita_light;