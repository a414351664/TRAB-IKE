# source ~/.bashrc
INPUT_FILE=~/data1/Commongen/final_data/commongen/commongen.dev.src_alpha.txt
TRUTH_FILE=~/data1/Commongen/final_data/commongen/commongen.dev.tgt.txt
PRED_FILE=~/data1/Bang_commongen/outputs/sort_hypo_glge_xsum_ck20_bsz1.txt.dedup

echo ${INPUT_FILE} 
echo ${TRUTH_FILE}
echo ${PRED_FILE}

echo "Start running ROUGE"

cd unilm
python src/gigaword/eval.py --pred ${PRED_FILE}  --gold ${TRUTH_FILE} --perl


echo "BLEU/METER/CIDER/SPICE"
cd ~/EKI-BART/TRAB-IKE/evaluation/Traditional/eval_metrics/
python eval.py --key_file ${INPUT_FILE} --gts_file ${TRUTH_FILE} --res_file ${PRED_FILE}


echo "Coverage"
cd ~/EKI-BART/TRAB-IKE/evaluation/PivotScore
python evaluate.py --pred ${PRED_FILE}   --ref ${TRUTH_FILE} --cs ${INPUT_FILE} --cs_str ~/data1/Commongen/final_data/commongen/commongen.dev.cs_str.txt



