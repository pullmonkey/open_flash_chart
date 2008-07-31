class XAxis < OpenFlashChart
  def set_3d(v)
    @threed = v
  end

  # for some reason the json that needs to be produced is like this:
  # "x_axis": { "offset": false, "labels": { "labels": [ "Jan", "Feb", "Mar", "-  # note the "labels":{"labels": ....}
  def set_labels(labels)
    @labels = {:labels => labels}
  end

  def labels=(labels)
    @labels = {:labels => labels}
  end
end
