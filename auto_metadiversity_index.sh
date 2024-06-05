#Script para automatizar el programa de indice de metadiversidad de python
#Es recomendable respaldar el MD_results.csv que ya este creado porque agrega entradas entonces puede haber redundancia

#rm -f MD_results.csv
path=$1

touch MD_results.csv
echo "SAMPLE,CONTIGS,RICHNESS,SHANNON,SIMPSON,LOG10_MD,MDI" > ./MD_results.csv

for filename in $path*.faa; do
	python /MD_index/metadiversity_index.py -i $filename -r F
	done
mv ./MD_results.csv $path

echo "Trabajo Finalizado"
