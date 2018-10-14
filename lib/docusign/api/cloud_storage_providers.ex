# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.CloudStorageProviders do
  @moduledoc """
  API calls for all endpoints tagged `CloudStorageProviders`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes the user authentication information for the specified cloud storage provider.
  Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - service_id (String.t): The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.CloudStorageProviders{}} on success
  {:error, info} on failure
  """
  @spec cloud_storage_delete_cloud_storage(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CloudStorageProviders.t()} | {:error, Tesla.Env.t()}
  def cloud_storage_delete_cloud_storage(connection, account_id, service_id, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/cloud_storage/#{service_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CloudStorageProviders{})
  end

  @doc """
  Deletes the user authentication information for one or more cloud storage providers.
  Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :cloud_storage_providers (CloudStorageProviders): 

  ## Returns

  {:ok, %DocuSign.Model.CloudStorageProviders{}} on success
  {:error, info} on failure
  """
  @spec cloud_storage_delete_cloud_storage_providers(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CloudStorageProviders.t()} | {:error, Tesla.Env.t()}
  def cloud_storage_delete_cloud_storage_providers(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      CloudStorageProviders: :body
    }

    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/cloud_storage")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CloudStorageProviders{})
  end

  @doc """
  Gets the specified Cloud Storage Provider configuration for the User.
  Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - service_id (String.t): The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :redirect_url (String.t):  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  

  ## Returns

  {:ok, %DocuSign.Model.CloudStorageProviders{}} on success
  {:error, info} on failure
  """
  @spec cloud_storage_get_cloud_storage(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CloudStorageProviders.t()} | {:error, Tesla.Env.t()}
  def cloud_storage_get_cloud_storage(connection, account_id, service_id, user_id, opts \\ []) do
    optional_params = %{
      redirectUrl: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/cloud_storage/#{service_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CloudStorageProviders{})
  end

  @doc """
  Get the Cloud Storage Provider configuration for the specified user.
  Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :redirect_url (String.t):  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  

  ## Returns

  {:ok, %DocuSign.Model.CloudStorageProviders{}} on success
  {:error, info} on failure
  """
  @spec cloud_storage_get_cloud_storage_providers(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CloudStorageProviders.t()} | {:error, Tesla.Env.t()}
  def cloud_storage_get_cloud_storage_providers(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      redirectUrl: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/cloud_storage")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CloudStorageProviders{})
  end

  @doc """
  Configures the redirect URL information  for one or more cloud storage providers for the specified user.
  Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :cloud_storage_providers (CloudStorageProviders): 

  ## Returns

  {:ok, %DocuSign.Model.CloudStorageProviders{}} on success
  {:error, info} on failure
  """
  @spec cloud_storage_post_cloud_storage(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.CloudStorageProviders.t()} | {:error, Tesla.Env.t()}
  def cloud_storage_post_cloud_storage(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      CloudStorageProviders: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/cloud_storage")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CloudStorageProviders{})
  end
end
