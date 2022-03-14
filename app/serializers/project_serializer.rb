class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
end