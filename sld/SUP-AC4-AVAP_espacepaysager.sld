<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac4_avap_espacepaysager</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac4_avap_espacepaysager</se:Name>
    
   <se:FeatureTypeStyle>  
   
        <se:Rule>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>5001</se:MaxScaleDenominator>
         <se:PolygonSymbolizer>
            <se:Fill>
               <se:GraphicFill>
                <se:Graphic>
                  <se:ExternalGraphic>
                     <se:OnlineResource xlink:type="simple" xlink:href="avap/espacepaysager.png"/>
                     <se:Format>image/png</se:Format>
                  </se:ExternalGraphic>
                  <se:Size>10</se:Size>
                </se:Graphic>
              </se:GraphicFill>
             <se:SvgParameter name="fill-opacity">0.5</se:SvgParameter>
           </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#5a8c28</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>                          
        
        
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
