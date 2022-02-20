# cd ./45371
# mkdir LOAD
# mkdir PVOUT
# find all and replace 45371 -> xxxxx if you want

for mt in {1..9} ; do
	for day in {1..9} ; do
	    echo 0${mt}0${day}
		paste -d , 20100${mt}0${day}_45371/Load_1m20100${mt}0${day}_45371_TMN00*.csv > ./LOAD/LOAD_0${mt}0${day}.csv
		paste -d , 20100${mt}0${day}_45371/PVoutput_1m20100${mt}0${day}_45371_TMN00*.csv > ./PVOUT/PVOUT_0${mt}0${day}.csv
	done

	for day in {10..31} ; do
	    echo 0${mt}${day}
		paste -d , 20100${mt}${day}_45371/Load_1m20100${mt}${day}_45371_TMN00*.csv > ./LOAD/LOAD_0${mt}${day}.csv
		paste -d , 20100${mt}${day}_45371/PVoutput_1m20100${mt}${day}_45371_TMN00*.csv > ./PVOUT/PVOUT_0${mt}${day}.csv
	done
done

for mt in {10..12} ; do
	for day in {1..9} ; do
	    echo ${mt}0${day}
		paste -d , 2010${mt}0${day}_45371/Load_1m2010${mt}0${day}_45371_TMN00*.csv > ./LOAD/LOAD_${mt}0${day}.csv
		paste -d , 2010${mt}0${day}_45371/PVoutput_1m2010${mt}0${day}_45371_TMN00*.csv > ./PVOUT/PVOUT_${mt}0${day}.csv
	done

	for day in {10..31} ; do
	    echo ${mt}${day}
		paste -d , 2010${mt}${day}_45371/Load_1m2010${mt}${day}_45371_TMN00*.csv > ./LOAD/LOAD_${mt}${day}.csv
		paste -d , 2010${mt}${day}_45371/PVoutput_1m2010${mt}${day}_45371_TMN00*.csv > ./PVOUT/PVOUT_${mt}${day}.csv
	done
done

cat ./LOAD/LOAD_*.csv > load_2010.csv
cat ./PVOUT/PVOUT_*.csv > pv_2010.csv

# you can make it as month
# cat ./LOAD/LOAD_04*.csv > load_201004.csv
# cat ./PVOUT/PVOUT_04*.csv > pv_201004.csv