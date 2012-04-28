class Campaign < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :text
    status      :string
    timestamps
  end
  
  belongs_to :project
  
  has_many :tasks, :dependent => :destroy, :accessible => true
  has_many :documents, :dependent => :destroy, :accessible => :true
  
  children :tasks, :documents
  

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
