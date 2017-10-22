class ProjectsController < ApplicationController
  def json_parser
    @default_json = '
      {
        "data": {
          "name": "Tony Moey Seng Leong",
          "email":"moeyster@gmail.com",
          "phone": "+60126185510",
          "target_role": "Senior Full Stack Engineer",
          "profile_description":"A Monash University graduate proficient in Ruby on Rails, web development tools and software development methodologies combined with excellent industry experience as a back-end web developer in the Ruby on Rails framework, and as a product and project manager for Southeast Asia’s leading startup in the service matching industry. Consistently recognized for problem solving, project management, communication and leadership skills used to effectively and efficiently manage teams and complete projects. Open and willing to learn new skills, equally successful in both team and self-directed settings.",
          "domain": "tonymoey.com",
          "location": "Subang Jaya, Selangor, Malaysia",
          "skill_set": [
            {
              "title": "Web Development",
              "explaination": "Translate and build business ideas into stunning web applications by making use of technoligies such as Wordpress or Ruby on Rails"
            },
            {
              "title": "Project Management",
              "explaination": "Helping sofware development teams manage tasks and projects to it\'s successful deployment while also applying my skills in all freelance projects"
            },
            {
              "title": "Product Design",
              "explaination": "Design intuitive and effective product features that hit your target metrics and business goals"
            }
          ],
          "technicals" : ["HTML", "CSS", "Javascript", "JQuery", "Ruby", "Ruby on Rails", "Wordpress"],
          "experiences" : [
            {
              "company": "Recommend.My",
              "role": "Product And Project Manager",
              "year": "2016 - Present",
              "details": "Promoted to Product and Project Manager, focusing on improving development life cycle of the dev teams, working with product owners on designing features and translating all product features to developers"
            },
            {
              "company": "Recommend.My",
              "role": "Ruby On Rails Developer",
              "year": "2015 - 2016",
              "details": "First job as a Ruby on Rails developer with Southeast Asia\'s leading startup in the services industry collaborating with other developers all over Malaysia and Indonesia"
            },
            {
              "company": "Subang Jaya Squash",
              "role": "Squash Coach",
              "year": "2012 - 2016",
              "details": "Worked part time as a squash coach for the Subang Jaya junior squash team, having the opportunity to manage teams to the National Juniors in Ipoh and Kuantan"
            }
          ],
          "educations" : [
            {
              "school": "Monash Unversity Malaysia",
              "certification": "Bachelor\'s in Information Technology and Systems",
              "year": "2011 - 2014",
              "details": "Attained Bachelor\'s degree, winning the best presenter award in the E-Business class and was featured in the Star for final year project with Institue Jantung Negara (IJN)"
            },
            {
              "school": "Sunway College",
              "certification": "MUFY",
              "year": "2010 - 2010",
              "details": "Attended the Monash University Foundation Year programme as an entrance qualification into Monash University  "
            },
            {
              "school": "SMK Subang Jaya",
              "certification": "SPM",
              "year": "2005 - 2009",
              "details": "Completed the SPM examination while serving as President to the Leo Club and representing the school in Squash, Volleyball and Drama"
            }
          ]
        }
      }

    '
  end

  def parse_json
    if params[:json_content][:content].blank?
      @response = "empty"
    else
      @response = JSON.parse(params[:json_content][:content]) rescue nil
    end
    respond_to do |format|
        format.js { render 'projects/parse_json'}
    end
  end

  def ttt_index

  end

  def ttt_submit
  end
end
