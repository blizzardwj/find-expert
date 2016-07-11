REM
REM	NOTE Posts.xml processing is commented out since it takes a long time.
REM	     Remove the comments to run those programs
REM
REM
REM	the script takes a file with StackOverflow posts,
REM	builds a graph of users posting questions and answers, and
REM	calculates some basic graph statistics
REM
REM     requirements:
REM       python installed
REM       Snap.py installed, http://snap.stanford.edu
REM       Posts.xml, https://archive.org/download/stackexchange/stackoverflow.com-Posts.7z, uncompress
REM
REM     http://stackoverflow.com/users/<id>

echo ... "START analysis of StackOverflow"

REM get all the question posts and accepted answers (15min)
echo ... "extracting questions ..."
REM python getQuestions.py Posts.xml > questions.txt

REM get all the answer posts (15min)
echo ... "extracting answers ..."
REM python getAnswers.py Posts.xml > answers.txt

REM get all the Java question posts, id only (15min)
echo ... "identifying Java questions ..."
REM python getTag.py Posts.xml java > java.txt

REM select questions with a Java tag (20s)
echo ... "selecting Java questions ..."
python doJoin.py java.txt questions.txt 1 1 > java-posts.txt

REM identify users of accepted answers (40s)
echo ... "finding owners of accepted answers ..."
python doJoin.py answers.txt java-posts.txt 1 3 > qa-java.txt

REM create a graph and find top users (5s)
echo ... "building a QA graph and calculating statistics ..."
python getStats.py qa-java.txt 2 6 java > stats-java.txt

echo ... "results are stored in stats.txt"
echo ... "END   analysis of StackOverflow"

