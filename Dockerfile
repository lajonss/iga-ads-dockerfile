from ubuntu:xenial
RUN apt-get update && apt-get install -y git cmake emacs24 gfortran liblapack-doc liblapack-dev libblas-doc libblas-dev libboost-all-dev
RUN apt-get install -y wget tar
RUN wget http://iss.ices.utexas.edu/projects/galois/downloads/Galois-2.2.1.tar.gz
RUN tar xzvf Galois-2.2.1.tar.gz
RUN cd Galois-2.2.1/build && mkdir release
RUN apt-get install -y g++
RUN cd Galois-2.2.1/build/release && cmake -DSKIP_COMPILE_APPS=ON ../.. && make && make install
RUN wget https://netcologne.dl.sourceforge.net/project/libunittest/libunittest-9.3.5.tar.gz
RUN tar -xvf libunittest-9.3.5.tar.gz
RUN cd libunittest-9.3.5/ && ./configure && make && make install
RUN apt-get install -y gnuplot
RUN git clone https://github.com/marcinlos/iga-ads
RUN cd iga-ads/ && cmake . && make
