# encoding: UTF-8

# TODO 支持自定义字段

require 'active_support/concern'

module ActsAsTimeRacing
  extend ActiveSupport::Concern

  included do
    # scope
    # TODO 判断column存在
  end

  module ClassMethods
  end

  # 是否开始　和　结束
  def started?; !!started_at end
  def finished?; !!finished_at end

  # 开始和结束
  def start; self.update_attributes :started_at => DateTime.now; end
  def finish; self.update_attributes :finished_at => DateTime.now; end

  # 花费的时间
  def time_passed
    return 0 if not started?
    ((self.finished_at || Time.now) - self.started_at).to_i
  end

end
