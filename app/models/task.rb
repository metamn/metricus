class Task < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :text
    status      :string
    timestamps
  end
  
  belongs_to :campaign
  
  has_many :task_assignments, :dependent => :destroy
  has_many :users, :through => :task_assignments
  
  has_many :documents, :dependent => :destroy, :accessible => :true

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
