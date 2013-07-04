### VALIDATINS ###
$ ->
    $('#reg').submit ->
       Validations()

Validations = ->
  UserCheck = UserNameValid()
  PasswordCheck = PasswordValid()
  FNameCheck = FirstNameValid()
  LNameCheck = LastNameValid()
  ProfpicCheck = ProfileValid()
  DOBCheck = DOBValid()
  HobbiesCheck = HobbiesValid()
  MobileCheck = MobileValid()
  CountryCheck = CountryValid()
  if UserCheck is true and PasswordCheck is true and FNameCheck is true and LNameCheck is true and ProfpicCheck is true and DOBCheck is true and HobbiesCheck is true and MobileCheck is true and CountryCheck is true
    $("#SuccessMsg").css("display" , "block")
    false
  else
    false


###******************USERNAME VALIDATION ******************###

$("#inputName").bind "blur", ->
  UserNameValid()

UserNameValid = ->
  Name = $("#inputName").val()
  AlphaNumPatt = /^[0-9A-z]+$/
  if Name.length >= 5
    if AlphaNumPatt.test(Name)
       success "UserMsg"
    else
       error "UserMsg"
  else
       error "UserMsg"


###******************PASSWORD VALIDATION ******************###


$("#inputPassword").bind "blur", ->
   PasswordValid()

PasswordValid = ->
  Password = $("#inputPassword").val()
  AlphaNumPatt = /^[0-9A-z]+$/
  if AlphaNumPatt.test(Password)
       success "PasswordMsg"
  else
       error "PasswordMsg"
 

###**********FIRSTNAME VALIDATION ****************###


$("#inputFirstName").bind "blur", ->
   FirstNameValid()

FirstNameValid = ->
  fName = $("#inputFirstName").val()
  if fName.length < 2
    error "FirstNameMsg"
  else
    success "FirstNameMsg"


###***************LASTNAME VALIDATION *******###

$("#inputLastName").bind "blur", ->
   LastNameValid()

LastNameValid = ->
  lName = $("#inputLastName").val()
  if lName.length < 2
    error "LastNameMsg"
  else
    success "LastNameMsg"



###***********DOB VALIDATION ************###

$("#Date").on "change", ->
  DOBValid()
$("#Month").on "change", ->
  DOBValid()
$("#Year").on "change", ->
  DOBValid()

DOBValid = ->
  selectDate = $("#Date").val()
  selectMonth = $("#Month").val()
  selectYear = $("#Year").val()

  if `selectDate == "-- Date --"` or `selectMonth == "-- Month --"` or `selectYear == "-- Year --"`
    error "DOBMsg"
  else
    success "DOBMsg"


###************HOBBIES VALIDATION *************###

$("#h1").on "change", ->
  HobbiesValid()
$("#h2").on "change", ->
  HobbiesValid()
$("#h3").on "change", ->
  HobbiesValid()
$("#h4").on "change", ->
  HobbiesValid()
$("#h5").on "change", ->
  HobbiesValid()


HobbiesValid = ->
  hob1 = $("#h1").prop('checked')
  hob2 = $("#h2").prop('checked')
  hob3 = $("#h3").prop('checked')
  hob4 = $("#h4").prop('checked')
  hob5 = $("#h5").prop('checked')
  if hob1 is true or hob2 is true or hob3 is true or hob4 is true or hob5 is true
    success "HobbiesMsg"
  else
    error "HobbiesMsg"


###******************PROFILEPIC VALIDATION **************###

$("#inputFile").on "change", ->
  ProfileValid()

ProfileValid = ->
  pic = $("#inputFile").val()
  if not pic? or pic is ""
    error "ProfileMsg"
  else
    success "ProfileMsg"



###************************PHONE VALIDATION *********************###

$("#inputPhone").bind "blur", ->
  MobileValid()

MobileValid = ->
  Phone = $("#inputPhone").val()
  MobPatt = /^([+][0-9]\d{1}) ([(][0-9]\d{2}[)])-([0-9]\d{2})-([0-9]\d{3})$/
  if MobPatt.test(Phone)
    success "MobileMsg"
  else
    error "MobileMsg"


###***********COUNTRY VALIDATION ***********###

$("#Country").bind "blur", ->
  CountryValid()


CountryValid = ->
  Country = $("#Country").val()
  
  if `Country == "-- Country --"`
    error "CountryMsg"
  else
    success "CountryMsg"


###*************************** SUCCESS AND ERROR ***************************####

success = (id) -> 
  clsName =  $("#"+id).prop("className")
  $("#"+id).attr('class', 'success');
  ProgressInc() unless clsName is "success"
  true


error = (id) ->
  clsName =  $("#"+id).prop("className")
  $("#"+id).attr('class', 'error');
  ProgressDec()  if clsName isnt "error" and clsName isnt "NameMsg"  
  false


###****************************** PROGRESS BAR ********************************###

ProgressInc = ->
  pb = $("#progress").val()
  $("#progress").val(pb + 1)
  $("#percent").text((pb + 1) * 10 + "%")


ProgressDec = ->
  pb = $("#progress").val()
  $("#progress").val(pb - 1)
  $("#percent").text((pb - 1) * 10 + "%")


