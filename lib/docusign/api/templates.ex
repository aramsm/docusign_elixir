# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Templates do
  @moduledoc """
  API calls for all endpoints tagged `Templates`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets template notification information.
  Retrieves the envelope notification, reminders and expirations, information for an existing template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec notification_get_templates_template_id_notification(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.Notification.t} | {:error, Tesla.Env.t}
  def notification_get_templates_template_id_notification(connection, account_id, template_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/notification")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Notification{})
  end

  @doc """
  Updates the notification  structure for an existing template.
  Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :template_notification_request (TemplateNotificationRequest): 

  ## Returns

  {:ok, %DocuSign.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec notification_put_templates_template_id_notification(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.Notification.t} | {:error, Tesla.Env.t}
  def notification_put_templates_template_id_notification(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      templateNotificationRequest: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/notification")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Notification{})
  end

  @doc """
  Deletes a page from a document in an template.
  Deletes a page from a document in a template based on the page number.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - page_number (String.t): The page number being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :page_request (PageRequest): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec pages_delete_template_page(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def pages_delete_template_page(connection, account_id, document_id, page_number, template_id, opts \\ []) do
    optional_params = %{
      pageRequest: :body
    }
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/pages/#{page_number}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a page image from a template for display.
  Retrieves a page image for display from the specified template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - page_number (String.t): The page number being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :dpi (String.t): Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310.
    - :max_height (String.t): Sets the maximum height (in pixels) of the returned image.
    - :max_width (String.t): Sets the maximum width (in pixels) of the returned image.
    - :show_changes (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec pages_get_template_page_image(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def pages_get_template_page_image(connection, account_id, document_id, page_number, template_id, opts \\ []) do
    optional_params = %{
      dpi: :query,
      max_height: :query,
      max_width: :query,
      show_changes: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/pages/#{page_number}/page_image")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns document page image(s) based on input.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): The maximum number of results to be returned by this request.
    - :dpi (String.t): Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310.
    - :max_height (String.t): Sets the maximum height (in pixels) of the returned image.
    - :max_width (String.t): Sets the maximum width (in pixels) of the returned image.
    - :nocache (String.t): 
    - :show_changes (String.t): 
    - :start_position (String.t): The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.

  ## Returns

  {:ok, %DocuSign.Model.PageImages{}} on success
  {:error, info} on failure
  """
  @spec pages_get_template_page_images(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.PageImages.t} | {:error, Tesla.Env.t}
  def pages_get_template_page_images(connection, account_id, document_id, template_id, opts \\ []) do
    optional_params = %{
      count: :query,
      dpi: :query,
      max_height: :query,
      max_width: :query,
      nocache: :query,
      show_changes: :query,
      start_position: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/pages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.PageImages{})
  end

  @doc """
  Rotates page image from a template for display.
  Rotates page image from a template for display. The page image can be rotated to the left or right.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - page_number (String.t): The page number being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :page_request (PageRequest): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec pages_put_template_page_image(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def pages_put_template_page_image(connection, account_id, document_id, page_number, template_id, opts \\ []) do
    optional_params = %{
      pageRequest: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/pages/#{page_number}/page_image")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Removes a member group&#39;s sharing permissions for a template.
  Removes a member group&#39;s sharing permissions for a specified template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - template_part (String.t): Currently, the only defined part is **groups**.
  - opts (KeywordList): [optional] Optional parameters
    - :groups (Groups): 

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec templates_delete_template_part(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.Groups.t} | {:error, Tesla.Env.t}
  def templates_delete_template_part(connection, account_id, template_id, template_part, opts \\ []) do
    optional_params = %{
      Groups: :body
    }
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/#{template_part}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end

  @doc """
  Gets a list of templates for a specified account.
  Retrieves the definition of the specified template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.

  ## Returns

  {:ok, %DocuSign.Model.Templates{}} on success
  {:error, info} on failure
  """
  @spec templates_get_template(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.Templates.t} | {:error, Tesla.Env.t}
  def templates_get_template(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      include: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Templates{})
  end

  @doc """
  Gets the definition of a template.
  Retrieves the list of templates for the specified account. The request can be limited to a specific folder.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): Number of records to return in the cache.
    - :folder (String.t): The query value can be a folder name or folder ID. The response will only return templates in the specified folder.
    - :folder_ids (String.t): A comma separated list of folder ID GUIDs.
    - :from_date (String.t): Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created.
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are:  * custom_fields * documents * folders * notifications * recipients 
    - :modified_from_date (String.t): 
    - :modified_to_date (String.t): 
    - :order (String.t): Sets the direction order used to sort the list. Valid values are: -asc &#x3D; ascending sort order (a to z)  -desc &#x3D; descending sort order (z to a)
    - :order_by (String.t): Sets the file attribute used to sort the list. Valid values are:  -name: template name  -modified: date/time template was last modified.  -used: date/time the template was last used.
    - :search_text (String.t): The search text used to search the names of templates.
    - :shared_by_me (String.t): If true, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected.
    - :start_position (String.t): The starting index for the first template shown in the response. This must be greater than or equal to 0 (zero).
    - :to_date (String.t): End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date.
    - :used_from_date (String.t): Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used.
    - :used_to_date (String.t): End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date.
    - :user_filter (String.t): Sets if the templates shown in the response Valid values are:  -owned_by_me: only shows templates the user owns.  -shared_with_me: only shows templates that are shared with the user.  -all: shows all templates owned or shared with the user.
    - :user_id (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTemplateResults{}} on success
  {:error, info} on failure
  """
  @spec templates_get_templates(Tesla.Env.client, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeTemplateResults.t} | {:error, Tesla.Env.t}
  def templates_get_templates(connection, account_id, opts \\ []) do
    optional_params = %{
      count: :query,
      folder: :query,
      folder_ids: :query,
      from_date: :query,
      include: :query,
      modified_from_date: :query,
      modified_to_date: :query,
      order: :query,
      order_by: :query,
      search_text: :query,
      shared_by_me: :query,
      start_position: :query,
      to_date: :query,
      used_from_date: :query,
      used_to_date: :query,
      user_filter: :query,
      user_id: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTemplateResults{})
  end

  @doc """
  Creates a template.
  Creates a template definition using a multipart request.  ### Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient&#39;s role name, are added to the &#x60;emailSubject&#x60; property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.   ###### If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient&#39;s name in the subject line add the following text in the &#x60;emailSubject&#x60; property when creating the template or when sending an envelope from a template:  &#x60;[[&lt;roleName&gt;_UserName]]&#x60;  Example:  &#x60;\&quot;emailSubject\&quot;:\&quot;[[Signer 1_UserName]], Please sign this NDA\&quot;,&#x60;  To add a recipient&#39;s email address in the subject line add the following text in the &#x60;emailSubject&#x60; property when creating the template or when sending an envelope from a template:  &#x60;[[&lt;roleName&gt;_Email]]&#x60;  Example:  &#x60;\&quot;emailSubject\&quot;:\&quot;[[Signer 1_Email]], Please sign this NDA\&quot;,&#x60;   In both cases the &lt;roleName&gt; is the recipient&#39;s contents of the &#x60;roleName&#x60; property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then &#x60;[[&lt;roleName&gt;_UserName]]&#x60; or &#x60;[[&lt;roleName&gt;_Email]]&#x60; is shown in the email subject.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :templates (Templates): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateSummary{}} on success
  {:error, info} on failure
  """
  @spec templates_post_templates(Tesla.Env.client, String.t, keyword()) :: {:ok, DocuSign.Model.TemplateSummary.t} | {:error, Tesla.Env.t}
  def templates_post_templates(connection, account_id, opts \\ []) do
    optional_params = %{
      Templates: :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateSummary{})
  end

  @doc """
  Updates an existing template.
  Updates an existing template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :templates (Templates): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateUpdateSummary{}} on success
  {:error, info} on failure
  """
  @spec templates_put_template(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.TemplateUpdateSummary.t} | {:error, Tesla.Env.t}
  def templates_put_template(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      Templates: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateUpdateSummary{})
  end

  @doc """
  Shares a template with a group
  Shares a template with the specified members group.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - template_part (String.t): Currently, the only defined part is **groups**.
  - opts (KeywordList): [optional] Optional parameters
    - :groups (Groups): 

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec templates_put_template_part(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.Groups.t} | {:error, Tesla.Env.t}
  def templates_put_template_part(connection, account_id, template_id, template_part, opts \\ []) do
    optional_params = %{
      Groups: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/#{template_part}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end
end
