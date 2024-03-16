<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<style>
div {
  border: 3px solid LightGray;
  margin: auto;
  max-width: 700px;
  padding: 2px 20px 2px 20px;
  font-family: Arial, Helvetica, sans-serif;
  text-align: center;
}
div div { margin: 0; padding: 0; border: 0;}
img { max-width: 328px; }
h1, h2, h3, h5, h6 { color: White; }
h4 { color: black; }
table { width: 100%; }
tr:nth-child(even){ background-color: #f2f2f2; }

tr:hover { background-color: #ddd; }
th, td { border-bottom: 1px solid #ddd; text-align: left;}
.green { background-color: ForestGreen; }
.red { background-color: Tomato; }
.blue { background-color: LightBlue; }
.gray { background-color: Gray; color:White; }
.light { background-color:LightGray; }
</style>
</head>
<body>
<div>
<div class="gray"><h1>🤕INCIDENTE INICIADO🤕</h1></div>
<div class="gray"><h4>DETALLE DE SERVIDOR</h4></div>
<table>
      <tr><td style="width:30%"> </td>  <td> </td></tr>
      <tr><td>Proxy:🤖</td>       <td>{PROXY.NAME}</td></tr>
      <tr><td>Nome:💬</td>        <td>{HOST.NAME}</td></tr>
      <tr><td>IP:💻</td>          <td>{HOST.CONN}</td></tr>
      <tr><td>Descrição:👀</td>   <td>{HOST.DESCRIPTION}</td></tr>
    </table>

<div class="light"><h4>DETALLE DEL INICIDENTE</h4></div>
<table>
      <tr><td style="width:30%"> </td>  <td> </td></tr>
      <tr><td>Incidente:🚨</td>   <td>{EVENT.NAME}</td></tr>
      <tr><td>Início:🕐</td>      <td>{EVENT.TIME} de {EVENT.DATE}</td></tr>
      <tr><td>Severidade:🤔</td>  <td>{TRIGGER.SEVERITY}</td></tr>
      <tr><td>Chave:🔑</td>       <td>{ITEM.KEY}</td></tr>
      <tr><td>Valor:💸</td>       <td>{ITEM.VALUE}</td></tr>
      <tr><td>Status:⚖️</td>      <td>{TRIGGER.STATUS}</td></tr>
    </table>

</div>

<div class="gray">☕ Support ☕</div>

</body>
</html>
