FROM continuumio/miniconda

COPY loop.sh /loop.sh

RUN apt-get --allow-releaseinfo-change update
RUN apt-get update &&  apt-get install -y libncurses5 vim
RUN conda install -y -c bioconda samtools=1.2
RUN conda install -y -c bioconda bedtools=2.24.0
RUN conda install -y -c bioconda bowtie2=2.2.5
RUN conda install -y -c bioconda bcftools=1.2
RUN conda install -y -c bioconda cufflinks=2.2.1
RUN wget https://ccb.jhu.edu/software/tophat/downloads/tophat-2.0.14.Linux_x86_64.tar.gz && \
  tar -xvzf tophat-2.0.14.Linux_x86_64.tar.gz && \
  mv tophat-2.0.14.Linux_x86_64/* /usr/bin

CMD /loop.sh
