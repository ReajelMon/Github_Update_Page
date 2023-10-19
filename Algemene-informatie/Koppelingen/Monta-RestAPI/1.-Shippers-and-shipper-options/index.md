# 1. Shippers and shipper options

## Shippers and shipper options

Below is an incomplete list of the shippers we support, with their code.
Please note that a shipper has to be enabled for your account before you can use it.


| **Code** |  **Description**|
|--|--|
| PAK | PostNL pickup points|
| PostNL | PostNL delivery |
| DPD | DPD delivery |
| DPDparcelstore | DPD pickup points |
| UPS | UPS delivery |
| SEL | DHL parcel |
| SELBuspakje | DHL parcel mailbox delivery |
| DHLservicepunt | DHL pickup points (only in the Netherlands) |
| BpackPickupPoint | Bpost pickup points (only in Belgium) |
| Cancelled | An order which is already picking cannot be blocked or deleted anymore. Still shipping can be stopped by changing the shipper to Cancelled. The order will be shipped and returned.  |


Below is an incomplete list of the shippers we support in our RMA-portals, with their code.

| **Code** |  **Description**|
|--|--|
| PostNL | PostNL Pakket return |
| DPD | DPD return |
| DHLFYPakket | DHL For You Pakket |
| UPS | UPS return |
| SEL | DHL Parcel return |
| PostNlBuspakje | PostNL Buspakje return |
| DhlParcelPickup | DHL pickup |
| PostNLSmart | PostNL paperless return |
| DHLParcelConnect | DHL Parcel Connect return |

### Shipper option codes
Some of the shippers above have options. These are used to enable certain features for a shipment
or for specifying information for a shipment.

#### PostNL
|**Option code**  | **Required** | **Description** |
|--|--|--|
| SignatureOnDelivery | Optional, no value | Add this code to require the receiver of the shipment to sign |
| NoNeighbour | Optional, no value | Add this code to not allow PostNL to deliver at the neighbour |
| EveningDelivery | Optional, no value | Add this code to enable delivery in the evening. Take care: not available everywhere. |
| FoodNetwork | Optional, no value | Add this code to enable delivery via the PostNL foodnetwork.  |
| AgeCheckRequired | Optional,string, format: “DD-MMYYYY” | Add this code to enable the age verification on delivery.  |

#### PAK (PostNL pickup point)
|**Option code**  | **Required** | **Description** |
|--|--|--|
| EarlyMorningPickup| Optional, no value | To enable early morning pickup for this shipment. Has to be supported by the pickup points. |
| PickupPointCode |Required for shipping to a pickup point in Belgium  | Code of the pickup point to ship to (“Downnetwork pickup location code”)  |
| PickupPointRetailID | Required for shipping to a pickup point in Belgium  | Code of the pickup point partner (“Downnetwork partner ID”) |

#### DHLservicepunt
|**Option code**  | **Required** | **Description** |
|--|--|--|
| ServicePointCode | Required, text | The code of the DHL service point this order should be delivered to.  |

#### DPDparcelstore
|**Option code**  | **Required** | **Description** |
|--|--|--|
| ParcelstoreID | Required, text | The code of the DPD parcel store this order should be delivered to.  |

#### UPS
|**Option code**  | **Required** | **Description** |
|--|--|--|
| Express | Optional, no value  | Normally we choose UPS service (standard/express) base on the country. With this option you can specify to always choose Express service.   |

#### SEL (DHL parcel)
|**Option code**  | **Required** | **Description** |
|--|--|--|
| SignatureOnDelivery | Optional, no value  | Add this code to require the receiver of the shipment to sign  |

#### DHLservicepunt
|**Option code**  | **Required** | **Description** |
|--|--|--|
| ServicePointCode | Required, text | The code of the DHL pickup point this order should be delivered to  |

#### BpackPickupPoints (Bpost Belgium)
|**Option code**  | **Required** | **Description** |
|--|--|--|
| PickupPointCode | Required, text | The code of the Bpost pickup point this order should be delivered to (PUGO Id) |
| PickupPointType | Optional, text | The type of Bpost pickup point |

#### DHLDE
|**Option code**  | **Required** | **Description** |
|--|--|--|
| PackingStationCode |  |  |
| PostNumber |  |  |
