#!/bin/bash

#
# This installs the CoreNLP models in the local maven repository
# Before running this scripts, download CoreNLP and copy the stanford-corenlp-X.Y.Z-models.jar in this directory.
#
# If you use Windows and cannot run this script as is, this essentially copies the jar file to:
# ~/.m2/repository/edu/stanford/nlp/stanford-corenlp-models/1.3.5/stanford-corenlp-models-1.3.5.jar
#

CORENLP_VER=1.3.5

mvn install:install-file -DartifactId=stanford-corenlp-models -DgroupId=edu.stanford.nlp -Dversion=$CORENLP_VER -Dpackaging=jar -Dfile=./stanford-corenlp-$CORENLP_VER-models.jar
