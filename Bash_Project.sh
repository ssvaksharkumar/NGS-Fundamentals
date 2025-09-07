#!/bin/bash # Shebang code as default
# Bash Project 0 Submission
# Printing name
name="Aksharkumar"  # Creating a variable to use it afterwards
echo "My name is $name"   # Printing my name
# Creating a folder in my name
mkdir Aksharkumar
# Creating another directory and changing to that directory
mkdir biocomputing && cd biocomputing

# Downloading the files:
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# Moving the .fna file to my folder under my name:
mv wildtype.fna ../Aksharkumar/  # Moving the file by level operation to my folder

# Deleting the duplicate gbk file:
rm wildtype.gbk.1 

# Confirming whether the file is mutant or wildtype (tatatata VS tata):
cd hackbio/Aksharkumar
# Conditional logic gives the highest occurence stating mutant type
if grep -qi "tatatata" "wildtype.fna"; then
    echo "The founded type was Mutant sequence"
elif grep -qi "tata" "wildtype.fna"; then
    echo "The founded type was Wildtype sequence"
else
    echo "Neither of both types"
fi

# The .fna file is a mutant sequence

# Printing matching lines into a new file

grep -i "tatatata" wildtype.fna > mutant_file

# Count number of lines excluding Header file in .gbk file
awk '/ORIGIN/{found=1;next} found {print}' wildtype.gbk | wc -l   # There are 3291 sequences after Origin
# Sequence length of .gbk file
head -n 1 wildtype.gbk | awk '{print $3}'
# SOURCE Organism of the file
awk '/SOURCE/ {print $2, $3}' wildtype.gbk # Printing the source name of Organism Staphylooccus aureus

# Listing all gene names of .gbk file
grep '/gene=' wildtype.gbk | awk -F '"' '{print $2}' # Extracting the pattern and printing only the gene names

# Printing all commands used today
clear && history

# Listing files in two folders
cd hackbio/Aksharkumar/ && ls -lh
total 200K
-rw-rw-r-- 1 ssvaksh ssvaksh  793 Sep  5 15:49 mutant_file
-rw-rw-r-- 1 ssvaksh ssvaksh 196K Sep  5 15:38 wildtype.fna
cd hackbio/biocomputing/ && ls -lh
total 392K
-rw-rw-r-- 1 ssvaksh ssvaksh 391K Sep  5 14:30 wildtype.gbk
# Project 2

# Installing Bioinformatics Software on Terminal
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
bash --version
# Activating base environment and setting the path
export PATH ="$HOME/miniconda3/bin:$PATH"
conda --version
conda activate base
# Creating a conda environment
conda create -n funtools python=3.11
# Activating the funtools environment
conda activate funtools

# Install Figlet
sudo apt-get install figlet
# Running Figlet with my name
figlet "AksharKumar"

# Installing bwa
# Adding channels in default order
conda config --add channels default
conda config --add channels bioconda
conda config --add channels conda-forge

#bwa shows Burrows Wheeler Alignment

# Installing blast
conda install blast
which blastn
blastn -version

# Installing samtools
conda create -n bioinfo -c bioconda samtools -y
# Installing bedtools
conda install bedtools
which bedtools

# Installing spades
conda install spades
spades.py --version


# Installing bcftools
conda install -c bioconda bcftools
# Installing fastp
conda install fastp
which fastp

# Installing multiqc
conda install multiqc
which multiqc

# Professional Profile

# Git hub repo link


# Video Team link
https://www.linkedin.com/posts/oluwasefunmi-shodunke_bioinformatics-genomics-conda-activity-7366815390154297344-b_AG?utm_medium=ios_app&rcm=ACoAACTm-A0BlYsqMeeDlJGEWOHkbU8MlaMuRSM&utm_source=social_share_send&utm_campaign=copy_link
