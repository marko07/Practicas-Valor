class AdminController < ApplicationController
  
  layout 'application'
  before_filter :is_user_authenticate
  
  
  def index
    @value_practices_list = ValuePractice.find_all_by_user_id(current_user.id)
  end
  
  def select_an_pv
    params[:id]
  end
  
  def recognition
  end
  
  def benchmarking_externo
  end
  
  def edit
    @pv = ValuePractice.find(params[:id])
  end
  
end
