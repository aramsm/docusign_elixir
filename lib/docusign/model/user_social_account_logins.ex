# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.UserSocialAccountLogins do
  @moduledoc """
  Users&#39; social account logins
  """

  @derive [Poison.Encoder]
  defstruct [
    :email,
    :errorDetails,
    :provider,
    :socialId,
    :userName
  ]

  @type t :: %__MODULE__{
          :email => String.t(),
          :errorDetails => ErrorDetails,
          :provider => String.t(),
          :socialId => String.t(),
          :userName => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserSocialAccountLogins do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
