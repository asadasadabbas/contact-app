class Contact < ApplicationRecord
	validates :email, uniqueness: true
	belongs_to :user

  before_create :initial_values

  def self.import_data(file, from_seed=false)
  	vcard = VCardigan.parse(file)
	p vcard.n.first.values # ['strummer', 'joe', '', '', '']
	p vcard.photo.first.params # { 'type' => 'uri' }
	p vcard.email.first.params # { 'type' => ['work', 'internet'], 'preferred' => '1' }
	p vcard[:item1].url.first.value # http://strummer.com
  end

  def self.export_data(contacts)
  	vcard = VCardigan.create
	vcard.name contacts.first_name
	puts vcard
  end

  private
    def initial_values
    	self.uuid = SecureRandom.uuid
    end
end