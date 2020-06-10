<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac4_avap_ptpatrimoine</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac4_avap_ptpatrimoine</se:Name>
      
      
     <se:FeatureTypeStyle>
      
        <se:Rule>
         <se:MinScaleDenominator>1501</se:MinScaleDenominator>
		 <se:MaxScaleDenominator>2501</se:MaxScaleDenominator>
          <se:PointSymbolizer>
               <se:Graphic>
                  <se:ExternalGraphic>
                     <se:OnlineResource xlink:type="simple" xlink:href="avap/ptpatrimoine.png"/>
                     <se:Format>image/png</se:Format>
                  </se:ExternalGraphic>
                  <se:Size>12</se:Size>
               </se:Graphic>
          </se:PointSymbolizer>
       </se:Rule>
       
       <se:Rule>
         <se:MinScaleDenominator>501</se:MinScaleDenominator>
		 <se:MaxScaleDenominator>1501</se:MaxScaleDenominator>
          <se:PointSymbolizer>
               <se:Graphic>
                  <se:ExternalGraphic>
                     <se:OnlineResource xlink:type="simple" xlink:href="avap/ptpatrimoine.png"/>
                     <se:Format>image/png</se:Format>
                  </se:ExternalGraphic>
                  <se:Size>16</se:Size>
               </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
       
       <se:Rule>
         <se:MinScaleDenominator>1</se:MinScaleDenominator>
		 <se:MaxScaleDenominator>501</se:MaxScaleDenominator>
          <se:PointSymbolizer>
               <se:Graphic>
                  <se:ExternalGraphic>
                     <se:OnlineResource xlink:type="simple" xlink:href="avap/ptpatrimoine.png"/>
                     <se:Format>image/png</se:Format>
                  </se:ExternalGraphic>
                  <se:Size>20</se:Size>
               </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>

      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
