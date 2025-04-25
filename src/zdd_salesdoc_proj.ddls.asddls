@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones Documentos de Ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_salesdoc_proj
  provider contract transactional_query
  as projection on zdd_salesdoc
{
  key Vbeln,
      Erdat,
      Erzet,
      Auart,
      Vkorg,
      Vtweg,
      Spart,
      Kunnr,
      /* Associations */
      _CompItm : redirected to composition child zdd_salesims_proj
}
