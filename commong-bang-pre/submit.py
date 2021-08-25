# coding:utf-8
import numpy as np
import json
import pandas as pd

pred_file = 'sort_hypo_glge_xsum_ck20_bsz1.txt.dedup'
sub_example = 'test_submission_example.jsonl'
save_file = 'submit.jsonl'

features = []
pred = []
example = []
with open(pred_file, 'r', encoding='utf-8') as infle:
    for line in infle.readlines():
        pred.append(line)

dict_pred = {"pred": pred}
pd_pred = pd.DataFrame(dict_pred)
pd_pred.drop_duplicates()

with open(sub_example, 'r', encoding='utf-8') as infle:
    for line in infle.readlines():
        line[pred_scene]
        example.append(line)

with open(save_file, 'w', encoding="utf-8") as fout:
    for feature in features:
        fout.write(json.dumps(feature, ensure_ascii=False) + '\n')