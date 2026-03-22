#!/bin/bash

set -e

echo "Starting project setup..."

echo "Installing Python dependencies..."
python3 -m pip install -r requirements.txt

echo "Creating data directory..."
mkdir -p data

if [ -f "data/train.csv" ] && [ -f "data/test.csv" ]; then
    echo "Dataset already exists in data/. Skipping download."
else
    echo "Downloading dataset from Kaggle..."
    export PATH=$PATH:$HOME/.local/bin
    kaggle datasets download -d kaushalnandania/credit-card-fraud-detection

    echo "Unzipping dataset into data/..."
    unzip -o credit-card-fraud-detection.zip -d data/
fi

echo "Setup complete."
echo "Expected files:"
echo " - data/train.csv"
echo " - data/test.csv"
