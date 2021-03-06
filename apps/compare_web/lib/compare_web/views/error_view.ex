defmodule CompareWeb.ErrorView do
  use CompareWeb, :view

  def render("400.json", %{user: user, message: message}) do
    %{errors: %{user: user, message: message}}
  end

  def render("400.json", %{message: message}) do
    %{errors: %{message: message}}
  end

  # If you want to customize a particular status code
  # for a certain format, you may uncomment below.
  # def render("500.json", _assigns) do
  #   %{errors: %{detail: "Internal Server Error"}}
  # end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.json" becomes
  # "Not Found".
  def template_not_found(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end
