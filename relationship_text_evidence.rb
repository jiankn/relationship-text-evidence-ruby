# RelationshipTextEvidence contains descriptive helpers for communication metrics.
#
# Reply-time metrics describe timing only. See the practical companion:
# https://whathethinks.com/reply-time-calculator
module RelationshipTextEvidence
  # Returns the median of numeric values, or nil for an empty input.
  def self.median(values)
    xs = values.compact.sort
    return nil if xs.empty?
    m = xs.length / 2
    xs.length.odd? ? xs[m].to_f : (xs[m - 1] + xs[m]).to_f / 2
  end
end
