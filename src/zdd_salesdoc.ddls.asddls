@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Documentos de Ventas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zdd_salesdoc
  as select from zta_salesdoc2
  composition [1..*] of zdd_salesitms as _CompItm
{
  key vbeln as Vbeln,
      erdat as Erdat,
      erzet as Erzet,
      auart as Auart,
      vkorg as Vkorg,
      vtweg as Vtweg,
      spart as Spart,
      kunnr as Kunnr,
      _CompItm // Make association public
}
