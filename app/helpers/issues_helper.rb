module IssuesHelper
  def issue_view_button(issue)
    link_to "Visualizar", issue_path(issue), class: "btn btn-outline-primary flex-fill py-2 fw-medium rounded-pill"
  end
end