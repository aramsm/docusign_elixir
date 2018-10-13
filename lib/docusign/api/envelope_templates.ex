# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeTemplates do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeTemplates`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes a template from a document in an existing envelope.
  Deletes the specified template from a document in an existing envelope.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec templates_delete_document_templates(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def templates_delete_document_templates(connection, account_id, document_id, envelope_id, template_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/templates/#{template_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the templates associated with a document in an existing envelope.
  Retrieves the templates associated with a document in the specified envelope.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list that limits the results. Valid values:  * applied * matched 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTemplates{}} on success
  {:error, info} on failure
  """
  @spec templates_get_document_templates(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeTemplates.t} | {:error, Tesla.Env.t}
  def templates_get_document_templates(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      include: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTemplates{})
  end

  @doc """
  Get List of Templates used in an Envelope
  This returns a list of the server-side templates, their name and ID, used in an envelope. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): The possible values are:  matching_applied - This returns template matching information for the template.

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTemplates{}} on success
  {:error, info} on failure
  """
  @spec templates_get_envelope_templates(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeTemplates.t} | {:error, Tesla.Env.t}
  def templates_get_envelope_templates(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      include: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTemplates{})
  end

  @doc """
  Adds templates to a document in an  envelope.
  Adds templates to a document in the specified envelope.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :document_template_list (DocumentTemplateList): 

  ## Returns

  {:ok, %DocuSign.Model.DocumentTemplateList{}} on success
  {:error, info} on failure
  """
  @spec templates_post_document_templates(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.DocumentTemplateList.t} | {:error, Tesla.Env.t}
  def templates_post_document_templates(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      documentTemplateList: :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DocumentTemplateList{})
  end

  @doc """
  Adds templates to an envelope.
  Adds templates to the specified envelope.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :document_template_list (DocumentTemplateList): 

  ## Returns

  {:ok, %DocuSign.Model.DocumentTemplateList{}} on success
  {:error, info} on failure
  """
  @spec templates_post_envelope_templates(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.DocumentTemplateList.t} | {:error, Tesla.Env.t}
  def templates_post_envelope_templates(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      documentTemplateList: :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DocumentTemplateList{})
  end
end
