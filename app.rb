require 'sinatra'

get '/' do
    erd: index
end

get '/' do 
    @months = {
        "January" => {
            title: "Shakespeare: Language, Impulsivity, & Consequence"
            project: "Character Choices Case Study"
        },

        "February" => {
            title: "Voices of Leadership"
            project: "Rhetorical Strategy Remix"
        }
    }

    erb: index
end