class Title < ActiveRecord::Base
  attr_accessible :title,:contributions_attributes,:authors_attributes,:editions_attributes,:description,:introduction, :title_list_memberships_attributes

  searchable do
    text :title,:introduction,:description
    text :authors do
      authors.map { |a| a.full_name }
    end  
  end

  has_many :contributions
  has_many :authors, :through => :contributions
  has_many :editions 
  has_many :copies, :through => :editions
  has_many :purchase_order_line_items, :through => :editions
  has_many :title_lists,:through => :title_list_memberships
  has_many :title_list_memberships
  has_many :post_title_links
  has_many :posts, :through => :post_title_links 
  has_many :title_category_memberships
  has_many :categories,:through => :title_category_memberships
 
  accepts_nested_attributes_for :contributions, :allow_destroy => true
  accepts_nested_attributes_for :editions, :allow_destroy => true
  accepts_nested_attributes_for :title_list_memberships, :allow_destroy => true    

  def to_s
    title
  end

  def title_and_id
    "#{title} (#{id})"
  end

  def latest_edition
    editions.newest_first.first
  end

  def latest_edition?
    latest_edition
  end

  def latest_published_edition
    editions.published.newest_first.first || latest_edition
  end

  def my_authors
  end
  
end
