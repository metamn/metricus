class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :text
    timestamps
  end
  
  has_many :campaigns, :dependent => :destroy, :accessible => true
  has_many :documents, :dependent => :destroy, :accessible => true
  
  children :campaigns, :documents
  
  
  
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
