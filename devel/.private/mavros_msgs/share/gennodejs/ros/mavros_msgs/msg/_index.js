
"use strict";

let TimesyncStatus = require('./TimesyncStatus.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let State = require('./State.js');
let StatusText = require('./StatusText.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let RotorControl = require('./RotorControl.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let ESCInfo = require('./ESCInfo.js');
let ManualControl = require('./ManualControl.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let Trajectory = require('./Trajectory.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let CommandCode = require('./CommandCode.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let MountControl = require('./MountControl.js');
let Tunnel = require('./Tunnel.js');
let FileEntry = require('./FileEntry.js');
let Altitude = require('./Altitude.js');
let GPSINPUT = require('./GPSINPUT.js');
let BatteryStatus = require('./BatteryStatus.js');
let Mavlink = require('./Mavlink.js');
let Waypoint = require('./Waypoint.js');
let RCOut = require('./RCOut.js');
let GPSRTK = require('./GPSRTK.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let RadioStatus = require('./RadioStatus.js');
let ESCStatus = require('./ESCStatus.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let PositionTarget = require('./PositionTarget.js');
let RTKBaseline = require('./RTKBaseline.js');
let ParamValue = require('./ParamValue.js');
let Thrust = require('./Thrust.js');
let WaypointReached = require('./WaypointReached.js');
let ActuatorControl = require('./ActuatorControl.js');
let Param = require('./Param.js');
let LogData = require('./LogData.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let DebugValue = require('./DebugValue.js');
let HomePosition = require('./HomePosition.js');
let WaypointList = require('./WaypointList.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let RTCM = require('./RTCM.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let GPSRAW = require('./GPSRAW.js');
let VehicleInfo = require('./VehicleInfo.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let HilSensor = require('./HilSensor.js');
let HilGPS = require('./HilGPS.js');
let VFR_HUD = require('./VFR_HUD.js');
let LandingTarget = require('./LandingTarget.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let LogEntry = require('./LogEntry.js');
let ExtendedState = require('./ExtendedState.js');
let HilControls = require('./HilControls.js');
let RCIn = require('./RCIn.js');
let Vibration = require('./Vibration.js');

module.exports = {
  TimesyncStatus: TimesyncStatus,
  HilActuatorControls: HilActuatorControls,
  State: State,
  StatusText: StatusText,
  ESCInfoItem: ESCInfoItem,
  RotorControl: RotorControl,
  EstimatorStatus: EstimatorStatus,
  ESCInfo: ESCInfo,
  ManualControl: ManualControl,
  CompanionProcessStatus: CompanionProcessStatus,
  GlobalPositionTarget: GlobalPositionTarget,
  Trajectory: Trajectory,
  PlayTuneV2: PlayTuneV2,
  MagnetometerReporter: MagnetometerReporter,
  CommandCode: CommandCode,
  OverrideRCIn: OverrideRCIn,
  MountControl: MountControl,
  Tunnel: Tunnel,
  FileEntry: FileEntry,
  Altitude: Altitude,
  GPSINPUT: GPSINPUT,
  BatteryStatus: BatteryStatus,
  Mavlink: Mavlink,
  Waypoint: Waypoint,
  RCOut: RCOut,
  GPSRTK: GPSRTK,
  WheelOdomStamped: WheelOdomStamped,
  RadioStatus: RadioStatus,
  ESCStatus: ESCStatus,
  ESCTelemetry: ESCTelemetry,
  ADSBVehicle: ADSBVehicle,
  PositionTarget: PositionTarget,
  RTKBaseline: RTKBaseline,
  ParamValue: ParamValue,
  Thrust: Thrust,
  WaypointReached: WaypointReached,
  ActuatorControl: ActuatorControl,
  Param: Param,
  LogData: LogData,
  OpticalFlowRad: OpticalFlowRad,
  DebugValue: DebugValue,
  HomePosition: HomePosition,
  WaypointList: WaypointList,
  NavControllerOutput: NavControllerOutput,
  AttitudeTarget: AttitudeTarget,
  CamIMUStamp: CamIMUStamp,
  RTCM: RTCM,
  ESCStatusItem: ESCStatusItem,
  GPSRAW: GPSRAW,
  VehicleInfo: VehicleInfo,
  ESCTelemetryItem: ESCTelemetryItem,
  HilStateQuaternion: HilStateQuaternion,
  OnboardComputerStatus: OnboardComputerStatus,
  HilSensor: HilSensor,
  HilGPS: HilGPS,
  VFR_HUD: VFR_HUD,
  LandingTarget: LandingTarget,
  CameraImageCaptured: CameraImageCaptured,
  LogEntry: LogEntry,
  ExtendedState: ExtendedState,
  HilControls: HilControls,
  RCIn: RCIn,
  Vibration: Vibration,
};
