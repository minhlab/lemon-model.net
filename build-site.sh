#!/bin/bash

buildsite() {
  case $1 in
  pages)
    mkdir -p htdocs/
    mkdir -p htdocs/learn
    mkdir -p htdocs/download
    mkdir -p htdocs/lexica/uby/
    mkdir -p htdocs/lexica/uby/fn
    mkdir -p htdocs/lexica/uby/ow_eng
    mkdir -p htdocs/lexica/uby/ow_deu
    mkdir -p htdocs/lexica/uby/vn
    mkdir -p htdocs/lexica/uby/WktEN
    mkdir -p htdocs/lexica/uby/WktDE
    mkdir -p htdocs/lexica/uby/wn
    mkdir -p htdocs/lexica/de-gaap/
    mkdir -p htdocs/lexica/pwn/

    cd src/

    for fileBody in `find . -name \*.html`
    do
      target=../htdocs/$fileBody
      cat >$target < header.htmlfrag
      cat >>$target $fileBody
      cat >>$target < footer.htmlfrag
    done

    for fileBody in `find . -name \*.md`
    do 
      target=../htdocs/${fileBody%.md}.html
      cat >$target < header.htmlfrag
      pandoc -f markdown -t html $fileBody >>$target
      cat >>$target < footer.htmlfrag
    done

    for file in `find . -name local.css`
    do
        cp $file ../htdocs/$file
    done

    cd ..

    cp -r resources/* htdocs/

    cp src/nonlocal-header.htmlfrag htdocs/header.htmlfrag

    cp src/nonlocal-footer.htmlfrag htdocs/footer.htmlfrag

    cp htaccess htdocs/.htaccess
	;;
  pwn)

    # Build lexica/pwn
    echo "Make Princeton WordNet"
    mkdir -p tmp/pwn
    cp -r src/lexica/pwn/* tmp/pwn
    if [ ! -e tmp/pwn/data/pwn.rdf ]
    then
      bunzip2 tmp/pwn/data/pwn.rdf.bz2
    fi
    cp -r fw/* tmp/pwn
    cd tmp/pwn
    ./convert.sh
    ./install.sh ../../htdocs/lexica/
    cd ../../
    ;;

  dbpedia_en)
    echo "Make DBpedia English"
    mkdir -p tmp/dbpedia_en
    cp -r src/lexica/dbpedia_en/* tmp/dbpedia_en
    if [ ! -e tmp/dbpedia_en/data/dbpedia_wn.nt ]
    then
      bunzip2 tmp/dbpedia_en/data/dbpedia_en.nt.bz2
    fi
    cp -r fw/* tmp/dbpedia_en
    cd tmp/dbpedia_en
    ./convert.sh
    ./install.sh ../../htdocs/lexica/
    cd ../../
    ;;

  degaap)
    # Build de-gaap
    echo "Make DE-GAAP"
    mkdir -p tmp/de-gaap
    cp -r src/lexica/de-gaap/* tmp/de-gaap
    pwd
    if [ ! -e tmp/de-gaap/de/data/de.nt ]
    then
        bunzip2 tmp/de-gaap/de/data/de.nt.bz2
        rapper -i rdfxml -o ntriples src/lexica/de-gaap/lexicon.de.rdf >> tmp/de-gaap/de/data/de.nt
    fi
    if [ ! -e tmp/de-gaap/en/data/en.nt ]
    then
       bunzip2 tmp/de-gaap/en/data/en.nt.bz2
       rapper -i rdfxml -o ntriples src/lexica/de-gaap/lexicon.en.rdf >> tmp/de-gaap/en/data/en.nt
    fi
    cp -r fw/* tmp/de-gaap/de/
    cp -r fw/* tmp/de-gaap/en/
    cd tmp/de-gaap/de/
    ./convert.sh
    ./install.sh ../../../htdocs/lexica/de-gaap/
    cd ../en
    ./convert.sh
    ./install.sh ../../../htdocs/lexica/de-gaap/
    cd ../../../
    cp src/lexica/de-gaap/htaccess htdocs/lexica/de-gaap/.htaccess
    cp src/lexica/de-gaap/index.php htdocs/lexica/de-gaap/
    cp src/lexica/de-gaap/*.rdf htdocs/lexica/de-gaap/
    cp src/lexica/de-gaap/rdf2html.xsl htdocs/lexica/de-gaap/
    ;;

  uby)
# Build Uby
    echo "Make Uby"
    for res in fn ow_deu ow_eng vn WktDE WktEN wn
    do
        mkdir -p tmp/uby/$res
        cp -r src/lexica/uby/$res/* tmp/uby/$res/
        if [ ! -e tmp/uby/$res/data/$res.nt ]
        then
            bunzip2 tmp/uby/$res/data/$res.nt.bz2
        fi
        cp -r fw/* tmp/uby/$res/
        cd tmp/uby/$res
        ./convert.sh
        ./install.sh ../../../htdocs/lexica/uby/
        cd ../../../
    done

    echo "It is highly recommended to rm -fr tmp now"
    ;;
  test)
    echo "It works!"
    ;;
  esac
}

case $1 in 
  all)
     buildsite "pages"
     buildsite "pwn"
     buildsite "dbpedia_en"
     buildsite "degaap"
     buildsite "uby"
     ;;
  *)
     buildsite $1
     ;;
esac

