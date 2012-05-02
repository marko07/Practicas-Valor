class AdminController < ApplicationController
  
  layout 'application'
  before_filter :is_user_authenticate
  
  
  def index
    @value_practices_list = ValuePractice.find_all_by_user_id(current_user.id)
  end
  
  def select_an_pv
    params[:id]
  end
  
  def caracterizacion
  end
  
  def benchmarking_externo
  end
  
end
