stu_info = ['name', 'email','password'] #this is an array we're using to easily prompt questions.  Everything inside is an object 
                                            #that the variable |stu| points to as part of a loop using the .each method to cycle
stu_info.each do |stu|                      #through each object.  
    puts "what is your #{stu}?"       #Here is our question using 'stu' to point to our object
    answer = gets.chomp.downcase            #Here is our answer that the user will input for each of the three objects that are part of the question.
end                                         #we must close the .do loop by using end.

def ask question                            #here we use the method def (define) to define the characteristics of our questions that
    while true                              #we will be asking the students.  This shows that questions will be asked until there are no more questions TO ask.
    puts question                           #this prompts our program for our question.
    reply = gets.chomp.downcase             #this is where the user to put yes or no (reply)
    
    if reply == 'yes' || reply == 'no'      #this says, the answer must be either yes or no for the program.
      if reply == 'yes'                     #this says if the reply is yes, it's considered true/correct and the user is notified.  WHAT'S IT CALLED INSIDE??
        answer = true
        puts 'You are correct!'
      else                                  #this says if the answer is 'no', it's considered false/wrong and the user is notified
        answer = false
        puts 'Wrong, Sucka!!'
      end
      break                                 #WHAT DOES THIS DO REALLY?
    else
        puts 'Just answer "yes" or "no" for crying out loud!' #this says if the user tries to enter anything other than yes/no outlined, they'll get this response
    end
  end 
    answer                                  #this is prompted from above but I don't really get HOW IT WORKS OR WHY???
end
puts 'Hello and welcome to your fantastic test.  Please answer yes or no to the following questions:'
ask 'Can a woodchuck truly chuck wood?' #ask is from our def method above.  This allows us to ask the question and take input...WHY DOES THIS WORK??
ask 'Is programming a cake walk?'
ask 'Are there animal crackers in my soup?'
ask 'Did Wonder Woman truly fool her mom with the blonde wig in Episode 1?'
ask 'Do you like this test?'




    
        