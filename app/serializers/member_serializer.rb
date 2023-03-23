class MemberSerializer < ActiveModel::Serializer
    attributes :id, :charge
    has_one :gym
    has_one :client
  end