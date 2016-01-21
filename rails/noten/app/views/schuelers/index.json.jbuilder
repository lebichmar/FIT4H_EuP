json.array!(@schuelers) do |schueler|
  json.extract! schueler, :id, :vorname, :name, :geburtsdatum, :email, :passwort
  json.url schueler_url(schueler, format: :json)
end
