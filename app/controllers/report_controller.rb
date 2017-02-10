class ReportController < ApplicationController
 
 #attr_accessor :period

	def idsr_report
	end
	def district_form
	end
	def update_to_dhis2

    year_month = params[:month]
 
	if params[:idsr_mothly]

	idsr_mothly = params[:idsr_mothly]

  	@idsr_mothly = {}
        
    coc_deaths = "Ioxpe95J36n"
    coc_in_patient = "ScYPAbN18SX"
    coc_out_patient = "msVec8ouKlg"

    coc_in_patient_deaths = "SrxErIVXnG8"
    coc_in_patient_cases  = "tYfa4mMXDyH"
    coc_out_patient_cases = "EuPEI6UeEjC"

    
    coc_outpatient_5yearsplus_cases = "IXrckr67swf"
    coc_inpatient__5yearsplus_deaths = "X6zuKBLx0my"
    coc_inpatient_5yearsplus_cases = "iZ65zR7GrNq"
  
    
    coc_outpatient_5yearsless_cases = "rDjtfPP342K"
    coc_inpatient__5yearsless_deaths = "DOkfWUJPXnV"
    coc_inpatient_5yearsless_cases = "Emuz6WUzaqV"

   
    
    
    
      @idsr_mothly = {
      "IDSR Male Urethral Discharge".upcase=>
      {
          "Out-patient cases"=>
          {
            :dataElement=>"jF8kyeoQP4k",
            :value=>idsr_mothly["IDSR Male urethral discharge"]["Out-patient cases"],
            :categoryOptionCombo=>coc_out_patient_cases
           }
      },
     

       "IDSR Viral Hemorrhagic Fever".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"Vnu4A38bA9T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"Vnu4A38bA9T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Vnu4A38bA9T",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      }, 


      "IDSR Meningitis".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"KaiKkzeA7at",
          :value=> idsr_mothly["IDSR Meningitis"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"KaiKkzeA7at",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"KaiKkzeA7at",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Pneumonia <5 Years".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"jPH2HL1zlTU",
          :value=> idsr_mothly["IDSR Pneumonia less than 5 years"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
      },

      "IDSR Schistosomiasis Intestinal".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"BWYEPSiYp5o",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"BWYEPSiYp5o",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"BWYEPSiYp5o",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        },
      },

      "IDSR Uncomplicated Malaria <5y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"BLobfEqqY99",
          :value=> idsr_mothly["IDSR Uncomplicated malaria  less than 5y lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        },

      "IDSR Male Non-Vesicular Genital Ulcer".upcase =>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"qHgpLwwbHQe",
          :value=> idsr_mothly["IDSR Male non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },

      "IDSR Malaria < 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"AfQuxVXUPT1",
          :value=>idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient cases "],
          :categoryOptionCombo=>coc_inpatient_5yearsless_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"AfQuxVXUPT1",
          :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient deaths "],
          :categoryOptionCombo=>coc_inpatient__5yearsless_deaths
        }
      },





      "IDSR New AIDS Cases".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"em0K1ZZd9Au",
          :value=> idsr_mothly["IDSR New AIDS cases"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"em0K1ZZd9Au",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"em0K1ZZd9Au",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Measles".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"BYyTqbsle9T",
          :value=>idsr_mothly["IDSR Measles"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"BYyTqbsle9T",
          :value=> idsr_mothly["IDSR Measles"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"BYyTqbsle9T",
          :value=> idsr_mothly["IDSR Measles"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },
   

      "IDSR Neonatal Tetanus".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"yX1s05rvAB3",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"yX1s05rvAB3",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"yX1s05rvAB3",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Diarrhoea With Dehydration".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"yJHpdKJgtOa",
          :value=>idsr_mothly["IDSR Diarrhoea with dehydration"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"yJHpdKJgtOa",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"yJHpdKJgtOa",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Malaria >= 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"fCfibi1rp7C",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_outpatient_5yearsplus_cases
        }
      },

      "IDSR Malaria With Severe Anemia <5years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"woNRU3er8do",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"woNRU3er8do",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Female Non-Vesicular Genital Ulcer".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"VoU1wEDgPAj",
          :value=> idsr_mothly["IDSR Female non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR AFP".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"AH6OETGBkzF",
          :value=> idsr_mothly["IDSR AFP"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"AH6OETGBkzF",
          :value=> idsr_mothly["IDSR AFP"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"AH6OETGBkzF",
          :value=> idsr_mothly["IDSR AFP"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Malaria In Pregnant Women Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"ii0oVHyx9UW",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },

      "IDSR Schistosomiasis Urinary".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"fmI06FEkbfw",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"fmI06FEkbfw",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"fmI06FEkbfw",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Cholera".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"dFPb4mn06KD",
          :value=> idsr_mothly["IDSR Cholera"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"dFPb4mn06KD",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"dFPb4mn06KD",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },

      "IDSR Uncomplicated Malaria 5+Y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"jrwMJKJeElY",
          :value=> idsr_mothly["IDSR Uncomplicated malaria 5 plus y, lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR Malaria >= 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"AfQuxVXUPT1",
          :value=>idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["In-patient cases"],
          :categoryOptionCombo=>coc_inpatient_5yearsplus_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"AfQuxVXUPT1",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_inpatient__5yearsplus_deaths
        }
        },

      "IDSR Malaria < 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"fCfibi1rp7C",
          :value=>idsr_mothly["IDSR Malaria less than 5 Years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_outpatient_5yearsless_cases
        }
      },
      
      "IDSR Plague".upcase=>
      {         
        "Out-patient cases"=>
        {
          :dataElement=>"Xha05A9FM7q",
          :value=>idsr_mothly["IDSR Plague"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"Xha05A9FM7q",
          :value=>idsr_mothly["IDSR Plague"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Xha05A9FM7q",
          :value=>idsr_mothly["IDSR Plague"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
      },
      
      "IDSR Malaria In Pregnant Women Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"VC6chVHskKH",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"VC6chVHskKH",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
        },
      
      "IDSR Diarrhoea With Blood".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"VWfMUSzzHuK",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient
        },
        "In-patient cases"=>
        {
          :dataElement=>"VWfMUSzzHuK",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient
        },
        "In-patient deaths"=>
        {
          :dataElement=>"VWfMUSzzHuK",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient deaths"],
          :categoryOptionCombo=>coc_deaths
        }
        },
      
      "IDSR Severe Pneumonia <5 Years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"PkrtOx1olaV",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"PkrtOx1olaV",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },
      
      "IDSR Diarrhoea With Bloody".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"XVNCLVde2Eu",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"XVNCLVde2Eu",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"XVNCLVde2Eu",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      
      "IDSR Very Severe Pneumonia <5 Years".upcase=>
      {

        "In-patient cases"=>
        {
          :dataElement=>"bSnNRPIZy8k",
          :value=>idsr_mothly["IDSR Very severe pneumonia less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"bSnNRPIZy8k",
          :value=>idsr_mothly["IDSR Very severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
       }                                    
      }
    
 	  x = Date.today.strftime("%Y-%m-%d")
    
    header="<dataValueSet dataSet=\"u6Hzce4ljhO\" completeDate=\"#{x}\" period=\"#{params[:period]}\" orgUnit=\"rERxz2TtA3i\">\n"
    c = header
   
       

      @idsr_mothly.each do |key, data|

        data.each do |k,d|
          c += "  <dataValue dataElement=\""+d[:dataElement].to_s + "\" categoryOptionCombo=\""+d[:categoryOptionCombo].to_s + "\" value=\""+d[:value].to_s + "\" />\n"
        end
      end
      
      c+="</dataValueSet>"
      `touch dhis2/datavalueset.xml`
      f = File.open("dhis2/datavalueset.xml", 'w')
      f.print c
      f.close()
      #condition for update failure or success
      #IdsrReport.reset_status_code_to_zero(year_month)

     
    
      #result = `curl -d @dhis2/datavalueset.xml "http://localhost:8080/api/dataValueSets" -H "Content-Type:application/xml" -u admin:district -v`
      # puts result
      #result = result.scan(/<status>(.*)<\/status>/).to_s
      #send hmi-15 report values

         elsif params[:hmis_report]


         
          hmis_report = params[:hmis_report]

          
          year_month = params[:month]

         @hmis_report = {}

         coc_id = "yOGDVWUaf8p"
       
          @hmis_report = {  


         "HMIS pregnant women starting antenatal care first trimester".upcase=>
               {:value=>hmis_report["HMIS pregnant women starting antenatal care first trimester"],
                :dataElement=>"XnbM6j1bC2H",
                :categoryOptionCombo=>coc_id},

   
          "HMIS total number of new antenatal attendees".upcase=>
               {:value=>hmis_report["HMIS total number of new antenatal attendees"],
                :dataElement=>"zCxuvC0LlWk",
                :categoryOptionCombo=>coc_id},


          "HMIS total antenatal visits".upcase=>{:value=>hmis_report["HMIS total antenatal visits"],
                :dataElement=>"F6aLaSjDG0s",
                :categoryOptionCombo=>coc_id},


          "HMIS deliveries attended by skilled health personnel".upcase=>{
                :value=>hmis_report["HMIS deliveries attended by skilled health personnel"],
                :dataElement=>"vfDP0bNDbpF",
                :categoryOptionCombo=>coc_id},


         # "HMIS women obstetric complications treated".upcase=>{:value=>hmis_report["HMIS women obstetric complications treated"],
         #       :dataElement=>"",
         #       :categoryOptionCombo=> coc_id},


          "HMIS caesarean sections".upcase=>{:value=>hmis_report["HMIS caesarean sections"],
                :dataElement=>"mJO4OG1EZI8",
                :categoryOptionCombo=>coc_id},


          "HMIS live births".upcase=>{:value=>hmis_report["HMIS live births"],
                :dataElement=>"fgUX8BS3FpK",
                :categoryOptionCombo=>coc_id},


          "HMIS babies born with weight less than 2500g".upcase=>{:value=>hmis_report["HMIS babies born with weight less than 2500g"],
                :dataElement=>"hVEdzaK1yXb",
                :categoryOptionCombo=>coc_id},


          "HMIS abortion complications treated".upcase=>{:value=>hmis_report["HMIS abortion complications treated"],
                :dataElement=>"bFa3XXu8rMd",
                :categoryOptionCombo=>coc_id},


          "HMIS eclampsia cases treated".upcase=>{:value=>hmis_report["HMIS eclampsia cases treated"],
                :dataElement=>"Dwn25oevo2R",
                :categoryOptionCombo=>coc_id},


          "HMIS postpartum haemorrhage treated".upcase=>{:value=>hmis_report["HMIS postpartum haemorrhage treated"],
                :dataElement=>"uzV2XGQvNdj",
                :categoryOptionCombo=>coc_id},


          "HMIS sepsis cases treated".upcase=>{:value=>hmis_report["HMIS sepsis cases treated"],
                :dataElement=>"KDPtG3C2cGL",
                :categoryOptionCombo=>coc_id},


          "HMIS pregnant women treated for severe anaemia".upcase=>{:value=>hmis_report["HMIS pregnant women treated for severe anaemia"],
                :dataElement=>"pp1cnNaGPBK",
                :categoryOptionCombo=>coc_id},


          "HMIS newborn treated for complications".upcase=>{:value=>hmis_report["HMIS newborn treated for complications"],
                :dataElement=>"KBNboqBqOir",
                :categoryOptionCombo=>coc_id},


          "HMIS  postpartum care within 2 weeks of delivery".upcase=>{:value=>hmis_report["HMIS postpartum care within 2 weeks of delivery"],
                :dataElement=>"YAAmrY2RPbZ",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving 3 months supply of condoms".upcase=>{:value=>hmis_report["HMIS persons receiving 3 months supply of condoms"],
                :dataElement=>"dCWWs3MCFay",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving 3 months oral pills".upcase=>{:value=>hmis_report["HMIS persons receiving 3 months oral pills"],
                :dataElement=>"jqNYKJWhAz2",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving depo-provera".upcase=>{:value=>hmis_report["HMIS persons receiving depo-provera"],
                :dataElement=>"hWSLlExfBn7",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving norplant".upcase=>{:value=>hmis_report["HMIS persons receiving norplant"],
                :dataElement=>"P5G9GnQWumV",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving iucd".upcase=>{:value=>hmis_report["HMIS persons receiving iucd"],
                :dataElement=>"ECLsiUy1Vi1",
                :categoryOptionCombo=>coc_id},


          "HMIS persons receiving sterilisation of fp".upcase=>{:value=>hmis_report["HMIS persons receiving sterilisation of fp"],
                :dataElement=>"n1X8lAKnKQS",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 fully immunised children".upcase=>{:value=>hmis_report["HMIS under 1 fully immunised children"],
                :dataElement=>"LLwB65dkx4x",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 bcg children".upcase=>{:value=>hmis_report["HMIS under 1 bcg children"],
                :dataElement=>"c4PycW8V96r",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given pentavalent".upcase=>{:value=>hmis_report["HMIS under 1 children given pentavalent"],
                :dataElement=>"fOl5vfb0O4D",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given polio".upcase=>
             {
             :value=>hmis_report["HMIS under 1 children given polio"],
                :dataElement=>"NOBdrN6M5AD",
                :categoryOptionCombo=>coc_id},


          "HMIS under 1 children given measles first doses".upcase=>{:value=>hmis_report["HMIS under 1 children given measles first doses"],
                :dataElement=>"UTOvmomOm7l",
                :categoryOptionCombo=>coc_id},


          "HMIS vitmin A doses given to 6-59m children".upcase=>{:value=>hmis_report["HMIS vitmin A doses given to 6-59m children"],
                :dataElement=>"vsPoTiCboGJ",
                :categoryOptionCombo=>coc_id},


          "HMIS under weight children in under five clinic".upcase=>{:value=>hmis_report["HMIS under weight children in under five clinic"],
                :dataElement=>"ppl6yQrlme3",
                :categoryOptionCombo=>coc_id},


          "HMIS 15-49 years receiving testing and serostatus".upcase=>{:value=>hmis_report["HMIS 15-49 years receiving testing and serostatus"],
                :dataElement=>"bcDTj5odXAg",
                :categoryOptionCombo=>coc_id},


          "HMIS Number of 15 - 49 age group tested HIV positive".upcase=>{:value=>hmis_report["HMIS Number of 15 - 49 age group tested HIV positive"],
                :dataElement=>"o9TOnIDV0kE",
                :categoryOptionCombo=>coc_id},


          #{}"HMIS ".upcase=>{:value=>hmis_report["HMIS "],
          #      :dataElement=>"",
           #     :categoryOptionCombo=>coc_id},

#

          "HMIS hiv positive persons receiving ARV treatment".upcase=>{:value=>hmis_report["HMIS hiv positive persons receiving ARV treatment"],
                :dataElement=>"kbgfkY4CYSz",
                :categoryOptionCombo=>coc_id},


          "HMIS pregnant women tested HIV positive".upcase=>{:value=>hmis_report["HMIS pregnant women tested HIV positive"],
                :dataElement=>"lUi961tGUqD",
                :categoryOptionCombo=>coc_id},


         # "HMIS HIV positive women treated for PMTCT".upcase=>{:value=>hmis_report["HMIS HIV positive women treated for PMTCT"],
         #       :dataElement=>"",
         #       :categoryOptionCombo=>coc_id},


          "HMIS children attending under - five clinic".upcase=>{:value=>hmis_report["HMIS children attending under - five clinic"],
                :dataElement=>"EhNu0hEkjp2",
                :categoryOptionCombo=>coc_id},

          "HMIS OPD attendance".upcase=>{:value=>hmis_report["HMIS OPD attendance"],
                :dataElement=>"fKLfC1yJWKm",
                :categoryOptionCombo=>coc_id},


          "HMIS confirmed TB new cases".upcase=>{:value=>hmis_report["HMIS confirmed TB new cases"],
                :dataElement=>"wcOTAuHURHo",
                :categoryOptionCombo=>coc_id},


         # "HMIS smear negative and extra-pulmonary cases completed treatment".upcase=>{:value=>hmis_report["HMIS smear negative and extra-pulmonary cases completed treatment"],
         #       :dataElement=>"",
         #         :categoryOptionCombo=>coc_id},


          "HMIS new smear sputum positive cases".upcase=>{:value=>hmis_report["HMIS new smear sputum positive cases"],
                :dataElement=>"VXCBkp9reRj",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of SP for more than a week at a time".upcase=>{:value=>hmis_report["HMIS stock outs of SP for more than a week at a time"],
                :dataElement=>"Q1yXJbHV9qw",
                :categoryOptionCombo=>coc_id},


          "HMIS any stock outs of ORS for more than a week at a time".upcase=>{:value=>hmis_report["HMIS any stock outs of ORS for more than a week at a time"],
                :dataElement=>"xOxbb70qEQs",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of contrimaxazole for more than a week at a time".upcase=>{:value=>hmis_report["HMIS stock outs of contrimaxazole for more than a week at a time"],
                :dataElement=>"zBOJriIB2yF",
                :categoryOptionCombo=>coc_id},


          "HMIS stock outs of SP , ORS and Contrimaxazole for more than a week".upcase=>{:value=>hmis_report["HMIS stock outs of SP , ORS and Contrimaxazole for more than a week"],
                :dataElement=>"lD3MbR42R8T",
                :categoryOptionCombo=>coc_id},


          "HMIS functioning ambulances".upcase=>{:value=>hmis_report["HMIS functioning ambulances"],
                :dataElement=>"lWS3HVfkIOL",
                :categoryOptionCombo=>coc_id},


          "HMIS insecticide treated nets distributed".upcase=>{:value=>hmis_report["HMIS insecticide treated nets distributed"],
                :dataElement=>"axiEC9qAVyi",
                :categoryOptionCombo=>coc_id},


          "HMIS households with access to safe drinking water".upcase=>{:value=>hmis_report["HMIS households with access to safe drinking water"],
                :dataElement=>"t4UkS64pUev",
                :categoryOptionCombo=>coc_id},


          "HMIS households atleast a sanplat latrine".upcase=>{:value=>hmis_report["HMIS households atleast a sanplat latrine"],
                :dataElement=>"ksePvWeWXGL",
                :categoryOptionCombo=>coc_id},


          "HMIS HBC patents follow-up and provided treatment".upcase=>{:value=>hmis_report["HMIS HBC patents follow-up and provided treatment"],
                :dataElement=>"TKjRozGDAaX",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning water supply systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning water supply systems"],
                :dataElement=>"hHqfasPh5Nt",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning Communication systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning Communication systems"],
                :dataElement=>"oxxPdDAtKTp",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning Electricity".upcase=>{:value=>hmis_report["HMIS Do you have functioning Electricity"],
                :dataElement=>"m9VNxcRcU3Y",
                :categoryOptionCombo=>coc_id},


          "HMIS Do you have functioning water supply,Electricity and Communication systems".upcase=>{:value=>hmis_report["HMIS Do you have functioning water supply,Electricity and Communication systems"],
                :dataElement=>"KdXJdl8KzFt",
                :categoryOptionCombo=>coc_id},


          "HMIS functional health center committee".upcase=>{:value=>hmis_report["HMIS functional health center committee"],
                :dataElement=>"L2N9YNoKafj",
                :categoryOptionCombo=>coc_id},


          "HMIS Were you supervised by DHMT ".upcase=>{:value=>hmis_report["HMIS Were you supervised by DHMT"],
                :dataElement=>"AfB41umPfMc",
                :categoryOptionCombo=>coc_id},


            #getting values from database for hmis-15 vlues
           "HMIS syphillis in pregnancy".upcase=>
               {:value=>hmis_report["HMIS syphillis_in_pregnancy"],
                :dataElement=>"qigcDwZoD7J",
                :categoryOptionCombo=>coc_id},

          "HMIS opportunistic infection".upcase=>{:value=>hmis_report["HMIS opportunistic_infection"],
                :dataElement=>"YbG1fsaGY1u",
                :categoryOptionCombo=>coc_id},

          "HMIS acute respiratory infection under 5".upcase=>{:value=>hmis_report["HMIS acute_respiratory_infection_under_5"],
                :dataElement=>"QCLEWl7xWYR",
                :categoryOptionCombo=>coc_id},

          "HMIS diarrhoea non bloody".upcase=>{:value=>hmis_report["HMIS diarrhoea_non_bloody"],
                :dataElement=>"JwXWL5UM6Vl",
                :categoryOptionCombo=>coc_id},

          "HMIS malnutrition less than 5".upcase=>{:value=>hmis_report["HMIS malnutrition_under_5"],
                :dataElement=>"leWlRhI5KvH",
                :categoryOptionCombo=>coc_id},

          "HMIS malaria less than 5".upcase=>{:value=>hmis_report["HMIS malaria_less_than_5"],
                :dataElement=>"V5mkMCN2Rnf",
                :categoryOptionCombo=>coc_id},

          "HMIS malaria more than 5".upcase=>{:value=>hmis_report["HMIS malaria_more_than_5"],
                :dataElement=>"iyc3S6kExgL",
                :categoryOptionCombo=>coc_id},

          "HMIS neonatal tetanus".upcase=>{:value=>hmis_report["HMIS neonatal_tetanus"],
                :dataElement=>"SMqzXdRMgfv",
                :categoryOptionCombo=>coc_id},

          "HMIS cholera".upcase=>{:value=>hmis_report["HMIS cholera"],
                :dataElement=>"UYRQ3x1ss64",
                :categoryOptionCombo=>coc_id},

          "HMIS measles".upcase=>{:value=>hmis_report["HMIS measles"],
                :dataElement=>"TYutwLLhy5g",
                :categoryOptionCombo=>coc_id},

          "HMIS acute flaccid paralysis".upcase=>{:value=>hmis_report["HMIS acute_flaccid_paralysis"],
                :dataElement=>"wjC9CS2xMMy",
                :categoryOptionCombo=>coc_id},

          "HMIS ebola".upcase=>{:value=>hmis_report["HMIS ebola"],
                :dataElement=>"eYrTE5aaApc",
                :categoryOptionCombo=>coc_id},

          "HMIS meningitis".upcase=>{:value=>hmis_report["HMIS meningitis"],
                :dataElement=>"D3ekMm2O0Ec",
                :categoryOptionCombo=>coc_id},

          "HMIS plague".upcase=>{:value=>hmis_report["HMIS plague"],
                :dataElement=>"rsiv0ecbuHx",
                :categoryOptionCombo=>coc_id},
          "HMIS rabies".upcase=>{:value=>hmis_report["HMIS rabies"],
                :dataElement=>"VrtuO55pRJc",
                :categoryOptionCombo=>coc_id},
         # "HMIS sexually transmitted infections".upcase=>{:value=>hmis_report["HMIS sexually_transmitted_infections"],
         #       :dataElement=>"",
          #      :categoryOptionCombo=>coc_id},

          "HMIS hiv confirmed positive".upcase=>{:value=>hmis_report["HMIS hiv_confirmed_positive"],
                :dataElement=>"o9TOnIDV0kE",
                :categoryOptionCombo=>coc_id},
          "HMIS yellow fever".upcase=>{:value=>hmis_report["HMIS yellow_fever"],
                :dataElement=>"jU75zTnl0Yk",
                :categoryOptionCombo=>coc_id},
          "HMIS dysentery".upcase=>{:value=>hmis_report["HMIS dysentery"],
                :dataElement=>"blI4PjMtVuu",
                :categoryOptionCombo=>coc_id},
          "HMIS eye infection".upcase=>{:value=>hmis_report["HMIS eye_infection"],
                :dataElement=>"Ytwsgpr9P5m",
                :categoryOptionCombo=>coc_id},
          "HMIS ear_infection".upcase=>{:value=>hmis_report["HMIS ear_infection"],
                :dataElement=>"K3lRSPmy43H",
                :categoryOptionCombo=>coc_id},
          "HMIS skin infections".upcase=>{:value=>hmis_report["HMIS skin_infections"],
                :dataElement=>"t34m2YuJdNx",
                :categoryOptionCombo=>coc_id},
          "HMIS oral_conditions".upcase=>{:value=>hmis_report["HMIS oral_conditions"],
                :dataElement=>"CnGRrrtzCAC",
                :categoryOptionCombo=>coc_id},

          "HMIS schistosomiasis".upcase=>{:value=>hmis_report["HMIS schistosomiasis"],
                :dataElement=>"DifZMfAxefD",
                :categoryOptionCombo=>coc_id},

          "HMIS leprosy".upcase=>{:value=>hmis_report["HMIS leprosy"],
                :dataElement=>"DifZMfAxefD",
                :categoryOptionCombo=>coc_id},
         # "HMIS injuries and wounds".upcase=>{:value=>hmis_report["HMIS injuries_and_wounds"],
         #       :dataElement=>"",
          #                      :categoryOptionCombo=>coc_id},


          "HMIS road traffic accidents".upcase=>{:value=>hmis_report["HMIS road_traffic_accidents"],
                :dataElement=>"IektVb6V4Mc",
                :categoryOptionCombo=>coc_id},
           
          "HMIS bed capacity".upcase=>{:value=>hmis_report["HMIS bed capacity"],
                :dataElement=>"DALRhOxrNFQ",
                :categoryOptionCombo=>coc_id},

 
          "HMIS number of admissions".upcase=>{:value=>hmis_report["HMIS number of admissions"],
                :dataElement=>"TLSCQkoqyCC",
                :categoryOptionCombo=>coc_id},

 
          "HMIS number of discharges".upcase=>{:value=>hmis_report["HMIS number of discharges"],
                :dataElement=>"Xru3MP0aA5N",
                :categoryOptionCombo=>coc_id},

 
          "HMIS inpatient days".upcase=>{:value=>hmis_report["HMIS inpatient days"],
                :dataElement=>"OwFATJm626j",
                :categoryOptionCombo=>coc_id},


          "HMIS number of inpatient deaths".upcase=>{:value=>hmis_report["HMIS number of inpatient deaths"],
                :dataElement=>"eTe6aXlNPN7",
                :categoryOptionCombo=>coc_id},


          "HMIS number of direct obstetric deaths".upcase=>{:value=>hmis_report["HMIS number of direct obstetric deaths"],
                :dataElement=>"eVZGaPybn5R",
                :categoryOptionCombo=>coc_id},

 
          "HMIS acute respiratory infections inpatient deaths under 5".upcase=>{:value=>hmis_report["HMIS acute respiratory infections inpatient deaths under 5"],
                :dataElement=>"MzUq0HoP36c",
                :categoryOptionCombo=>coc_id},

 
          "HMIS diarrhoea non bloody inpatient deaths under 5 ".upcase=>{:value=>hmis_report["HMIS diarrhoea non bloody inpatient deaths under 5 "],
                :dataElement=>"FTT4cuSxqKn",
                :categoryOptionCombo=>coc_id},

 
          "HMIS malnutrition inpatient deaths under 5".upcase=>{:value=>hmis_report["HMIS malnutrition inpatient deaths under 5"],
                :dataElement=>"sKtDKCvGZoF",
                :categoryOptionCombo=>coc_id},

 
          "HMIS  tb inpatient deaths".upcase=>{:value=>hmis_report["HMIS tb inpatient deaths"],
                :dataElement=>"mlCBsmsGXge",
                :categoryOptionCombo=>coc_id},


          "HMIS malaria inpatients deaths under 5".upcase=>{:value=>hmis_report["HMIS malaria inpatients deaths under 5"],
                :dataElement=>"sKtDKCvGZoF",
                :categoryOptionCombo=>coc_id},


          "HMIS malaria inpatient deaths over 5 ".upcase=>{:value=>hmis_report["HMIS malaria inpatient deaths over 5 "],
                :dataElement=>"w4XiM5Wg3uo",
                :categoryOptionCombo=>coc_id},

 
          "HMIS  cholera inpatient deaths".upcase=>{:value=>hmis_report["HMIS cholera inpatient deaths"],
                :dataElement=>"bDwv8rj3APx",
                :categoryOptionCombo=>coc_id},

 
          "HMIS dysentery inpatient deaths".upcase=>{:value=>hmis_report["HMIS dysentery inpatient deaths"],
                :dataElement=>"N42EXMOXIoE",
                :categoryOptionCombo=>coc_id},


          "HMIS road traffic inpatient deaths".upcase=>{:value=>hmis_report["HMIS road traffic inpatient deaths"],
                :dataElement=>"ZVdJlIRykPA",
                :categoryOptionCombo=>coc_id}                          
   }
              
       x = Date.today.strftime("%Y-%m-%d")
    
       header="<dataValueSet dataSet=\"YmRjo8j3F3M\" completeDate=\"2017-02-10\" period=\"201701\" orgUnit=\"F4aQvPL4c5a\">\n"
       c = header
      

      @hmis_report.each do |key, data|
      c += "<dataValue dataElement=\""+data[:dataElement].to_s + "\" categoryOptionCombo=\""+data[:categoryOptionCombo].to_s + "\" value=\""+data[:value].to_s + "\" />\n"
      end
     
      
      c+="</dataValueSet>"
      `touch dhis2_hmis_15/datavalueset.xml`
      f = File.open("dhis2_hmis_15/datavalueset.xml", 'w')
      f.print c
      f.close()
     

      result = `curl -d @dhis2_hmis_15/datavalueset.xml "http://41.87.6.124/migration/api/dataValueSets" 
      -H "Content-Type:application/xml" -u taonampando:Training1 -v`
            puts result
      result = result.scan(/<status>(.*)<\/status>/).to_s

      flash[:notice] = "Data set report is sent to DHIS2 successfully" 
      render :template => 'report/district_form'
    
         
       end
      

	end

	def site_form(x = params[:district])

		@district=IdsrReport.fetch_district(x)
		if @district =="INVALID"
			flash[:notice] = "#{x.titleize} District Does Not Have Any Current Report"
			render "district_form"
		end

		@facilities=IdsrReport.facility_list(params[:district])


	end

	def generate_facility_report
		report_month = params[:@facility_details]["year"] + params[:@facility_details]["month"] + "01"
		@site_name = params[:@facility_details]["site_name"]
		site_name = @site_name
    @report_month1 = report_month
		
		@period = params[:@facility_details]["year"] + params[:@facility_details]["month"]

		conditions = IdsrReport.fetch_conditions(report_month, site_name)

        @report_month = report_month
		#if conditions==" "
		#	flash[:notice] = "No current report matches your selected month and year!"
		#	render "site_form"
		#end


		unless conditions.blank?
			conditions.each do |data|
				@report_conditions= {}
				@site_code = data["site_code"]
				@report_conditions["site_code"] = data["site_code"]

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

					@report_conditions[key]=value

      
         
				end
            #raise @report_conditions.inspect
            
        # if @report_name=="IDSR Monthly"
                          
       #    redirect_to :template => 'report/dhis_idsr_monthly'

         if @report_name == "HMIS-15"
          render :template => 'report/dhis_hmis_15'
        end


			end
		end


		#if @report_conditions.blank?
		#	flash[:notice] = "No current report matches your selected month or year!"
		#	render "district_form"
	#	end
	end
end
