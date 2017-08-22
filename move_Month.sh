DIR="/RESTORE_MEDIACAO02"
MES="Jul_17"
mesn="07"
hdfs_dir="/main_stage/med/BKP"

echo "Verificando se $mes existe no hdfs"
hdfs dfs -test -d /main_stage/med/BKP/$MES

if [ $? == 1 ];then
    echo "Criando diretorio $mes no HDFS..."
    hdfs dfs -mkdir ${hdfs_dir}/$MES
fi

ls ${DIR}/${MES}/*2017${mesn}01*.gz | rev | cut -c19-28 | rev | sort | uniq > ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}02*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}03*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}04*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}05*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}06*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}07*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}08*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}09*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}10*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}11*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}12*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}12*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}13*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}14*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}15*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}16*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}17*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}18*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}19*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}20*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}21*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}22*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}23*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}24*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}25*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}26*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}27*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}28*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}29*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}30*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt
ls ${DIR}/${MES}/*2017${mesn}31*.gz | rev | cut -c19-28 | rev | sort | uniq >> ${MES}.txt

./move_tunned.sh ${MES}.txt 20 ${DIR} ${MES}

