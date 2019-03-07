class TransformationService

  def initialize(transformer)
    @transformer = transformer
  end

  def transform(common_platform_json)
     @transformer.transform(common_platform_json)
  end
end
