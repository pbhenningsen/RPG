{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "oShopItem",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"value":"NewTextBox",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Item description\",1,[\"6:Purchase\",\"0:No Thanks!\"]]",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityShadow","path":"objects/pEntity/pEntity.yy",},"value":"False",},
  ],
  "parent": {
    "name": "Entities",
    "path": "folders/Objects/Entities.yy",
  },
  "parentObjectId": {
    "name": "pEntity",
    "path": "objects/pEntity/pEntity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"item","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"ITEM.BOMB","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"itemCost","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"itemAmount","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "sItemUI",
    "path": "sprites/sItemUI/sItemUI.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}