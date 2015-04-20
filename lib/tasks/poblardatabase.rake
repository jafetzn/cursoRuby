namespace :db do
	desc "Agregando usuarios y recursos por cada usuario"
	task poblardatabase: :environment do
		10.times do	|n|
			puts "[DEBUG] creando usuario #{n+1} de 10"
			name = Faker::Name.name
			email = "usr.#{n+1}@codebots.net"
			password = "codebots123"
			User.create!(
				name: name,
				email: email,
				password: password,
				password_confirmation: password
				)
		end

		User.all.each do |user|
			puts "[DEBUG] creando recursos para usuario #{user.id} "
			10.times do	|n|
				image = File.open(Dir.glob(File.join(Rails.root, "img4posts", "*")).sample)
				description = %w(java, ruby, rails, kendall, ps4, java).sample
				user.pins.create!(
					description: description,
					image: image
					)
			end
		end
	end
end