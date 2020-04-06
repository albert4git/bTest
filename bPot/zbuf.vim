To run these locally, you may execute the following in a terminal (requires git and docker to be installed):

git clone git@github.com:calyau/maxima-tutorial-notebooks.git
cd maxima-tutorial-notebooks
docker run -it \
    -v `pwd`/notebooks:/home/oubiwann/maxima-jupyter/examples \
    -p 8888:8888 \
    calyau/maxima-jupyter \
    notebook --ip=0.0.0.0 --port=8888

Note that the above docker command is so useful that I have wrapped it in a shell script start-maxima and use it for all my computational maths projects.


        let hiDisplaySettings = {
                                \      '1': {
                                \          "name": "Text",
                                \          "texthl": "Search",
                                \      },
                                \      '2': {
                                \          "name": "Read",
                                \          "texthl": "Search",
                                \      },
                                \      '3': {
                                \          "name": "Write",
                                \          "texthl": "Search",
                                \      },
                                \  }

        let hiDisplaySettings = {
                                \      1: {
                                \          "name": "Error",
                                \          "texthl": "Search",
                                \      },
                                \      2: {
                                \          "name": "Read",
                                \          "texthl": "Text",
                                \      },
                                \      3: {
                                \          "name": "Write",
                                \          "texthl": "Search",
                                \      },
                                \  }

        let g:LanguageClient_documentHighlightDisplay = hiDisplaySettings

