# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountSharedAccess do
  @moduledoc """
  Contains shared access information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accountId,
    :endPosition,
    :errorDetails,
    :nextUri,
    :previousUri,
    :resultSetSize,
    :sharedAccess,
    :startPosition,
    :totalSetSize
  ]

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :endPosition => String.t(),
          :errorDetails => ErrorDetails,
          :nextUri => String.t(),
          :previousUri => String.t(),
          :resultSetSize => String.t(),
          :sharedAccess => [MemberSharedItems],
          :startPosition => String.t(),
          :totalSetSize => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountSharedAccess do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:sharedAccess, :list, DocuSign.Model.MemberSharedItems, options)
  end
end
