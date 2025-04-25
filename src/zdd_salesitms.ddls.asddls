@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones Documentos de Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_salesitms
  as select from zta_salesitms2
  association to parent zdd_salesdoc as _SalesDoc on $projection.Vbeln = _SalesDoc.Vbeln
{
  key vbeln  as Vbeln,
  key posnr  as Posnr,
      matnr  as Matnr,
      arktx  as Arktx,
      meins  as Meins,
      @Semantics.amount.currencyCode: 'Waerk'
      netwr  as Netwr,
      waerk  as Waerk,
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      kwmeng as Kwmeng,
      vrkme  as Vrkme,
      werks  as Werks,
      @Semantics.amount.currencyCode: 'waerk'
      netpr  as Netpr,
      _SalesDoc // Make association public
}
