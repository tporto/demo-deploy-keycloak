<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//pt-BR"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <title>inBolso</title>
    <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/inbolso/in-icons@master/dist/all.css">

    <#list properties.styles?split(' ') as style>
        <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
    </#list>
    

    <#list properties.scripts?split(' ') as script>
        <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
    </#list>    
</head>
	<body>
        <#nested "header">
        <main class="container">            
            <aside class="container__image">
              <img src="${url.resourcesPath}/img/animation.gif" alt="Animação">
            </aside>
            <header>
              <img src="${url.resourcesPath}/img/logo-inbolso.svg" alt="Logo Inbolso">
            </header>

            <#nested "form">
        </main>        
	</body>
</html>
</#macro>