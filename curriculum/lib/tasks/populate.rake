namespace :db do
  desc "Erase and populate the database with sample data"
  task :populate => :environment do
    require 'populator'

    models = [College, Course, DegreePlan, DegreePlanNote, DegreeRequirement, Dept, Prerequisite, TermPlan, UndergradProgram]
    models.each(&:destroy_all)
      
    # Populate college table
    # SOE
    College.populate 1 do |soe|
      soe.name = 'School of Engineering'
      soe.acronym = 'SOE'
      soe.org_code = 'A9780876'
    end
    # A&S
    College.populate 1 do |as|
      as.name = 'College of Arts & Sciences'
      as.acronym = 'AS'
      as.org_code = 'B8780776'
    end
    
    # Populate dept table
    # ECE dept
    Dept.populate 1 do |ece|
      ece.college_id = College.where(:acronym => 'SOE')[0].id
      ece.name = 'Electrical & Computer Engineering'
      ece.acronym = 'ECE'
      ece.org_code = 'B9650076'
    end
    # English dept
    Dept.populate 1 do |engl|
      engl.college_id = College.where(:acronym => 'AS')[0].id
      engl.name = 'English'
      engl.acronym = 'ENGL'
      engl.org_code = 'B7650076'
    end
    # Math dept
    Dept.populate 1 do |math|
      math.college_id = College.where(:acronym => 'AS')[0].id
      math.name = 'Math'
      math.acronym = 'MATH'
      math.org_code = 'B7111076'
    end
    
    # Populate course tables
    #ENGL 101
    Course.populate 1 do |engl101|
      engl101.name = 'Expository Writing'
      engl101.crn = '897634'
      engl101.credits = 3
      engl101.description = "Introduces students to many kinds of writing that are used in academic and professional 
      situations and helps students learn to analyze and address the differenc purposes and audiences they'll encounter 
      in their subsequent careers."
      engl101.dept_id = Dept.where(:acronym => 'ENGL')[0].id
    end
    # ECE 101
    Course.populate 1 do |ece101|
      ece101.name = 'Introduction to Electrical & Computer Engineering'
      ece101.crn = '297634'
      ece101.credits = 1
      ece101.description = "Insigt into electrical engineering is gained through video, 'hands-on' experiments, use of computer
      software to learn basic problem-solving skills and a team-oriented design project."
      ece101.dept_id = Dept.where(:acronym => 'ECE')[0].id
    end
    # Math 150
    Course.populate 1 do |math150|
      math150.name = 'Pre-Calculus Mathematics'
      math150.crn = '380734'
      math150.credits = 3
      math150.description = "In depth study of polynomial, rational, exonential and logrithmic functions and their graphs.
      Includes fundamental theorem of algebra, systems of equations, conic sections, parametric equations and applications 
      in geometry. Exploring of the graphing calculator"
      math150.dept_id = Dept.where(:acronym => 'MATH')[0].id
    end
    # Math 162
    Course.populate 1 do |math162|
      math162.name = 'Calculus I'
      math162.crn = '396734'
      math162.credits = 4
      math162.description = "Derivative as a rate of change, intuitive, numerical and theoretical concepts, applications to 
      graphing, linearization and optimization. Integral as a sum, relation between integral and derivative, and applications
      of definite integral"
      math162.dept_id = Dept.where(:acronym => 'MATH')[0].id
    end
    
    # Undergraduate Programs
    # CompE
    UndergradProgram.populate 1 do |compe|
      compe.dept_id = Dept.where(:acronym => 'ECE')[0].id
      compe.name = 'Computer Engineering'
      compe.degree = 'BS'
      compe.org_code = 'HJ897682'
    end
    
    # Degree Plans
    # CompE academic year 2013-14
    DegreePlan.populate 1 do |dp|
      dp.undergrad_program_id = UndergradProgram.where(:name => 'Computer Engineering')[0].id
      dp.academic_year = '2013-14'
    end
    
    # Term Plans
    # CompE Term 1 
    TermPlan.populate 1 do |tp|
      tp.degree_plan_id = DegreePlan.where(:id => UndergradProgram.where(:name => 'Computer Engineering')[0].id)[0].id
      tp.term_number = 1
    end   
    
    # Degree Requirements
    # CompE academic year 2013-14, ENGL 101
    DegreeRequirement.populate 1 do |dr| 
      dr.degree_plan_id = DegreePlan.where(:id => UndergradProgram.where(:name => 'Computer Engineering')[0].id)[0].id
      dr.name = 'ENGL 101: Expository Writing'
      dr.min_grade = 'C'
      dr.crucial = false
    end
    
    # Prerequisities for Math 162
    Prerequisite.populate 1 do |pre|  # this prereq is not a class
      pre.course_id = Course.where(:crn => '396734')[0].id
      pre.description = 'ACT=28-31 or SAT=640-700'
      pre.position = 1
      pre.or_connector = true
    end
    Prerequisite.populate 1 do |pre|  # this prereq. is a class
      pre.course_id = Course.where(:crn => '396734')[0].id
      pre.prereq_course_id = Course.where(:crn => '380734')[0].id
      pre.position = 2
    end
  
  end
end