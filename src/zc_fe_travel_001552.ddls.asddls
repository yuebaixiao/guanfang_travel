@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forTravel'
@ObjectModel.semanticKey: [ 'TravelID' ]
@Search.searchable: true
define root view entity ZC_FE_Travel_001552
  as projection on ZI_FE_Travel_001552
{
  key TravelUUID,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  @EndUserText.label: 'Travel'
  @ObjectModel.text.element: [ 'Description' ]
  TravelID,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: '/DMO/I_Agency', 
      element: 'AgencyID'
    }
  } ]
  @EndUserText.label: 'Agency'
  @ObjectModel.text.element: [ 'AgencyName' ]
  AgencyID,
  _Agency.Name as AgencyName,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: '/DMO/I_Customer', 
      element: 'CustomerID'
    }
  } ]
  CustomerID,
  BeginDate,
  EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  TotalPrice,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Currency', 
      element: 'Currency'
    }
  } ]
  CurrencyCode,
  Description,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'zi_fe_stat_001552', 
      element: 'TravelStatusId'
    }
  } ]
  @ObjectModel.text.element: [ 'StatusText' ]
  OverallStatus,
  _TravelStatus.TravelStatusText as StatusText,

  OverallStatusCriticality,
  
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  LocalLastChangedAt,
  _Booking : redirected to composition child ZC_FE_Booking_001552,
  _Agency,
  _Currency,
  _Customer,
  _TravelStatus
  
}
