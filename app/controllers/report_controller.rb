class ReportController < ApplicationController

  #attr_accessor :period

  def idsr_report
  end
  def district_form

  end

  def update_to_dhis2
    #year and month of the report. Report day starts at 01
    year_month = params[:period]
    @report_type = params[:report_type]
    report_type = @report_type
    orgUnit = params[:orgUnit_ID]
    filename = params[:report_type].titleize.delete(" ")
    #raise filename.inspect
    #raise year_month.inspect


     
     if params[:idsr_mothly]
         
    idsr_mothly = params[:idsr_mothly]

    @idsr_mothly = {}
      
    coc_deaths = "Y60KRet71uE"
    coc_out_patient = "AXjR2XwI1Oa"
    coc_in_patient = "bYnnRZLJRXI"
    coc_out_patient_cases = "s6WvN7atiaT"
    coc_in_patient_cases = "YiLqA3HoKG4"
    coc_in_patient_deaths = "wdoncY7qlNR"
    coc_less_than_5_out_patient_cases = "dDFlaOa3D6T"
    coc_less_than_5_in_patient_cases = "e3TtUfj49Bf"
    coc_less_than_5_in_patient_deaths = "DOr1v5etmTq"
    coc_greater_than_5_out_patient_cases = "jmGJhaUYmlx"
    coc_greater_than_5_in_patient_cases = "DwnS15qibHz"
    coc_greater_than_5_in_patient_deaths = "lese83Hv5qz"



      @idsr_mothly = {
      "IDSR Male Urethral Discharge".upcase=>
      {
          "Out-patient cases"=>
          {
            :dataElement=>"xgxD2ont9g1",
            :value=>idsr_mothly["IDSR Male urethral discharge"]["Out-patient cases"],
            :categoryOptionCombo=>coc_out_patient_cases
           }
      },

       "IDSR Viral Hemorrhagic Fever".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"NHfpTHwyx7T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["Out-patient cases"], 
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"NHfpTHwyx7T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"NHfpTHwyx7T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient deaths"], 
          :categoryOptionCombo=>coc_deaths
        }
      },


      "IDSR Meningitis".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"UyrIggR3n3j",
          :value=> idsr_mothly["IDSR Meningitis"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"UyrIggR3n3j",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"UyrIggR3n3j",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Pneumonia <5 Years".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"Ki7COOYqcyP",
          :value=> idsr_mothly["IDSR Pneumonia less than 5 years"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
      },

      "IDSR Schistosomiasis Intestinal".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"KSLQxqBdLwM",
          :value=> idsr_mothly["IDSR Schistosomiasis intestinal"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"KSLQxqBdLwM",
          :value=> idsr_mothly["IDSR Schistosomiasis intestinal"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"KSLQxqBdLwM",
          :value=> idsr_mothly["IDSR Schistosomiasis intestinal"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        },
      },

      "IDSR Uncomplicated Malaria <5y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"EYpF8t8wn6T",
          :value=> idsr_mothly["IDSR Uncomplicated malaria  less than 5y lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        },

      "IDSR Male Non-Vesicular Genital Ulcer".upcase =>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"gNWQ5rnw9sX",
          :value=> idsr_mothly["IDSR Male non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },

      "IDSR Malaria < 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"Rxlf94C3PYS",
          :value=>idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient cases "], 
          :categoryOptionCombo=>coc_less_than_5_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Rxlf94C3PYS",
          :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient deaths "], 
          :categoryOptionCombo=>coc_less_than_5_in_patient_deaths
        }
      },


      "IDSR New AIDS Cases".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"tu9zdEgA5Bg",
          :value=> idsr_mothly["IDSR New AIDS cases"]["Out-patient cases"], 
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"tu9zdEgA5Bg",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"tu9zdEgA5Bg",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient deaths"], 
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Measles".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"LkvHAvm443F",
          :value=>idsr_mothly["IDSR Measles"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"LkvHAvm443F",
          :value=> idsr_mothly["IDSR Measles"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"LkvHAvm443F",
          :value=> idsr_mothly["IDSR Measles"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },


      "IDSR Neonatal Tetanus".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"Ol40JZxF0jS",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"Ol40JZxF0jS",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Ol40JZxF0jS",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Diarrhoea With Dehydration".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"Qt1rdDwTmCU",
          :value=>idsr_mothly["IDSR Diarrhoea with dehydration"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"Qt1rdDwTmCU",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Qt1rdDwTmCU",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Malaria >= 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"uho3Fq3GTEL",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_greater_than_5_out_patient_cases
        }
      },

      "IDSR Malaria With Severe Anemia <5years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"U5ERjhFVj4Q",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"U5ERjhFVj4Q",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Female Non-Vesicular Genital Ulcer".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"PHTdsgImtmv",
          :value=> idsr_mothly["IDSR Female non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR AFP".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"ZyCU0SNt9Bc",
          :value=> idsr_mothly["IDSR AFP"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"ZyCU0SNt9Bc",
          :value=> idsr_mothly["IDSR AFP"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"ZyCU0SNt9Bc",
          :value=> idsr_mothly["IDSR AFP"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Malaria In Pregnant Women Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"lNiqjzux660",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },



      "IDSR Schistosomiasis Urinary".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"qKFLWd8tAGl",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"qKFLWd8tAGl",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"qKFLWd8tAGl",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Cholera".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"kiiC72m4Ydu",
          :value=> idsr_mothly["IDSR Cholera"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"kiiC72m4Ydu",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"kiiC72m4Ydu",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Uncomplicated Malaria 5+Y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"f5Hj5KEkcZK",
          :value=> idsr_mothly["IDSR Uncomplicated malaria 5 plus y, lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR Malaria >= 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"Rxlf94C3PYS",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["In-patient cases"],
          :categoryOptionCombo=>coc_greater_than_5_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Rxlf94C3PYS",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_greater_than_5_in_patient_deaths
        }
        },

      "IDSR Malaria < 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"uho3Fq3GTEL",
          :value=>idsr_mothly["IDSR Malaria less than 5 Years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_less_than_5_out_patient_cases
        }
      },

      "IDSR Plague".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"WIreSUBduLG",
          :value=>idsr_mothly["IDSR Plague"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"WIreSUBduLG",
          :value=>idsr_mothly["IDSR Plague"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"WIreSUBduLG",
          :value=>idsr_mothly["IDSR Plague"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Malaria In Pregnant Women Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"c9gTAicK7UF",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"c9gTAicK7UF",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
        },

      "IDSR Diarrhoea With Blood".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"N62OtXdFQpk",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"N62OtXdFQpk",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"N62OtXdFQpk",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
        },

      "IDSR Severe Pneumonia <5 Years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"MtoTwhaIuti",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"MtoTwhaIuti",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Diarrhoea With Bloody".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"si5KnFu92M8",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"si5KnFu92M8",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"si5KnFu92M8",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },



      "IDSR Very Severe Pneumonia <5 Years".upcase=>
      {

        "In-patient cases"=>
        {
          :dataElement=>"B0xPdX3XCTJ",
          :value=>idsr_mothly["IDSR Very severe pneumonia less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"B0xPdX3XCTJ",
          :value=>idsr_mothly["IDSR Very severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
       }
      }
 
                 
    
     x = Date.today.strftime("%Y-%m-%d")
      header="<dataValueSet dataSet=\"CqxXPu36DzE\" completeDate=\"#{x}\" period=\"#{params[:period]}\" orgUnit=\"bdIXczUKGHo\">\n"
      
      

      c = header
      @idsr_mothly.each do |key, data|
        data.each do |k,d|
          c += "  <dataValue dataElement=\""+d[:dataElement].to_s + "\" categoryOptionCombo=\""+d[:categoryOptionCombo].to_s + "\" value=\""+d[:value].to_s + "\" />\n"
        end
      end

      c+="</dataValueSet>"
      `touch dhis2/"#{filename}".xml`
      f = File.open("dhis2/#{filename}.xml", 'w')

      f.print c
      f.close()
      #condition for update failure or success

      sending_to_dhis(params[:id],report_type,filename)
   
      #hmis15 dataset values
     
      elsif params[:hmis_report]
         
          hmis_report = params[:hmis_report]
          @hmis_report = {}
          coc_id = "tzowc5pEjMQ"

       
      @hmis_report = {  


         "HMIS pregnant women starting antenatal care first trimester".upcase=>
               {:value=>hmis_report["HMIS pregnant women starting antenatal care first trimester"],
                :dataElement=>"cnILG8l8sSe",
                :categoryOptionCombo=>coc_id},

   
          "HMIS total number of new antenatal attendees".upcase=>
               {:value=>hmis_report["HMIS total number of new antenatal attendees"],
                :dataElement=>"c7qthovhjmV",
                :categoryOptionCombo=>coc_id},


          "HMIS total antenatal visits".upcase=>{:value=>hmis_report["HMIS total antenatal visits"],
                :dataElement=>"n0s0x7xP4hS",
                :categoryOptionCombo=>coc_id},


          "HMIS deliveries attended by skilled health personnel".upcase=>{
                :value=>hmis_report["HMIS deliveries attended by skilled health personnel"],
                :dataElement=>"ytvph843Xrz",
                :categoryOptionCombo=>coc_id},


         "HMIS women obstetric complications treated".upcase=>{:value=>hmis_report["HMIS women obstetric complications treated"],
                :dataElement=>"fq35LmkxaS3",
                :categoryOptionCombo=> coc_id},


          "HMIS caesarean sections".upcase=>{:value=>hmis_report["HMIS caesarean sections"],
                :dataElement=>"Xt9THb7ZSDY",
                :categoryOptionCombo=>coc_id},


          "HMIS live births".upcase=>{:value=>hmis_report["HMIS live births"],
                :dataElement=>"TQIoVn1rJSi",
                :categoryOptionCombo=>coc_id},


          "HMIS babies born with weight less than 2500g".upcase=>{:value=>hmis_report["HMIS babies born with weight less than 2500g"],
                :dataElement=>"zU1kPsjdqup",
                :categoryOptionCombo=>coc_id},


          "HMIS abortion complications treated".upcase=>{:value=>hmis_report["HMIS abortion complications treated"],
                :dataElement=>"YRyqBpha5hF",
                :categoryOptionCombo=>coc_id},


          "HMIS eclampsia cases treated".upcase=>{:value=>hmis_report["HMIS eclampsia cases treated"],
                :dataElement=>"MPyhJbOD6kV",
                :categoryOptionCombo=>coc_id},


          "HMIS postpartum haemorrhage treated".upcase=>{:value=>hmis_report["HMIS postpartum haemorrhage treated"],
                :dataElement=>"rBwJrZcDO3S",
                :categoryOptionCombo=>coc_id},


          "HMIS sepsis cases treated".upcase=>{:value=>hmis_report["HMIS sepsis cases treated"],
                :dataElement=>"JU6uuQaozm0",
                :categoryOptionCombo=>coc_id},


          "HMIS pregnant women treated for severe anaemia".upcase=>{:value=>hmis_report["HMIS pregnant women treated for severe anaemia"],
                :dataElement=>"uOdejNDGIPn",
                :categoryOptionCombo=>coc_id},


          "HMIS newborn treated for complications".upcase=>{:value=>hmis_report["HMIS newborn treated for complications"],
                :dataElement=>"b09YsNbcCzj",
                :categoryOptionCombo=>coc_id},


          "HMIS  postpartum care within 2 weeks of delivery".upcase=>{:value=>hmis_report["HMIS postpartum care within 2 weeks of delivery"],
                :dataElement=>"X6Q6x6y4Iat",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving 3 months supply of condoms".upcase=>{:value=>hmis_report["HMIS persons receiving 3 months supply of condoms"],
                :dataElement=>"BtvxirQ7rwq",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving 3 months oral pills".upcase=>{:value=>hmis_report["HMIS persons receiving 3 months oral pills"],
                :dataElement=>"oFegsZ6IO87",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving depo-provera".upcase=>{:value=>hmis_report["HMIS persons receiving depo-provera"],
                :dataElement=>"CQsAIMmiy5F",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving norplant".upcase=>{:value=>hmis_report["HMIS persons receiving norplant"],
                :dataElement=>"g4R7onHCqtD",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving iucd".upcase=>{:value=>hmis_report["HMIS persons receiving iucd"],
                :dataElement=>"h5hPpHVtB2Q",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving sterilisation of fp".upcase=>{:value=>hmis_report["HMIS persons receiving sterilisation of fp"],
                :dataElement=>"M5MaY3kQcF7",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 fully immunised children".upcase=>{:value=>hmis_report["HMIS under 1 fully immunised children"],
                :dataElement=>"eIYJ6nIbqJl",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 bcg children".upcase=>{:value=>hmis_report["HMIS under 1 bcg children"],
                :dataElement=>"NfrbRsKrNXa",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given pentavalent".upcase=>{:value=>hmis_report["HMIS under 1 children given pentavalent"],
                :dataElement=>"vjoAh1wyZEQ",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given polio".upcase=>
             {
             :value=>hmis_report["HMIS under 1 children given polio"],
                :dataElement=>"oXZcZQOpafR",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given measles first doses".upcase=>{:value=>hmis_report["HMIS under 1 children given measles first doses"],
                :dataElement=>"S9J9K8ALFNg",
                :categoryOptionCombo=>coc_id},


          "HMIS vitmin A doses given to 6-59m children".upcase=>{:value=>hmis_report["HMIS vitmin A doses given to 6-59m children"],
                :dataElement=>"n7Hg4khd4RP",
                :categoryOptionCombo=>coc_id},


          "HMIS under weight children in under five clinic".upcase=>{:value=>hmis_report["HMIS under weight children in under five clinic"],
                :dataElement=>"XnbUBmL4jJ4",
                :categoryOptionCombo=>coc_id},


          "HMIS 15-49 years receiving testing and serostatus".upcase=>{:value=>hmis_report["HMIS 15-49 years receiving testing and serostatus"],
                :dataElement=>"IguYnbNjKX1",
                :categoryOptionCombo=>coc_id},


          "HMIS Number of 15 - 49 age group tested HIV positive".upcase=>{:value=>hmis_report["HMIS Number of 15 - 49 age group tested HIV positive"],
                :dataElement=>"ZctPvmaQkwQ",
                :categoryOptionCombo=>coc_id},


          #{}"HMIS ".upcase=>{:value=>hmis_report["HMIS "],
          #      :dataElement=>"",
           #     :categoryOptionCombo=>coc_id},

#

          "HMIS hiv positive persons receiving ARV treatment".upcase=>{:value=>hmis_report["HMIS hiv positive persons receiving ARV treatment"],
                :dataElement=>"FeUFBdD70eQ",
                :categoryOptionCombo=>coc_id},


          "HMIS pregnant women tested HIV positive".upcase=>{:value=>hmis_report["HMIS pregnant women tested HIV positive"],
                :dataElement=>"VO8JzDierAT",
                :categoryOptionCombo=>coc_id},


          "HMIS HIV positive women treated for PMTCT".upcase=>{:value=>hmis_report["HMIS HIV positive women treated for PMTCT"],
                :dataElement=>"VHMxinww5VY",
                :categoryOptionCombo=>coc_id},


          "HMIS children attending under - five clinic".upcase=>{:value=>hmis_report["HMIS children attending under - five clinic"],
                :dataElement=>"m2093Y4qTDd",
                :categoryOptionCombo=>coc_id},

          "HMIS OPD attendance".upcase=>{:value=>hmis_report["HMIS OPD attendance"],
                :dataElement=>"oardCtGxkxg",
                :categoryOptionCombo=>coc_id},


          "HMIS confirmed TB new cases".upcase=>{:value=>hmis_report["HMIS confirmed TB new cases"],
                :dataElement=>"jvKv8kNb5th",
                :categoryOptionCombo=>coc_id},


          "HMIS smear negative and extra-pulmonary cases completed treatment".upcase=>{:value=>hmis_report["HMIS smear negative and extra-pulmonary cases completed treatment"],
                :dataElement=>"aRMD7Iz673s",
               :categoryOptionCombo=>coc_id},


           "HMIS new smear sputum positive cases".upcase=>{:value=>hmis_report["HMIS new smear sputum positive cases"],
                :dataElement=>"B8TxVMPmoPV",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of SP for more than a week at a time".upcase=>{:value=>hmis_report["HMIS stock outs of SP for more than a week at a time"],
                :dataElement=>"s2dwabCQG7t",
                :categoryOptionCombo=>coc_id},


          "HMIS any stock outs of ORS for more than a week at a time".upcase=>{:value=>hmis_report["HMIS any stock outs of ORS for more than a week at a time"],
                :dataElement=>"poID6mO7drM",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of contrimaxazole for more than a week at a time".upcase=>{:value=>hmis_report["HMIS stock outs of contrimaxazole for more than a week at a time"],
                :dataElement=>"JPIfExkLdxH",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of SP , ORS and Contrimaxazole for more than a week".upcase=>{:value=>hmis_report["HMIS stock outs of SP , ORS and Contrimaxazole for more than a week"],
                :dataElement=>"yc5OhiYugjP",
                :categoryOptionCombo=>coc_id},


          "HMIS functioning ambulances".upcase=>{:value=>hmis_report["HMIS functioning ambulances"],
                :dataElement=>"lL6JKYjtNyM",
                :categoryOptionCombo=>coc_id},


          "HMIS insecticide treated nets distributed".upcase=>{:value=>hmis_report["HMIS insecticide treated nets distributed"],
                :dataElement=>"SoXN33J7kZt",
                :categoryOptionCombo=>coc_id},


          "HMIS households with access to safe drinking water".upcase=>{:value=>hmis_report["HMIS households with access to safe drinking water"],
                :dataElement=>"dUFKWcKcMdE",
                :categoryOptionCombo=>coc_id},


          "HMIS households atleast a sanplat latrine".upcase=>{:value=>hmis_report["HMIS households atleast a sanplat latrine"],
                :dataElement=>"KrfR9zSkZzD",
                :categoryOptionCombo=>coc_id},


          "HMIS HBC patents follow-up and provided treatment".upcase=>{:value=>hmis_report["HMIS HBC patents follow-up and provided treatment"],
                :dataElement=>"NaBkynny6Yu",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning water supply systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning water supply systems"],
                :dataElement=>"UvoXnhRwPnV",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning Communication systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning Communication systems"],
                :dataElement=>"Qe7ycf0ls6s",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning Electricity".upcase=>{:value=>hmis_report["HMIS Do you have functioning Electricity"],
                :dataElement=>"SD4s2XRTXqj",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning water supply,Electricity and Communication systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning water supply,Electricity and Communication systems"],
                :dataElement=>"JmT5ScyFfi8",
                :categoryOptionCombo=>coc_id},


          "HMIS functional health center committee".upcase=>{:value=>hmis_report["HMIS functional health center committee"],
                :dataElement=>"D2hhoFXrNpr",
                :categoryOptionCombo=>coc_id},


          "HMIS Were you supervised by DHMT ".upcase=>{:value=>hmis_report["HMIS Were you supervised by DHMT"],
                :dataElement=>"x5Eg1aUTEv5",
                :categoryOptionCombo=>coc_id},


            #getting values from database for hmis-15 vlues
           "HMIS syphillis in pregnancy".upcase=>
               {:value=>hmis_report["HMIS syphillis_in_pregnancy"],
                :dataElement=>"czqOZt83Wmi",
                :categoryOptionCombo=>coc_id},

          "HMIS opportunistic infection".upcase=>{:value=>hmis_report["HMIS opportunistic_infection"],
                :dataElement=>"fjysdnbRFpR",
                :categoryOptionCombo=>coc_id},

          "HMIS acute respiratory infection under 5".upcase=>{:value=>hmis_report["HMIS acute_respiratory_infection_under_5"],
                :dataElement=>"pDF88ks6fR3",
                :categoryOptionCombo=>coc_id},

          "HMIS diarrhoea non bloody".upcase=>{:value=>hmis_report["HMIS diarrhoea_non_bloody"],
                :dataElement=>"ePiK007hWf4",
                :categoryOptionCombo=>coc_id},

          "HMIS malnutrition less than 5".upcase=>{:value=>hmis_report["HMIS malnutrition_under_5"],
                :dataElement=>"TxPXU3eK2EX",
                :categoryOptionCombo=>coc_id},

          "HMIS malaria less than 5".upcase=>{:value=>hmis_report["HMIS malaria_less_than_5"],
                :dataElement=>"vnY5qSBWZLs",
                :categoryOptionCombo=>coc_id},

          "HMIS malaria more than 5".upcase=>{:value=>hmis_report["HMIS malaria_more_than_5"],
                :dataElement=>"uCJ9HlIFmdU",
                :categoryOptionCombo=>coc_id},

          "HMIS neonatal tetanus".upcase=>{:value=>hmis_report["HMIS neonatal_tetanus"],
                :dataElement=>"YEekvUL2XUI",
                :categoryOptionCombo=>coc_id},

          "HMIS cholera".upcase=>{:value=>hmis_report["HMIS cholera"],
                :dataElement=>"myTqVbVuFdC",
                :categoryOptionCombo=>coc_id},

          "HMIS measles".upcase=>{:value=>hmis_report["HMIS measles"],
                :dataElement=>"HUFRCOPmNJw",
                :categoryOptionCombo=>coc_id},

          "HMIS acute flaccid paralysis".upcase=>{:value=>hmis_report["HMIS acute_flaccid_paralysis"],
                :dataElement=>"mRWALDsiZ3m",
                :categoryOptionCombo=>coc_id},

          "HMIS ebola".upcase=>{:value=>hmis_report["HMIS ebola"],
                :dataElement=>"MQ2XikjeoJ7",
                :categoryOptionCombo=>coc_id},

          "HMIS meningitis".upcase=>{:value=>hmis_report["HMIS meningitis"],
                :dataElement=>"EH0mq8OZBmn",
                :categoryOptionCombo=>coc_id},

          "HMIS plague".upcase=>{:value=>hmis_report["HMIS plague"],
                :dataElement=>"HR3esk2c3MW",
                :categoryOptionCombo=>coc_id},
          "HMIS rabies".upcase=>{:value=>hmis_report["HMIS rabies"],
                :dataElement=>"btCPk6YyP5Z",
                :categoryOptionCombo=>coc_id},
         # "HMIS sexually transmitted infections".upcase=>{:value=>hmis_report["HMIS sexually_transmitted_infections"],
         #       :dataElement=>"",
          #      :categoryOptionCombo=>coc_id},

          "HMIS hiv confirmed positive".upcase=>{:value=>hmis_report["HMIS hiv_confirmed_positive"],
                :dataElement=>"qrzd1FNUXaQ",
                :categoryOptionCombo=>coc_id},
          "HMIS yellow fever".upcase=>{:value=>hmis_report["HMIS yellow_fever"],
                :dataElement=>"seGYlaiReca",
                :categoryOptionCombo=>coc_id},
          "HMIS dysentery".upcase=>{:value=>hmis_report["HMIS dysentery"],
                :dataElement=>"tNWbf2xgoPJ",
                :categoryOptionCombo=>coc_id},
          "HMIS eye infection".upcase=>{:value=>hmis_report["HMIS eye_infection"],
                :dataElement=>"xbXNb6LIS89",
                :categoryOptionCombo=>coc_id},
          "HMIS ear_infection".upcase=>{:value=>hmis_report["HMIS ear_infection"],
                :dataElement=>"nH1LiS2dzD4",
                :categoryOptionCombo=>coc_id},
          "HMIS skin infections".upcase=>{:value=>hmis_report["HMIS skin_infections"],
                :dataElement=>"cwRC5eMuZJm",
                :categoryOptionCombo=>coc_id},
          "HMIS oral_conditions".upcase=>{:value=>hmis_report["HMIS oral_conditions"],
                :dataElement=>"RAGDP7hfZgM",
                :categoryOptionCombo=>coc_id},

          "HMIS schistosomiasis".upcase=>{:value=>hmis_report["HMIS schistosomiasis"],
                :dataElement=>"I0S5P9rstTU",
                :categoryOptionCombo=>coc_id},

          "HMIS leprosy".upcase=>{:value=>hmis_report["HMIS leprosy"],
                :dataElement=>"ptaJWQl5giN",
                :categoryOptionCombo=>coc_id},
         # "HMIS injuries and wounds".upcase=>{:value=>hmis_report["HMIS injuries_and_wounds"],
         #       :dataElement=>"",
          #                      :categoryOptionCombo=>coc_id},


          "HMIS road traffic accidents".upcase=>{:value=>hmis_report["HMIS road_traffic_accidents"],
                :dataElement=>"K0xs2ac2lsl",
                :categoryOptionCombo=>coc_id},

          "HMIS bed capacity".upcase=>{:value=>hmis_report["HMIS bed capacity"],
                :dataElement=>"sCmJkVM8dAh",
                :categoryOptionCombo=>coc_id},


          "HMIS number of admissions".upcase=>{:value=>hmis_report["HMIS number of admissions"],
                :dataElement=>"wWoXEeeOV82",
                :categoryOptionCombo=>coc_id},


          "HMIS number of discharges".upcase=>{:value=>hmis_report["HMIS number of discharges"],
                :dataElement=>"NUDfGGP08ha",
                :categoryOptionCombo=>coc_id},


          "HMIS inpatient days".upcase=>{:value=>hmis_report["HMIS inpatient days"],
                :dataElement=>"oMyyjIe2PLj",
                :categoryOptionCombo=>coc_id},


          "HMIS number of inpatient deaths".upcase=>{:value=>hmis_report["HMIS number of inpatient deaths"],
                :dataElement=>"ZnW8abZcpio",
                :categoryOptionCombo=>coc_id},


          "HMIS number of direct obstetric deaths".upcase=>{:value=>hmis_report["HMIS number of direct obstetric deaths"],
                :dataElement=>"x0eaSOa6m45",
                :categoryOptionCombo=>coc_id},


          "HMIS acute respiratory infections inpatient deaths under 5".upcase=>{:value=>hmis_report["HMIS acute respiratory infections inpatient deaths under 5"],
                :dataElement=>"vHTcwPwv2ik",
                :categoryOptionCombo=>coc_id},


          "HMIS diarrhoea non bloody inpatient deaths under 5 ".upcase=>{:value=>hmis_report["HMIS diarrhoea non bloody inpatient deaths under 5 "],
                :dataElement=>"CZp902dAcRU",
                :categoryOptionCombo=>coc_id},


          "HMIS malnutrition inpatient deaths under 5".upcase=>{:value=>hmis_report["HMIS malnutrition inpatient deaths under 5"],
                :dataElement=>"PYHjC8cRU7G",
                :categoryOptionCombo=>coc_id},


          "HMIS  tb inpatient deaths".upcase=>{:value=>hmis_report["HMIS tb inpatient deaths"],
                :dataElement=>"aSWjdb7uFcG",
                :categoryOptionCombo=>coc_id},


          "HMIS malaria inpatients deaths under 5".upcase=>{:value=>hmis_report["HMIS malaria inpatients deaths under 5"],
                :dataElement=>"vnY5qSBWZLs",
                :categoryOptionCombo=>coc_id},


          "HMIS malaria inpatient deaths over 5 ".upcase=>{:value=>hmis_report["HMIS malaria inpatient deaths over 5 "],
                :dataElement=>"tB4tibtA6OB",
                :categoryOptionCombo=>coc_id},


          "HMIS  cholera inpatient deaths".upcase=>{:value=>hmis_report["HMIS cholera inpatient deaths"],
                :dataElement=>"G6XwIuAyXi2",
                :categoryOptionCombo=>coc_id},


          "HMIS dysentery inpatient deaths".upcase=>{:value=>hmis_report["HMIS dysentery inpatient deaths"],
                :dataElement=>"jWDViWfpJj8",
                :categoryOptionCombo=>coc_id},


          "HMIS road traffic inpatient deaths".upcase=>{:value=>hmis_report["HMIS road traffic inpatient deaths"],
                :dataElement=>"qfUTHllajeH",
                :categoryOptionCombo=>coc_id}

                            
   }

      x = Date.today.strftime("%Y-%m-%d")
    
       header="<dataValueSet dataSet=\"sxx8zLWZMo4\" completeDate=\"#{x}\" period=\"#{params[:period]}\" orgUnit=\"bdIXczUKGHo\">\n"
       c = header
      

      @hmis_report.each do |key, data|
      c += "<dataValue dataElement=\""+data[:dataElement].to_s + "\" categoryOptionCombo=\""+data[:categoryOptionCombo].to_s + "\" value=\""+data[:value].to_s + "\" />\n"
      end
         
      c+="</dataValueSet>"
      `touch dhis2/#{filename}.xml`
      f = File.open("dhis2/#{filename}.xml", 'w')
      f.print c
      f.close()
        sending_to_dhis(params[:id],report_type,filename)
    end

    render :template => 'report/district_form/'

  end

  def site_form
       @district=Report.fetch_district(params[:district],params[:report_type].downcase)
       @report_type = params[:report_type]
    if @district =="INVALID"
      flash[:notice] = "#{params[:district].titleize} District Does Not Have Any Current #{@report_type.upcase} Reports"
      render "district_form"
    end
      @facilities=Report.facility_list(params[:district],params[:report_type].downcase)

  end
  def generate_facility_report
    report_month = params[:facility_details]["year"] + params[:facility_details]["month"] + "01"
     
    @site_name = params[:facility_details]["site_name"]
    site_name = @site_name.to_s
    @period = params[:facility_details]["year"] + params[:facility_details]["month"]
    #used when resetting status code
    report_month =  report_month.to_s
    @report_type = params[:report_type].to_s
    # show feedback if report not found
    key = @report_type.downcase.split(' ').join('_') + '_' + site_name.split(' ').join('_') + '_' + report_month
    @key =   key.to_s
    #@completeDate = Date.today()
    conditions = Report.fetch_conditions(key)
    @report_month = report_month
    if conditions==" "
      flash[:notice] = "No current report matches your selected month and year!"
      render "site_form"
    end
    unless conditions.blank?
      conditions.each do |data|
        @report_conditions= {}
        @site_code = data["site_code"]
        @report_conditions["site_code"] = data["site_code"]
        @id = data["_id"]
        @site_name = data["site_name"]
        @report_conditions["site_name"] = data["site_name"]
        @report_month = data["report_month"]
        @report_conditions["report_month"] = data["report_month"]
        @report_name =data["report_type"]
        @report_conditions["report_type"] = data["report_type"]
        @site_district =data["site_district"]
        @report_conditions["site_district"] = data["site_district"]
        condition = eval(data["conditions"])
        condition.each do |key,value|
          @report_conditions[key] = value
        end
      end

      if @report_name=="IDSR Monthly".downcase

        render :template => 'report/dhis_idsr_monthly'

      elsif @report_name == "HMIS-15".downcase
        render :template => 'report/dhis_hmis_15'
      end

    end
    if @report_conditions.blank?
      flash[:notice] = "No current report matches your selected month or year!"
      render "district_form"
    end
  end


  def sending_to_dhis(id,report_type,filename)
    #sending to dhis2
    #sending_to_dhis2 = `curl -d @dhis2/#{filename}.xml "http://41.87.6.124/migration/api/dataValueSets" -H "Content-Type:application/xml" -u taonampando:Training1 -v`
   sending_to_dhis2 = `curl -d @dhis2/#{filename}.xml "http://192.168.18.239:8080/api/dataValueSets" -H "Content-Type:application/xml" -u admin:Matthew2017 -v`
    if !sending_to_dhis2.empty?
      result = {}
      res = Report.reset_status_code_to_zero(id)
      params[:id] = report_type
      #check if couchdb is updated
      unless res.empty?
        result["key"] = JSON.parse(res)
        if !result["key"]["ok"].blank?
          flash[:notice] = "Data set report is sent to DHIS2 successfully"
        else
          flash[:error] = "Data sent to DHIS2 but admin portal serveris not updated"
        end
      end
     else
      flash[:error] = "There was an error while sending the report to DHIS2. Check authentication issues"
     end
  end
end
