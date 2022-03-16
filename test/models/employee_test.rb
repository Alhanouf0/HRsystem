require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test 'should save employee' do
  #   employee = Employee.new
  #   employee.name = 'employee teat1'
  #   employee.email = 'emp@mail.com'
  #   employee.job = 'progarammer'
  #   employee.salary = 12000.33
  #   employee.employment = 'employed'
  #   assert employee.save

  # end

  test "should not save employee without name" do
    employee = Employee.new
    employee.job = "pro"
    employee.salary = 1200
    employee.employment = "employeed"
    employee.email= "empo@mail.com"
    assert employee.save, "cannot save without name"
  end

  # test "cannot update salary to be string" do
  #   employee = Employee.create!(name:"sara",job:"pro",salary:1200,employment:"employeed",email:"empo@mail.com")
  #   employee.update(salary: "no")
  #   assert employee.save, "cant update float to string"
  # end

  # test "cannot update salary to be string" do
  #   employee = employees(:one)
  #   employee.update(salary: "no")
  #   assert employee.save, "cant update float to string"
  # end
  
end
