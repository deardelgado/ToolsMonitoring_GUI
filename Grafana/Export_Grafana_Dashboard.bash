##########################################################
Exporting Grafana Graphics as a PDF -  Install 
##########################################################

yum install texlive-pdftex texlive-latex-bin texlive-texconfig* 
texlive-latex* texlive-metafont* texlive-cmap* texlive-ec texlive-fncychap*  
texlive-titlesec* texlive-multirow texlive-framed* texlive-wrapfig* texlive-parskip* 
texlive-caption texlive-collection-fontsrecommended  texlive-collection-latexrecommended texinfo-tex

## Nos descargamos Go y lo instalamos:

wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

## Nos descargamos el Reporter que nos permitirá lo dicho, generar un PDF con los Dashboards de Grafana:

go get github.com/IzakMarais/reporter/...
go install -v github.com/IzakMarais/reporter/cmd/grafana-reporter

## Probamos que este corriendo>

/root/go/bin/grafana-reporter

-----------------------------------------------------------

    Type: Link, dejamos marcado ese tipo.
    Url: http://DIRECCION_IP_GRAFANA:8686/api/v5/report/{dashboardUID}
    Title: Informe PDF
    Tooltip: Genera un PDF de este Dashboard
    Icon: doc, para que sea un icono de un documento.
    Time range: Lo marcamos para permitir poner periodos de tiempo.
    Variable values: Lo marcamos para jugar con las fechas.
    Open in new tab: Lo marcamos si queremos que el PDF lo genere en una nueva pestaña.
--------------------------------------------------------------------------------------------

