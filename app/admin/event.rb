ActiveAdmin.register Event do
  permit_params :date, :title, :description
  actions :all
end
