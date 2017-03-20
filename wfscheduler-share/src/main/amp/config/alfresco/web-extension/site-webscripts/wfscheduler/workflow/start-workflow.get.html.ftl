<@markup id="css" target="css" action="after">
	<@link rel="stylesheet" type="text/css" href="${page.url.context}/res/components/wfscheduler/jquery-cron.css" />
</@>

<@markup id="js" target="js" action="after">
   <@script src="${url.context}/res/components/wfscheduler/load-jquery-cron.js" group="workflow"/>
   <@script src="${url.context}/res/components/wfscheduler/start-workflow.js" group="workflow"/>
</@>

<@markup id="html" target="html" action="replace">
   <@uniqueIdDiv>
      <#include "/org/alfresco/include/alfresco-macros.lib.ftl" />
      <#assign el=args.htmlid?html>
      <div id="${el}-body" class="form-manager start-workflow">
         <div>
            <label for="${el}-workflowDefinitions" class="workflow-definition">${msg("label.workflow")}:</label>
            <#-- Workflow type menu button  -->
            <span class="selected-form-button">
               <span id="${el}-workflow-definition-button" class="yui-button yui-menu-button">
                  <span class="first-child">
                     <button type="button" tabindex="0"></button>
                  </span>
               </span>
            </span>
            <#-- Workflow type menu -->
            <div id="${el}-workflow-definition-menu" class="yuimenu" style="visibility:hidden">
               <div class="bd">
                  <ul>
                     <#list workflowDefinitions as workflowDefinition>
                     <li>
                        <span class="title" tabindex="0">${workflowDefinition.title!workflowDefinition.id?html}</span>
                        <span class="description">${(workflowDefinition.description!"")?html}</span>
                     </li>
                     </#list>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div id="${el}-workflowFormContainer">
      
      </div>
   </@>
</@>