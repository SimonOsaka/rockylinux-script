/* Generated by the protocol buffer compiler.  DO NOT EDIT! */
/* Generated from: pg_logicaldec.proto */

/* Do not generate deprecated warnings for self */
#ifndef PROTOBUF_C__NO_DEPRECATED
#define PROTOBUF_C__NO_DEPRECATED
#endif

#include "pg_logicaldec.pb-c.h"
void   decoderbufs__point__init
                     (Decoderbufs__Point         *message)
{
  static Decoderbufs__Point init_value = DECODERBUFS__POINT__INIT;
  *message = init_value;
}
size_t decoderbufs__point__get_packed_size
                     (const Decoderbufs__Point *message)
{
  assert(message->base.descriptor == &decoderbufs__point__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
size_t decoderbufs__point__pack
                     (const Decoderbufs__Point *message,
                      uint8_t       *out)
{
  assert(message->base.descriptor == &decoderbufs__point__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
size_t decoderbufs__point__pack_to_buffer
                     (const Decoderbufs__Point *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &decoderbufs__point__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
Decoderbufs__Point *
       decoderbufs__point__unpack
                     (ProtobufCAllocator  *allocator,
                      size_t               len,
                      const uint8_t       *data)
{
  return (Decoderbufs__Point *)
     protobuf_c_message_unpack (&decoderbufs__point__descriptor,
                                allocator, len, data);
}
void   decoderbufs__point__free_unpacked
                     (Decoderbufs__Point *message,
                      ProtobufCAllocator *allocator)
{
  assert(message->base.descriptor == &decoderbufs__point__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
void   decoderbufs__datum_message__init
                     (Decoderbufs__DatumMessage         *message)
{
  static Decoderbufs__DatumMessage init_value = DECODERBUFS__DATUM_MESSAGE__INIT;
  *message = init_value;
}
size_t decoderbufs__datum_message__get_packed_size
                     (const Decoderbufs__DatumMessage *message)
{
  assert(message->base.descriptor == &decoderbufs__datum_message__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
size_t decoderbufs__datum_message__pack
                     (const Decoderbufs__DatumMessage *message,
                      uint8_t       *out)
{
  assert(message->base.descriptor == &decoderbufs__datum_message__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
size_t decoderbufs__datum_message__pack_to_buffer
                     (const Decoderbufs__DatumMessage *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &decoderbufs__datum_message__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
Decoderbufs__DatumMessage *
       decoderbufs__datum_message__unpack
                     (ProtobufCAllocator  *allocator,
                      size_t               len,
                      const uint8_t       *data)
{
  return (Decoderbufs__DatumMessage *)
     protobuf_c_message_unpack (&decoderbufs__datum_message__descriptor,
                                allocator, len, data);
}
void   decoderbufs__datum_message__free_unpacked
                     (Decoderbufs__DatumMessage *message,
                      ProtobufCAllocator *allocator)
{
  assert(message->base.descriptor == &decoderbufs__datum_message__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
void   decoderbufs__type_info__init
                     (Decoderbufs__TypeInfo         *message)
{
  static Decoderbufs__TypeInfo init_value = DECODERBUFS__TYPE_INFO__INIT;
  *message = init_value;
}
size_t decoderbufs__type_info__get_packed_size
                     (const Decoderbufs__TypeInfo *message)
{
  assert(message->base.descriptor == &decoderbufs__type_info__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
size_t decoderbufs__type_info__pack
                     (const Decoderbufs__TypeInfo *message,
                      uint8_t       *out)
{
  assert(message->base.descriptor == &decoderbufs__type_info__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
size_t decoderbufs__type_info__pack_to_buffer
                     (const Decoderbufs__TypeInfo *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &decoderbufs__type_info__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
Decoderbufs__TypeInfo *
       decoderbufs__type_info__unpack
                     (ProtobufCAllocator  *allocator,
                      size_t               len,
                      const uint8_t       *data)
{
  return (Decoderbufs__TypeInfo *)
     protobuf_c_message_unpack (&decoderbufs__type_info__descriptor,
                                allocator, len, data);
}
void   decoderbufs__type_info__free_unpacked
                     (Decoderbufs__TypeInfo *message,
                      ProtobufCAllocator *allocator)
{
  assert(message->base.descriptor == &decoderbufs__type_info__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
void   decoderbufs__row_message__init
                     (Decoderbufs__RowMessage         *message)
{
  static Decoderbufs__RowMessage init_value = DECODERBUFS__ROW_MESSAGE__INIT;
  *message = init_value;
}
size_t decoderbufs__row_message__get_packed_size
                     (const Decoderbufs__RowMessage *message)
{
  assert(message->base.descriptor == &decoderbufs__row_message__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
size_t decoderbufs__row_message__pack
                     (const Decoderbufs__RowMessage *message,
                      uint8_t       *out)
{
  assert(message->base.descriptor == &decoderbufs__row_message__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
size_t decoderbufs__row_message__pack_to_buffer
                     (const Decoderbufs__RowMessage *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &decoderbufs__row_message__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
Decoderbufs__RowMessage *
       decoderbufs__row_message__unpack
                     (ProtobufCAllocator  *allocator,
                      size_t               len,
                      const uint8_t       *data)
{
  return (Decoderbufs__RowMessage *)
     protobuf_c_message_unpack (&decoderbufs__row_message__descriptor,
                                allocator, len, data);
}
void   decoderbufs__row_message__free_unpacked
                     (Decoderbufs__RowMessage *message,
                      ProtobufCAllocator *allocator)
{
  assert(message->base.descriptor == &decoderbufs__row_message__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
static const ProtobufCFieldDescriptor decoderbufs__point__field_descriptors[2] =
{
  {
    "x",
    1,
    PROTOBUF_C_LABEL_REQUIRED,
    PROTOBUF_C_TYPE_DOUBLE,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__Point, x),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "y",
    2,
    PROTOBUF_C_LABEL_REQUIRED,
    PROTOBUF_C_TYPE_DOUBLE,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__Point, y),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
};
static const unsigned decoderbufs__point__field_indices_by_name[] = {
  0,   /* field[0] = x */
  1,   /* field[1] = y */
};
static const ProtobufCIntRange decoderbufs__point__number_ranges[1 + 1] =
{
  { 1, 0 },
  { 0, 2 }
};
const ProtobufCMessageDescriptor decoderbufs__point__descriptor =
{
  PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC,
  "decoderbufs.Point",
  "Point",
  "Decoderbufs__Point",
  "decoderbufs",
  sizeof(Decoderbufs__Point),
  2,
  decoderbufs__point__field_descriptors,
  decoderbufs__point__field_indices_by_name,
  1,  decoderbufs__point__number_ranges,
  (ProtobufCMessageInit) decoderbufs__point__init,
  NULL,NULL,NULL    /* reserved[123] */
};
static const ProtobufCFieldDescriptor decoderbufs__datum_message__field_descriptors[11] =
{
  {
    "column_name",
    1,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_STRING,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__DatumMessage, column_name),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "column_type",
    2,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_INT64,
    offsetof(Decoderbufs__DatumMessage, has_column_type),
    offsetof(Decoderbufs__DatumMessage, column_type),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_int32",
    3,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_INT32,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_int32),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_int64",
    4,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_INT64,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_int64),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_float",
    5,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_FLOAT,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_float),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_double",
    6,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_DOUBLE,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_double),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_bool",
    7,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_BOOL,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_bool),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_string",
    8,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_STRING,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_string),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_bytes",
    9,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_BYTES,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_bytes),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_point",
    10,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_MESSAGE,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_point),
    &decoderbufs__point__descriptor,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "datum_missing",
    11,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_BOOL,
    offsetof(Decoderbufs__DatumMessage, datum_case),
    offsetof(Decoderbufs__DatumMessage, datum_missing),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
};
static const unsigned decoderbufs__datum_message__field_indices_by_name[] = {
  0,   /* field[0] = column_name */
  1,   /* field[1] = column_type */
  6,   /* field[6] = datum_bool */
  8,   /* field[8] = datum_bytes */
  5,   /* field[5] = datum_double */
  4,   /* field[4] = datum_float */
  2,   /* field[2] = datum_int32 */
  3,   /* field[3] = datum_int64 */
  10,   /* field[10] = datum_missing */
  9,   /* field[9] = datum_point */
  7,   /* field[7] = datum_string */
};
static const ProtobufCIntRange decoderbufs__datum_message__number_ranges[1 + 1] =
{
  { 1, 0 },
  { 0, 11 }
};
const ProtobufCMessageDescriptor decoderbufs__datum_message__descriptor =
{
  PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC,
  "decoderbufs.DatumMessage",
  "DatumMessage",
  "Decoderbufs__DatumMessage",
  "decoderbufs",
  sizeof(Decoderbufs__DatumMessage),
  11,
  decoderbufs__datum_message__field_descriptors,
  decoderbufs__datum_message__field_indices_by_name,
  1,  decoderbufs__datum_message__number_ranges,
  (ProtobufCMessageInit) decoderbufs__datum_message__init,
  NULL,NULL,NULL    /* reserved[123] */
};
static const ProtobufCFieldDescriptor decoderbufs__type_info__field_descriptors[2] =
{
  {
    "modifier",
    1,
    PROTOBUF_C_LABEL_REQUIRED,
    PROTOBUF_C_TYPE_STRING,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__TypeInfo, modifier),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "value_optional",
    2,
    PROTOBUF_C_LABEL_REQUIRED,
    PROTOBUF_C_TYPE_BOOL,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__TypeInfo, value_optional),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
};
static const unsigned decoderbufs__type_info__field_indices_by_name[] = {
  0,   /* field[0] = modifier */
  1,   /* field[1] = value_optional */
};
static const ProtobufCIntRange decoderbufs__type_info__number_ranges[1 + 1] =
{
  { 1, 0 },
  { 0, 2 }
};
const ProtobufCMessageDescriptor decoderbufs__type_info__descriptor =
{
  PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC,
  "decoderbufs.TypeInfo",
  "TypeInfo",
  "Decoderbufs__TypeInfo",
  "decoderbufs",
  sizeof(Decoderbufs__TypeInfo),
  2,
  decoderbufs__type_info__field_descriptors,
  decoderbufs__type_info__field_indices_by_name,
  1,  decoderbufs__type_info__number_ranges,
  (ProtobufCMessageInit) decoderbufs__type_info__init,
  NULL,NULL,NULL    /* reserved[123] */
};
static const ProtobufCFieldDescriptor decoderbufs__row_message__field_descriptors[7] =
{
  {
    "transaction_id",
    1,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_UINT32,
    offsetof(Decoderbufs__RowMessage, has_transaction_id),
    offsetof(Decoderbufs__RowMessage, transaction_id),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "commit_time",
    2,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_UINT64,
    offsetof(Decoderbufs__RowMessage, has_commit_time),
    offsetof(Decoderbufs__RowMessage, commit_time),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "table",
    3,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_STRING,
    0,   /* quantifier_offset */
    offsetof(Decoderbufs__RowMessage, table),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "op",
    4,
    PROTOBUF_C_LABEL_OPTIONAL,
    PROTOBUF_C_TYPE_ENUM,
    offsetof(Decoderbufs__RowMessage, has_op),
    offsetof(Decoderbufs__RowMessage, op),
    &decoderbufs__op__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "new_tuple",
    5,
    PROTOBUF_C_LABEL_REPEATED,
    PROTOBUF_C_TYPE_MESSAGE,
    offsetof(Decoderbufs__RowMessage, n_new_tuple),
    offsetof(Decoderbufs__RowMessage, new_tuple),
    &decoderbufs__datum_message__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "old_tuple",
    6,
    PROTOBUF_C_LABEL_REPEATED,
    PROTOBUF_C_TYPE_MESSAGE,
    offsetof(Decoderbufs__RowMessage, n_old_tuple),
    offsetof(Decoderbufs__RowMessage, old_tuple),
    &decoderbufs__datum_message__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "new_typeinfo",
    7,
    PROTOBUF_C_LABEL_REPEATED,
    PROTOBUF_C_TYPE_MESSAGE,
    offsetof(Decoderbufs__RowMessage, n_new_typeinfo),
    offsetof(Decoderbufs__RowMessage, new_typeinfo),
    &decoderbufs__type_info__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
};
static const unsigned decoderbufs__row_message__field_indices_by_name[] = {
  1,   /* field[1] = commit_time */
  4,   /* field[4] = new_tuple */
  6,   /* field[6] = new_typeinfo */
  5,   /* field[5] = old_tuple */
  3,   /* field[3] = op */
  2,   /* field[2] = table */
  0,   /* field[0] = transaction_id */
};
static const ProtobufCIntRange decoderbufs__row_message__number_ranges[1 + 1] =
{
  { 1, 0 },
  { 0, 7 }
};
const ProtobufCMessageDescriptor decoderbufs__row_message__descriptor =
{
  PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC,
  "decoderbufs.RowMessage",
  "RowMessage",
  "Decoderbufs__RowMessage",
  "decoderbufs",
  sizeof(Decoderbufs__RowMessage),
  7,
  decoderbufs__row_message__field_descriptors,
  decoderbufs__row_message__field_indices_by_name,
  1,  decoderbufs__row_message__number_ranges,
  (ProtobufCMessageInit) decoderbufs__row_message__init,
  NULL,NULL,NULL    /* reserved[123] */
};
static const ProtobufCEnumValue decoderbufs__op__enum_values_by_number[6] =
{
  { "UNKNOWN", "DECODERBUFS__OP__UNKNOWN", -1 },
  { "INSERT", "DECODERBUFS__OP__INSERT", 0 },
  { "UPDATE", "DECODERBUFS__OP__UPDATE", 1 },
  { "DELETE", "DECODERBUFS__OP__DELETE", 2 },
  { "BEGIN", "DECODERBUFS__OP__BEGIN", 3 },
  { "COMMIT", "DECODERBUFS__OP__COMMIT", 4 },
};
static const ProtobufCIntRange decoderbufs__op__value_ranges[] = {
{-1, 0},{0, 6}
};
static const ProtobufCEnumValueIndex decoderbufs__op__enum_values_by_name[6] =
{
  { "BEGIN", 4 },
  { "COMMIT", 5 },
  { "DELETE", 3 },
  { "INSERT", 1 },
  { "UNKNOWN", 0 },
  { "UPDATE", 2 },
};
const ProtobufCEnumDescriptor decoderbufs__op__descriptor =
{
  PROTOBUF_C__ENUM_DESCRIPTOR_MAGIC,
  "decoderbufs.Op",
  "Op",
  "Decoderbufs__Op",
  "decoderbufs",
  6,
  decoderbufs__op__enum_values_by_number,
  6,
  decoderbufs__op__enum_values_by_name,
  1,
  decoderbufs__op__value_ranges,
  NULL,NULL,NULL,NULL   /* reserved[1234] */
};