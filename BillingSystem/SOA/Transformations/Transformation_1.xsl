<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.products.com/Inventory/Design" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/Ankit_Assigment_App/BillingSystem/BillingSystemBPELProcess"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BillingSystemBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InputParameters" namespace="http://www.products.com/Inventory/Design"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BillingSystemBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OutputParameters" namespace="http://www.products.com/Inventory/Design"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE MAR 13 06:29:52 IST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:OutputParameters>
         <ns0:Bill_Info>
            <ns0:Order_ID>
               <xsl:value-of select="/ns0:InputParameters/ns0:Product_Info/ns0:Order_ID"/>
            </ns0:Order_ID>
            <ns0:Cust_ID>
               <xsl:value-of select="/ns0:InputParameters/ns0:Product_Info/ns0:Cust_ID"/>
            </ns0:Cust_ID>
            <xsl:for-each select="/ns0:InputParameters/ns0:Product_Info/ns0:Item">
               <ns0:Item>
                  <ns0:Item_Name>
                     <xsl:value-of select="ns0:Item_Name"/>
                  </ns0:Item_Name>
                  <ns0:Item_Cost>
                     <xsl:value-of select="ns0:Item_Cost"/>
                  </ns0:Item_Cost>
               </ns0:Item>
            </xsl:for-each>
            <ns0:Total_Cost>
               <xsl:value-of select="sum (/ns0:InputParameters/ns0:Product_Info/ns0:Item/ns0:Item_Cost )"/>
            </ns0:Total_Cost>
         </ns0:Bill_Info>
      </ns0:OutputParameters>
   </xsl:template>
</xsl:stylesheet>