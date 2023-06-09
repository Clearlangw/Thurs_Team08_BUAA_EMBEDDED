
"use strict";

let GetNumOfWaypoints = require('./GetNumOfWaypoints.js')
let AddNewWaypoint = require('./AddNewWaypoint.js')
let SaveWaypoints = require('./SaveWaypoints.js')
let GetWaypointByName = require('./GetWaypointByName.js')
let GetWaypointByIndex = require('./GetWaypointByIndex.js')
let GetChargerByName = require('./GetChargerByName.js')

module.exports = {
  GetNumOfWaypoints: GetNumOfWaypoints,
  AddNewWaypoint: AddNewWaypoint,
  SaveWaypoints: SaveWaypoints,
  GetWaypointByName: GetWaypointByName,
  GetWaypointByIndex: GetWaypointByIndex,
  GetChargerByName: GetChargerByName,
};
