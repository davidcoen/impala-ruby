#
# Autogenerated by Thrift Compiler (0.8.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


module Impala
  module Protocol
    module TPrimitiveType
      INVALID_TYPE = 0
      BOOLEAN = 1
      TINYINT = 2
      SMALLINT = 3
      INT = 4
      BIGINT = 5
      FLOAT = 6
      DOUBLE = 7
      DATE = 8
      DATETIME = 9
      TIMESTAMP = 10
      STRING = 11
      VALUE_MAP = { 0 => "INVALID_TYPE", 1 => "BOOLEAN", 2 => "TINYINT", 3 => "SMALLINT", 4 => "INT", 5 => "BIGINT", 6 => "FLOAT", 7 => "DOUBLE", 8 => "DATE", 9 => "DATETIME", 10 => "TIMESTAMP", 11 => "STRING" }
      VALID_VALUES = Set.new([INVALID_TYPE, BOOLEAN, TINYINT, SMALLINT, INT, BIGINT, FLOAT, DOUBLE, DATE, DATETIME, TIMESTAMP, STRING]).freeze
    end

    module TStmtType
      QUERY = 0
      DDL = 1
      DML = 2
      VALUE_MAP = { 0 => "QUERY", 1 => "DDL", 2 => "DML" }
      VALID_VALUES = Set.new([QUERY, DDL, DML]).freeze
    end

    module TExplainLevel
      NORMAL = 0
      VERBOSE = 1
      VALUE_MAP = { 0 => "NORMAL", 1 => "VERBOSE" }
      VALID_VALUES = Set.new([NORMAL, VERBOSE]).freeze
    end

    class THostPort
      include ::Thrift::Struct, ::Thrift::Struct_Union
      HOSTNAME = 1
      IPADDRESS = 2
      PORT = 3

      FIELDS = {
      HOSTNAME => { :type => ::Thrift::Types::STRING, :name => 'hostname' },
      IPADDRESS => { :type => ::Thrift::Types::STRING, :name => 'ipaddress' },
      PORT => { :type => ::Thrift::Types::I32, :name => 'port' }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field hostname is unset!') unless @hostname
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field ipaddress is unset!') unless @ipaddress
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field port is unset!') unless @port
      end

      ::Thrift::Struct.generate_accessors self
    end

    class TUniqueId
      include ::Thrift::Struct, ::Thrift::Struct_Union
      HI = 1
      LO = 2

      FIELDS = {
      HI => { :type => ::Thrift::Types::I64, :name => 'hi' },
      LO => { :type => ::Thrift::Types::I64, :name => 'lo' }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field hi is unset!') unless @hi
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field lo is unset!') unless @lo
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
