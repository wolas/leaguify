class TeamChannel < ApplicationCable::Channel
  def subscribed
    stream_for("league") { transmit(render(Team.ordered)) }
    transmit(render(Team.ordered))
  end

  private
  def render(teams)
    ApplicationController.render(partial: 'games/table', locals: { teams: teams })
  end
end