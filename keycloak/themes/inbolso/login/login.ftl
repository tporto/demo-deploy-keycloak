<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true displayInfo=social.displayInfo; section>    
    <#if section = "form">
        <#if realm.password>
            <section class="container__form">                
                <div class="container__title">
                    <h4 class="md-semibold-distant">Plataforma inBolso</h4>
                    <h1 class="xxxl-bold-medium">Olá, seja bem-vindo!</h1>
                </div>
                <#if message?has_content>                    
                    <div class="banner">
                        <p class="xxxs-regular-distant">E-mail ou senha inválidos, tente novamente.</p>

                        <button>
                            <i class="in-x"></i>
                        </button>
                    </div>
                </#if>
                
                <form id="kc-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <label for="email" class="field">
                      <span class="xxxs-medium-distant">Informe o seu e-mail</span>                      
                      <input id="username" type="email" name="username" tabindex="1" required>
                      <small class="xxxs-medium-distant">Por favor, verifique o e-mail informado</small>
                    </label>

                    <label for="password" class="field">
                      <span class="xxxs-medium-distant">Informe a sua senha</span>                      
                      <input id="password" type="password" name="password" tabindex="2" required>
                      <i class="in-olho icon-field" onclick="showPass()"></i>
                      <small class="xxxs-medium-distant">Por favor, verifique a senha informada</small>
                    </label>

                    <!-- <label for="check" class="check">
                      <input type="checkbox" name="check" class="p-checkbox" id="check">
                      <span class="xxxs-medium-distant">Lembre-me</span>
                    </label> -->

                    <div class="buttons">
                      <button type="submit" class="p-button--large" tabindex="3">Entrar</button>                      
                    </div>
                </form>
                <p class="tagline-medium-medium color-gray-text-lighter helper">
                    Está com problemas ou sem acesso? Contate o seu supervisor ou o nosso suporte!
                </p>
            </section>            
        </#if>        
    </#if>
</@layout.registrationLayout>