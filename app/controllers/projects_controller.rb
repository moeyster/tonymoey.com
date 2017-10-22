class ProjectsController < ApplicationController
  def json_parser
    @default_json = '
      {
        "data": {
          "name": "Tony Moey",
          "email":"moeyster@gmail.com",
          "phone": "+60126185510",
          "target_role": "Senior Full Stack Engineer",
          "profile_description":"Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.",
          "domain": "tonymoey.com",
          "location": "Subang Jaya, Selangor, Malaysia",
          "skill_set": [
            {
              "title": "Web Design",
              "explaination": "Assertively exploit wireless initiatives rather than synergistic core competencies."
            },
            {
              "title": "Interface Design",
              "explaination": "Credibly streamline mission-critical value with multifunctional functionalities."
            },
            {
              "title": "Project Direction",
              "explaination": "Proven ability to lead and manage a wide variety of design and development projects in team and independent situations."
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
              "details": "First job as a Ruby on Rails developer with Southeast Asias leading startup in the services industry collaborating with other developers all over Malaysia and Indonesia"
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
              "certification": "Bachelors in Information Technology and Systems",
              "year": "2011 - 2014",
              "details": "Attained Bachelors degree, winning the best presenter award in the E-Business class and was featured in the Star for final year project with Institue Jantung Negara (IJN)"
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
end
