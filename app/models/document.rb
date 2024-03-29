class Document < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title       :string
    url         :string
    description :text
    timestamps
  end

  belongs_to :project
  belongs_to :campaign
  belongs_to :task

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
