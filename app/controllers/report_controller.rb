class ReportController < ApplicationController
 
 #attr_accessor :period

	def idsr_report
	end
	def district_form
	end
	def update_to_dhis2
    


	if params[:idsr_mothly]

	idsr_mothly = params[:idsr_mothly]

   
	year_month = params[:month]

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

      flash[:notice] = "Data set report is sent to DHIS2 successfully" 
      render :template => 'report/district_form'
    
      #result = `curl -d @dhis2/datavalueset.xml "http://localhost:8080/api/dataValueSets" -H "Content-Type:application/xml" -u admin:district -v`
           # puts result
      #result = result.scan(/<status>(.*)<\/status>/).to_s
   #send hmi-15 report values

         elsif params[:hmis_report]

          hmis_report = params[:hmis_report]

        #  raise hmis_report.inspect
          
          year_month = params[:month]

         


         
 
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
		if conditions==" "
			flash[:notice] = "No current report matches your selected month and year!"
			render "site_form"
		end


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
            
         if @report_name=="IDSR Monthly"
                          
           render :template => 'report/dhis_idsr_monthly'

         elsif @report_name == "HMIS-15"
          render :template => 'report/dhis_hmis_15'
        end


			end
		end


		if @report_conditions.blank?
			flash[:notice] = "No current report matches your selected month or year!"
			render "district_form"
		end
	end
end
