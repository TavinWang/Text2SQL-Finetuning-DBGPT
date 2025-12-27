# Text2SQL-Finetuning-DBGPT

This repository contains a **course project** for large language model fine-tuning on the **Text-to-SQL** task, based on the **DB-GPT-Hub** framework.  
The project focuses on **QLoRA-based fine-tuning** and provides an empirical comparison between a **baseline model** and a **fine-tuned model** on a Spider-style evaluation setting.


## 📌 Project Overview

Text-to-SQL aims to translate natural language questions into executable SQL queries over relational databases.  
In this project, we leverage the existing **DB-GPT-Hub Text-to-SQL pipeline** and conduct fine-tuning experiments on a code-oriented large language model.

**Project characteristics:**
- Framework-based implementation (no new model architecture proposed)
- QLoRA fine-tuning under limited hardware resources
- Baseline vs. fine-tuned performance comparison
- Focus on empirical analysis rather than methodological novelty


## 🧠 Model and Method

- **Base Model**: Qwen2.5-Coder-7B-Instruct  
- **Fine-tuning Method**: QLoRA (4-bit quantization + LoRA adapters)  
- **Framework**: [DB-GPT-Hub](https://github.com/eosphoros-ai/DB-GPT-Hub)  
- **Task**: Text-to-SQL generation  
- **Evaluation Metric**: Execution Accuracy (EX)


## 📂 Repository Structure

```txt
├── DB-GPT-Hub/                         # DB-GPT-Hub source code (framework)
│   └── src/dbgpt-hub-sql/
│       └── dbgpt_hub_sql/              # Text-to-SQL related modules
│           ├── train/                  # Fine-tuning
│           ├── predict/                # Inference 
│           ├── eval/                   # Evaluation 
│           ├── .../               
│           └── scripts/                # Shell scripts
├── models/                             # Model weights (not tracked)
└── README.md
```


## 🚫 Model Weights

Due to file size limitations, **model weights are NOT included** in this repository.

To reproduce the experiments:
1. Download the base model (e.g., Qwen2.5-Coder-7B-Instruct) from HuggingFace
2. Place the model under a local `models/` directory
3. Update the corresponding paths in the training or inference scripts

Example directory structure:
```txt
models/
└── Qwen2.5-Coder-7B-Instruct/
```


## ⚙️ Training and Inference

**Note:** All training, inference, and evaluation commands should be executed from the directory  `DB-GPT-Hub/src/dbgpt-hub-sql`.  
The main scripts used in this project are provided by DB-GPT-Hub and slightly adapted for this experiment.

### Fine-tuning
```bash
sh dbgpt_hub_sql/scripts/train_sft.sh
```

### Fine-tuned Model Inference
```bash
sh dbgpt_hub_sql/scripts/predict_sft.sh
```

### Evaluation
```bash
python dbgpt_hub_sql/eval/evaluation.py \
  --plug_value \
  --input dbgpt_hub_sql/output/pred/pred_qwen25_text2sql.sql
```
