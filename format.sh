for day in {1..9} ; do
    echo 120${day}
	paste -d , 2010120${day}_11316/Load_1m2010120${day}_11316_TMN00*.csv > ./LOAD/LOAD_120${day}.csv
	paste -d , 2010120${day}_11316/PVoutput_1m2010120${day}_11316_TMN00*.csv > ./PVOUT/PVOUT_120${day}.csv
done

for day in {10..31} ; do
    echo 12${day}
	paste -d , 201012${day}_11316/Load_1m201012${day}_11316_TMN00*.csv > ./LOAD/LOAD_12${day}.csv
	paste -d , 201012${day}_11316/PVoutput_1m201012${day}_11316_TMN00*.csv > ./PVOUT/PVOUT_12${day}.csv
done

cat ./LOAD/LOAD_*.csv > load_2010.csv
cat ./PVOUT/PVOUT_*.csv > pv_2010.csv

cat ./LOAD/LOAD_04*.csv > load_201004.csv
cat ./PVOUT/PVOUT_04*.csv > pv_201004.csv

paste -d , 20101201_11316/Load_1m20101201_11316_TMN00*.csv > ./LOAD/LOAD_1201.csv
paste -d , 20101201_11316/PVoutput_1m20101201_11316_TMN00*.csv > ./PVOUT/PVOUT_1201.csv