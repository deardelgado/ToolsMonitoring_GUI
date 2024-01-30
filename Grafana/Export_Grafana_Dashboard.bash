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

## Solucionamos error go.mod file not found

Solución 1: uso de la variable de entorno GO111MODULE
GO111MODULEes una variable de entorno que controla el soporte del módulo en Go. Puede tener tres valores: apagado, encendido y automático.

off: Sin soporte de módulo; Los comandos Go ignoran el go.modarchivo.
on: la compatibilidad con el módulo está habilitada y los comandos Go buscarán y utilizarán el go.modarchivo.
auto(o desarmado): los comandos Go utilizarán el soporte del módulo si go.modhay un archivo presente.
Si GO111MODULE  está configurado en off, hará que la cadena de herramientas de Go ignore el go.modarchivo, lo que podría generar el error "archivo go.mod no encontrado" porque no se reconoce incluso si está allí.

Comand

go build
 go env -w GO111MODULE=off
 go build
------
Solución 2: inicialice el directorio de trabajo
Cuando se trabaja en proyectos de Go, la cadena de herramientas de Go se basa en el go.modarchivo para administrar dependencias y módulos. Si el archivo falta o está fuera de lugar, se activa el error "archivo go.mod no encontrado". La solución tiene como objetivo rectificar este problema mediante los siguientes pasos:

1. Navegue al Directorio de proyectos:

Asegúrese de estar en el directorio de proyecto correcto donde debe residir su módulo Go. Puede navegar al directorio de su proyecto usando el cdcomando. Por ejemplo, si su main.go está dentro, ~/projects/helloworldentonces haga cd ~/projects/helloworldel directorio.

2. Verifique la presencia de go.mod:

Una vez en el directorio correcto, verifique si el go.modarchivo está presente. Puede utilizar el lscomando en sistemas Unix/Linux o diren Windows para enumerar los archivos en el directorio. Este archivo es fundamental para la gestión del módulo y debe ubicarse en la raíz del proyecto.

3. Inicialice un nuevo módulo Go:

Si el go.modarchivo no está, es necesario inicializar un nuevo módulo Go. Esto se logra usando el go mod init <module-name>comando, que crea un nuevo go.modarchivo, marcando el directorio del proyecto como la raíz del módulo.

4. Verifique el archivo go.mod:

Después de la inicialización, es esencial confirmar la eficacia de la solución. Esto implica verificar si el go.modarchivo está presente y configurado correctamente, asegurando que los comandos Go posteriores se ejecuten sin el error "archivo go.mod no encontrado".

5. Ejecute sus comandos Go:

Ahora, intente ejecutar sus comandos Go, como go buildo go run, y deberían funcionar sin encontrar el error "archivo go.mod no encontrado".


## Nos descargamos el Reporter que nos permitirá lo dicho, generar un PDF con los Dashboards de Grafana:
## Instalamos git, si no esta instalado
yum install -y git
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

