# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # The List operation response, that contains the Cassandra keyspaces and
    # their properties.
    #
    class CassandraKeyspaceListResult

      include MsRestAzure

      # @return [Array<CassandraKeyspaceGetResults>] List of Cassandra
      # keyspaces and their properties.
      attr_accessor :value


      #
      # Mapper for CassandraKeyspaceListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CassandraKeyspaceListResult',
          type: {
            name: 'Composite',
            class_name: 'CassandraKeyspaceListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CassandraKeyspaceGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CassandraKeyspaceGetResults'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
