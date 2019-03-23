// Auto-generated. Do not edit!

// (in-package ros_qr_tracker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Percept {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.type = null;
      this.quality = null;
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.width = null;
      this.height = null;
      this.distance = null;
      this.deflection_angle = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('deflection_angle')) {
        this.deflection_angle = initObj.deflection_angle
      }
      else {
        this.deflection_angle = 0.0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Percept
    // Serialize message field [frame]
    bufferOffset = _serializer.string(obj.frame, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.uint8(obj.quality, buffer, bufferOffset);
    // Check that the constant length array field [a] has the right length
    if (obj.a.length !== 2) {
      throw new Error('Unable to serialize array field a - length must be 2')
    }
    // Serialize message field [a]
    bufferOffset = _arraySerializer.int32(obj.a, buffer, bufferOffset, 2);
    // Check that the constant length array field [b] has the right length
    if (obj.b.length !== 2) {
      throw new Error('Unable to serialize array field b - length must be 2')
    }
    // Serialize message field [b]
    bufferOffset = _arraySerializer.int32(obj.b, buffer, bufferOffset, 2);
    // Check that the constant length array field [c] has the right length
    if (obj.c.length !== 2) {
      throw new Error('Unable to serialize array field c - length must be 2')
    }
    // Serialize message field [c]
    bufferOffset = _arraySerializer.int32(obj.c, buffer, bufferOffset, 2);
    // Check that the constant length array field [d] has the right length
    if (obj.d.length !== 2) {
      throw new Error('Unable to serialize array field d - length must be 2')
    }
    // Serialize message field [d]
    bufferOffset = _arraySerializer.int32(obj.d, buffer, bufferOffset, 2);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [deflection_angle]
    bufferOffset = _serializer.float32(obj.deflection_angle, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Percept
    let len;
    let data = new Percept(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    // Deserialize message field [b]
    data.b = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    // Deserialize message field [c]
    data.c = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    // Deserialize message field [d]
    data.d = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [deflection_angle]
    data.deflection_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame.length;
    length += object.type.length;
    length += object.data.length;
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_qr_tracker/Percept';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa84c85dfcfcdf5ccbb58bb1c1c5e57b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string frame
    string type
    uint8 quality
    int32[2] a
    int32[2] b
    int32[2] c
    int32[2] d
    uint32   width
    uint32   height
    float32  distance
    float32  deflection_angle
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Percept(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = new Array(2).fill(0)
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = new Array(2).fill(0)
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = new Array(2).fill(0)
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = new Array(2).fill(0)
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.deflection_angle !== undefined) {
      resolved.deflection_angle = msg.deflection_angle;
    }
    else {
      resolved.deflection_angle = 0.0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = Percept;
