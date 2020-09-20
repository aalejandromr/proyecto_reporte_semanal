class DigestReporteSemanal
  include ActiveModel::Model

  attr_accessor :desde, :hasta, :obversaciones

  # attribute :hasta, :datetime, default: -> {Time.now}
  # attribute :desde, :datetime

end
