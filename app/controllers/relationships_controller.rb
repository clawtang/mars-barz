class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    # This needs to be updated to show only current user relationships
    # @relationships = current_user.relationships
  end

  def create
    @relationship = current_user.relationships.build(relationship_params)
    if @relationship.save
      # save the relationship
    end
  end
end
