build:
	go get github.com/kr/pretty
	go build -o main .
	echo "" > provenance.txt
	echo "Go Version: " > provenance.txt 
	go version >> provenance.txt
	echo "\n\nPackage Versions: " >> provenance.txt
	go list -m all >> provenance.txt
	echo "\n\nBuilt At: " >> provenance.txt
	date >> provenance.txt
	echo "\n\nBuilt In: " >> provenance.txt
	pwd >> provenance.txt
	echo "\n\nBuilt By: " >> provenance.txt
	whoami >> provenance.txt

