# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Creating Doctors..."
docs = [{
  name: "Ejigayehu Abat, M.D.",
  image: "https://www.pngitem.com/pimgs/m/455-4554771_doctor-png-female-doctor-transparent-background-png-download.png",
  price: 150,
  details: "Internist, Endocrinologist | Head and Neck Cancer Center | Hyperparathyroidism, Osteoporosis, Metabolic bone disease, Hypoparathyroidism",
  location: "Jacksonville, Florida",
},
        {
  name: "Matt P. Abel, M.D.",
  image: "https://www.freepnglogos.com/uploads/doctor-png/png-woman-doctor-transparent-woman-doctor-images-40.png",
  price: 120,
  details: "Orthopedic Surgeon | Surgery | Hip surgery, Hip replacement, Hip fracture surgery, Hip replacement revision, Knee replacement, Knee reconstruction, Hip dysplasia, Periprosthetic fracture, Osteoarthritis, Infection, Arthritis",
  location: "Rochester, Minnesota",
},
        {
  name: "Marie D. Acier, M.D.",
  image: "https://www.freepnglogos.com/uploads/doctor-png/png-woman-doctor-transparent-woman-doctor-images-17.png",
  price: 125,
  details: "Opthalmologist | Ophthalmology",
  location: "Phoenix, Arizona",
},
        {
  name: "H. S. Abu Lede, M.D.",
  image: "https://www.freepnglogos.com/uploads/doctor-png/woman-doctor-png-transparent-woman-doctor-images-7.png",
  price: 130,
  details: "Endocrinologist | General Internal Medicine Endocrinology | Arteriosclerosis/atherosclerosis",
  location: "Rochester, MN",
},
        {
  name: "Leitia A. Acua, M.D.",
  image: "https://www.freepnglogos.com/uploads/doctor-png/doctor-declaire-lamacchia-orthopaedic-institute-15.png",
  price: 130,
  details: "Internist Hospitalist | Hospital Internal Medicine | Pregnancy",
  location: "Rochester, MN",
},
        {
  name: "Jill Adam, M.D., Ph.D.",
  image: "https://i.ya-webdesign.com/images/black-doctor-png-1.png",
  price: 190,
  details: "Pathologist | Apheresis",
  location: "Phoenix, Arizona",
},
        {
  name: "Jay Adusumai, M.B.B.S., M.P.H.",
  image: "https://decencynclexacademy.com/wp-content/uploads/2019/06/305-3053269_working-together-to-build-a-brighter-future-african.jpg",
  price: 180,
  details: "Internist Public Health and General Preventive Medicine Specialist | Interative Medicine and Health | Hyperbaric oxygen therapy",
  location: "Rochester, Minnesota",
},
        {
  name: "Poja P. Adani, M.B.B.S., M.D.",
  image: "https://w0.pngwave.com/png/719/385/physician-medicine-graphy-health-care-clinic-doctor-s-png-clip-art.png",
  price: 150,
  details: "Hematologist Oncologist | Breast Clinic | Breast cancer",
  location: "Jacksonville, Florida",
},
        {
  name: "Devon Agangai, M.D.",
  image: "https://www.pngitem.com/pimgs/m/9-94141_transparent-background-black-doctor-png-png-download.png",
  price: 140,
  details: "Anesthesiologist Pediatric Critical Care Specialist Pediatrician | Anesthesiology and Perioperative Medicine | Neonatal and pediatric heart surgery, Surgical procedure, Transplant, General anesthesia administration",
  location: "Rochester, Minnesota",
},
        {
  name: "Safia K. Ackmed, M.D.",
  image: "https://www.mayoclinic.org/-/media/kcms/employees/2018/07/20/18/55/safia-ahmed-15286118.jpg",
  price: 160,
  details: "Radiation Oncologist | Breast Clinic | Radiation therapy, Stereotactic radiosurgery, Proton therapy, Intraoperative radiation therapy, Brachytherapy, IMRT, Pediatric central nervous system tumor, Breast cancer, Soft tissue sarcoma",
  location: "Rochester, Minnesota",
}]

docs.map { |h|
  Doctor.create!(name: h[:name], image: h[:image], price: h[:price], details: h[:details], location: h[:location])
}
User.create!(username: "mike", password: "password")
