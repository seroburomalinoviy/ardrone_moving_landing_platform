
"use strict";

let AttitudeCommand = require('./AttitudeCommand.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let RawMagnetic = require('./RawMagnetic.js');
let HeightCommand = require('./HeightCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let ServoCommand = require('./ServoCommand.js');
let MotorStatus = require('./MotorStatus.js');
let YawrateCommand = require('./YawrateCommand.js');
let ControllerState = require('./ControllerState.js');
let RawImu = require('./RawImu.js');
let RC = require('./RC.js');
let RawRC = require('./RawRC.js');
let Altimeter = require('./Altimeter.js');
let Supply = require('./Supply.js');
let MotorCommand = require('./MotorCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let Compass = require('./Compass.js');
let MotorPWM = require('./MotorPWM.js');
let ThrustCommand = require('./ThrustCommand.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let Altitude = require('./Altitude.js');

module.exports = {
  AttitudeCommand: AttitudeCommand,
  VelocityXYCommand: VelocityXYCommand,
  RuddersCommand: RuddersCommand,
  RawMagnetic: RawMagnetic,
  HeightCommand: HeightCommand,
  HeadingCommand: HeadingCommand,
  ServoCommand: ServoCommand,
  MotorStatus: MotorStatus,
  YawrateCommand: YawrateCommand,
  ControllerState: ControllerState,
  RawImu: RawImu,
  RC: RC,
  RawRC: RawRC,
  Altimeter: Altimeter,
  Supply: Supply,
  MotorCommand: MotorCommand,
  PositionXYCommand: PositionXYCommand,
  Compass: Compass,
  MotorPWM: MotorPWM,
  ThrustCommand: ThrustCommand,
  VelocityZCommand: VelocityZCommand,
  Altitude: Altitude,
};
