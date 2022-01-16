class Student < ApplicationRecord
    before_create :name
    before_update :name
    has_one :student_mark

    mount_uploader :avatar, AvatarUploader

    def name
        self.name = self.first_name + " " + self.last_name
    end
end
