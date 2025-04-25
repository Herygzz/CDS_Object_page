@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projección Posiciones Documentos de Vtas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_salesims_proj
  as projection on zdd_salesitms
{
  key Vbeln,
  key Posnr,
      Matnr,
      Arktx,
      Meins,
      @Semantics.amount.currencyCode: 'waerk'
      Netwr,
      Waerk,
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      Kwmeng,
      Vrkme,
      Werks,
      @Semantics.amount.currencyCode: 'waerk'
      Netpr,
      /* Associations */
      _SalesDoc : redirected to parent zdd_salesdoc_proj
}
