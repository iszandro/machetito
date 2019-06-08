class RedisRepository
  def initialize(name)
    @name = "#{name}_plan"
  end

  def delete_plan
    redis.del(@name)
  end

  def fetch_plan
    JSON.parse(redis.get(@name) || {}.to_json, symbolize_names: true)
  end

  def save_plan(attrs = {})
    redis.set(@name, fetch_plan.merge(attrs).to_json)
  end

  private

  def redis
    $redis
  end
end
