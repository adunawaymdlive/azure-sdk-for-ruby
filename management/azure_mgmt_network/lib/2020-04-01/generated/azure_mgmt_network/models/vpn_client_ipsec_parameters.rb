# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # An IPSec parameters for a virtual network gateway P2S connection.
    #
    class VpnClientIPsecParameters

      include MsRestAzure

      # @return [Integer] The IPSec Security Association (also called Quick
      # Mode or Phase 2 SA) lifetime in seconds for P2S client.
      attr_accessor :sa_life_time_seconds

      # @return [Integer] The IPSec Security Association (also called Quick
      # Mode or Phase 2 SA) payload size in KB for P2S client..
      attr_accessor :sa_data_size_kilobytes

      # @return [IpsecEncryption] The IPSec encryption algorithm (IKE phase 1).
      # Possible values include: 'None', 'DES', 'DES3', 'AES128', 'AES192',
      # 'AES256', 'GCMAES128', 'GCMAES192', 'GCMAES256'
      attr_accessor :ipsec_encryption

      # @return [IpsecIntegrity] The IPSec integrity algorithm (IKE phase 1).
      # Possible values include: 'MD5', 'SHA1', 'SHA256', 'GCMAES128',
      # 'GCMAES192', 'GCMAES256'
      attr_accessor :ipsec_integrity

      # @return [IkeEncryption] The IKE encryption algorithm (IKE phase 2).
      # Possible values include: 'DES', 'DES3', 'AES128', 'AES192', 'AES256',
      # 'GCMAES256', 'GCMAES128'
      attr_accessor :ike_encryption

      # @return [IkeIntegrity] The IKE integrity algorithm (IKE phase 2).
      # Possible values include: 'MD5', 'SHA1', 'SHA256', 'SHA384',
      # 'GCMAES256', 'GCMAES128'
      attr_accessor :ike_integrity

      # @return [DhGroup] The DH Group used in IKE Phase 1 for initial SA.
      # Possible values include: 'None', 'DHGroup1', 'DHGroup2', 'DHGroup14',
      # 'DHGroup2048', 'ECP256', 'ECP384', 'DHGroup24'
      attr_accessor :dh_group

      # @return [PfsGroup] The Pfs Group used in IKE Phase 2 for new child SA.
      # Possible values include: 'None', 'PFS1', 'PFS2', 'PFS2048', 'ECP256',
      # 'ECP384', 'PFS24', 'PFS14', 'PFSMM'
      attr_accessor :pfs_group


      #
      # Mapper for VpnClientIPsecParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnClientIPsecParameters',
          type: {
            name: 'Composite',
            class_name: 'VpnClientIPsecParameters',
            model_properties: {
              sa_life_time_seconds: {
                client_side_validation: true,
                required: true,
                serialized_name: 'saLifeTimeSeconds',
                type: {
                  name: 'Number'
                }
              },
              sa_data_size_kilobytes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'saDataSizeKilobytes',
                type: {
                  name: 'Number'
                }
              },
              ipsec_encryption: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ipsecEncryption',
                type: {
                  name: 'String'
                }
              },
              ipsec_integrity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ipsecIntegrity',
                type: {
                  name: 'String'
                }
              },
              ike_encryption: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ikeEncryption',
                type: {
                  name: 'String'
                }
              },
              ike_integrity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ikeIntegrity',
                type: {
                  name: 'String'
                }
              },
              dh_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dhGroup',
                type: {
                  name: 'String'
                }
              },
              pfs_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'pfsGroup',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
