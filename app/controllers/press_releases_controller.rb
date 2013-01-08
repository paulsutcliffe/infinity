class PressReleasesController < InheritedResources::Base
belongs_to :post, :finder => :find_by_slug!


end
