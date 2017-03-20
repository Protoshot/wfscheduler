<#assign submitTime=true>
<#assign showTime=true>

<#if showTime><#assign viewFormat>${msg("form.control.date-picker.view.time.format")}</#assign><#else><#assign viewFormat>${msg("form.control.date-picker.view.date.format")}</#assign></#if>
<#assign disabled=false>


<#assign multiValued=false>

<div class="form-field">
         <#assign controlId = fieldHtmlId + "-cntrl">
         
         <script type="text/javascript">//<![CDATA[
         (function()
         {
            new Alfresco.DatePicker("${controlId}", "${fieldHtmlId}").setOptions(
            {
               <#if disabled>disabled: true,</#if>
               showTime: ${showTime?string},
               submitTime: ${submitTime?string},
            }).setMessages(
               ${messages}
            );
         })();
         //]]></script>
      
         <input id="${fieldHtmlId}" type="hidden" name="" value="" />
      
         <label for="${controlId}-date">${msg("sheduler.calendar.name")}:<span class="mandatory-indicator">${msg("form.required.fields.marker")}</span></label>
         <input id="${controlId}-date" name="-" type="text" class="date-entry" <#if disabled>disabled="true"<#else>tabindex="0"</#if> />
      
         <#if disabled == false>
            <a id="${controlId}-icon"><img src="${url.context}/res/components/form/images/calendar.png" class="datepicker-icon" tabindex="0"/></a>
         </#if>
      
         <div id="${controlId}" class="datepicker"></div>
      
         <#if showTime>
            <input id="${controlId}-time" name="-" type="text" class="time-entry" <#if disabled>disabled="true"<#else>tabindex="0"</#if> />
         </#if>
         
         <div class="format-info">
            <span class="date-format">${msg("form.control.date-picker.display.date.format")}</span>
            <#if showTime><span class="time-format<#if disabled>-disabled</#if>">${msg("form.control.date-picker.display.time.format")}</span></#if>
         </div>
</div>