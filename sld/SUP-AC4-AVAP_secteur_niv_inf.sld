<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac4_avap_secteur</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac4_avap_secteur</se:Name>


<se:FeatureTypeStyle>
  
 <se:Rule>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>1501</se:MaxScaleDenominator>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
              <se:SvgParameter name="stroke-width">7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#0a3c7a</se:SvgParameter>
              <se:SvgParameter name="stroke-width">7</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">20 8</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>

 <se:Rule>
		<se:MinScaleDenominator>1</se:MinScaleDenominator>
		<se:MaxScaleDenominator>1501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">35</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
       <se:Radius>1.5</se:Radius>
       <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
       </se:Fill>
		</se:Halo>
       <se:Fill>
           <se:SvgParameter name="fill">#0a3c7a</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
 </se:Rule>
  
  
	  </se:FeatureTypeStyle>     
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
