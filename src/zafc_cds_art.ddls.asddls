@AbapCatalog.sqlViewName: 'ZAFC_V_CDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista artículos arte'
@Metadata.ignorePropagatedAnnotations: true
define view zafc_cds_art as select from zafc_tab_art
{
    key id_art as IdArt,
    desc1 as Desc1,
    desc2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
        //0 neutral grey
        //1 negative red
        //2 critical yellow
        //3 positive green
        case
        when stock = 0 then 0
        when stock between 1 and 10 then 1
        when stock between 11 and 99 then 2
        when stock >= 100 then 3
        else 0
        end as status
        
}
