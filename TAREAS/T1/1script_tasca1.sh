echo "tasca1" >> /home/milax/Escriptori/appDades.out
#applu
cd /home/milax/Escriptori/applu/data/ref
/home/milax/Escriptori/simplesim-3.0_ecx/sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:64:32:4:l -cache:il1 il1:512:32:2:l -cache:dl2 ul2:128:64:8:l /home/milax/Escriptori/applu/exe/applu.exe < /home/milax/Escriptori/applu/data/ref/applu.in 2> /home/milax/Escriptori/applu/data/applu.out 

echo "applu" >> /home/milax/Escriptori/appDades.out
grep 'dl1.miss_rate' /home/milax/Escriptori/applu/data/applu.out >> /home/milax/Escriptori/appDades.out
grep 'il1.miss_rate' /home/milax/Escriptori/applu/data/applu.out >> /home/milax/Escriptori/appDades.out
grep 'ul2.miss_rate' /home/milax/Escriptori/applu/data/applu.out >> /home/milax/Escriptori/appDades.out
grep 'sim_IPC' /home/milax/Escriptori/applu/data/applu.out >> /home/milax/Escriptori/appDades.out


#ammp
cd /home/milax/Escriptori/ammp/data/ref
/home/milax/Escriptori/simplesim-3.0_ecx/sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:64:32:4:l -cache:il1 il1:512:32:2:l -cache:dl2 ul2:128:64:8:l /home/milax/Escriptori/ammp/exe/ammp.exe < ammp.in > /home/milax/Escriptori/ammp/data/ammp.err 2> /home/milax/Escriptori/ammp/data/ammp.out
echo "ammp" >> /home/milax/Escriptori/appDades.out
grep 'dl1.miss_rate' /home/milax/Escriptori/ammp/data/ammp.out >> /home/milax/Escriptori/appDades.out
grep 'il1.miss_rate' /home/milax/Escriptori/ammp/data/ammp.out >> /home/milax/Escriptori/appDades.out
grep 'ul2.miss_rate' /home/milax/Escriptori/ammp/data/ammp.out >> /home/milax/Escriptori/appDades.out
grep 'sim_IPC' /home/milax/Escriptori/ammp/data/ammp.out >> /home/milax/Escriptori/appDades.out

#equake
cd /home/milax/Escriptori/equake/equake/data/ref
/home/milax/Escriptori/simplesim-3.0_ecx/sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:64:32:4:l -cache:il1 il1:512:32:2:l -cache:dl2 ul2:128:64:8:l /home/milax/Escriptori/equake/equake/exe/equake.exe < /home/milax/Escriptori/equake/equake/data/ref/inp.in 2> /home/milax/Escriptori/equake/equake/data/equake.out

echo "equake" >> /home/milax/Escriptori/appDades.out
grep 'dl1.miss_rate' /home/milax/Escriptori/equake/equake/data/equake.out >> /home/milax/Escriptori/appDades.out
grep 'il1.miss_rate' /home/milax/Escriptori/equake/equake/data/equake.out >> /home/milax/Escriptori/appDades.out
grep 'ul2.miss_rate' /home/milax/Escriptori/equake/equake/data/equake.out >> /home/milax/Escriptori/appDades.out
grep 'sim_IPC' /home/milax/Escriptori/equake/equake/data/equake.out >> /home/milax/Escriptori/appDades.out

#vpr
cd /home/milax/Escriptori/vpr/data/ref
/home/milax/Escriptori/simplesim-3.0_ecx/sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:64:32:4:l -cache:il1 il1:512:32:2:l -cache:dl2 ul2:128:64:8:l /home/milax/Escriptori/vpr/exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /home/milax/Escriptori/vpr/data/vpr.err 2> /home/milax/Escriptori/vpr/data/vpr.out

echo "vpr" >> /home/milax/Escriptori/appDades.out
grep 'dl1.miss_rate' /home/milax/Escriptori/vpr/data/vpr.out >> /home/milax/Escriptori/appDades.out
grep 'il1.miss_rate' /home/milax/Escriptori/vpr/data/vpr.out >> /home/milax/Escriptori/appDades.out
grep 'ul2.miss_rate' /home/milax/Escriptori/vpr/data/vpr.out >> /home/milax/Escriptori/appDades.out
grep 'sim_IPC' /home/milax/Escriptori/vpr/data/vpr.out >> /home/milax/Escriptori/appDades.out

#eon
cd /home/milax/Escriptori/eon/data/ref
/home/milax/Escriptori/simplesim-3.0_ecx/sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:64:32:4:l -cache:il1 il1:512:32:2:l -cache:dl2 ul2:128:64:8:l /home/milax/Escriptori/eon/exe/eon.exe chair.control.cook chair.camera chair.surfaces chair.cook.ppm ppm pixels_out.cook > eon.err 2> eon.out

echo "eon" >> /home/milax/Escriptori/appDades.out
grep 'dl1.miss_rate' eon.out >> /home/milax/Escriptori/appDades.out
grep 'il1.miss_rate' eon.out >> /home/milax/Escriptori/appDades.out
grep 'ul2.miss_rate' eon.out >> /home/milax/Escriptori/appDades.out
grep 'sim_IPC' eon.out >> /home/milax/Escriptori/appDades.out
echo "" >> /home/milax/Escriptori/appDades.out
