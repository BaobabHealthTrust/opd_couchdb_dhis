class ReportController < ApplicationController
	def idsr_report
	end
	def district_form
	end
	def update_to_dhis2
      #report_month = params[:@facility_details]["year"] + params[:@facility_details]["month"] + "01"
       
		
	idsr_mothly = params[:idsr_mothly]

  
  
	year_month = params[:month]
	
	@idsr_mothly = {}
	@report = "IDSR Monthly"
    if @report == "IDSR Monthly"
      @report_name = @report
      
    coc_death = "urZWwWW5FU9"
    coc_out_patient_cases = "qqg5qsADtHX"
    coc_inpatient_deaths = "dAObMfCg8zn"
    coc_inpatient_cases = "q4r3uBRqJaf"
    coc_in_patient_cases = "RxoQpVgSQq6"
    coc_in_patient_deaths = "OFdC9ug92YH"
    coc_default = "fiC1VMp5zq6"
    
    
      @idsr_mothly = {
      "IDSR Male Urethral Discharge".upcase=>
      {
          "Out-patient cases"=>
          {
            :dataElement=>"DTZU9thFC85",
            :value=>idsr_mothly["IDSR Male urethral discharge"]["Out-patient cases"],
            :categoryOptionCombo=>coc_out_patient_cases
           }
      },
     

       "IDSR Viral Hemorrhagic Fever".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"Pj67s6ApYb2",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"Pj67s6ApYb2",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Pj67s6ApYb2",
          :value=> idsr_mothly["IDSR Viral Hemorrhagic Fever"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      }, 


      "IDSR Meningitis".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"CRArwtJppcy",
          :value=> idsr_mothly["IDSR Meningitis"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"CRArwtJppcy",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"CRArwtJppcy",
          :value=> idsr_mothly["IDSR Meningitis"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
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
          :dataElement=>"p494BDUSEUz",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"p494BDUSEUz",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"p494BDUSEUz",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        },
      },

      "IDSR Uncomplicated Malaria <5y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"WDQ9DoNW1gI",
          :value=> idsr_mothly["IDSR Uncomplicated malaria  less than 5y lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        },

      "IDSR Male Non-Vesicular Genital Ulcer".upcase =>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"gMQn2Hgv3ud",
          :value=> idsr_mothly["IDSR Male non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },

      "IDSR Malaria < 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"wsOnpRZtp3t",
          :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"wsOnpRZtp3t",
          :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },





      "IDSR New AIDS Cases".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"fYpGGzLiVbe",
          :value=> idsr_mothly["IDSR New AIDS cases"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"fYpGGzLiVbe",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"fYpGGzLiVbe",
          :value=> idsr_mothly["IDSR New AIDS cases"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Measles".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"BnbLe0vUHIM",
          :value=>idsr_mothly["IDSR Measles"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"BnbLe0vUHIM",
          :value=> idsr_mothly["IDSR Measles"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"BnbLe0vUHIM",
          :value=> idsr_mothly["IDSR Measles"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },
   

      "IDSR Neonatal Tetanus".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"YXnx3FepHlE",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"YXnx3FepHlE",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"YXnx3FepHlE",
          :value=> idsr_mothly["IDSR Neonatal tetanus"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Diarrhoea With Dehydration".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"GERSeo2EiaP",
          :value=>idsr_mothly["IDSR Diarrhoea with dehydration"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"GERSeo2EiaP",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"GERSeo2EiaP",
          :value=> idsr_mothly["IDSR Diarrhoea with dehydration"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Malaria >= 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"sUmQaUBzNy3",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
      },

      "IDSR Malaria With Severe Anemia <5years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"spfnMEG1wl0",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"spfnMEG1wl0",
          :value=> idsr_mothly["IDSR Malaria with severe anemia less than 5years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Female Non-Vesicular Genital Ulcer".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"TxPvgF64DZB",
          :value=> idsr_mothly["IDSR Female non-vesicular genital ulcer"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR AFP".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"aZmJTJpj4Xa",
          :value=> idsr_mothly["IDSR AFP"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"aZmJTJpj4Xa",
          :value=> idsr_mothly["IDSR AFP"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"aZmJTJpj4Xa",
          :value=> idsr_mothly["IDSR AFP"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Malaria In Pregnant Women Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"cLEvPveMGfq",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
      },

      "IDSR Schistosomiasis Urinary".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"wA7sDe6Jshb",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"wA7sDe6Jshb",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"wA7sDe6Jshb",
          :value=> idsr_mothly["IDSR Schistosomiasis urinary"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Cholera".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"xRmq6560gDJ",
          :value=> idsr_mothly["IDSR Cholera"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"xRmq6560gDJ",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"xRmq6560gDJ",
          :value=> idsr_mothly["IDSR Cholera"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },

      "IDSR Uncomplicated Malaria 5+Y, Lab-Confirmed".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"tvp6Blay8Yc",
          :value=> idsr_mothly["IDSR Uncomplicated malaria 5 plus y, lab-confirmed"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
        },

      "IDSR Malaria >= 5 Years Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"hHXHbQQVm4O",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["Out-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"hHXHbQQVm4O",
          :value=> idsr_mothly["IDSR Malaria greater or equal 5 years severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
        },

      "IDSR Malaria < 5 Years Uncomplicated".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"DpRXVfxBy1m",
          :value=>idsr_mothly["IDSR Malaria less than 5 Years uncomplicated"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        }
      },
      
      "IDSR Plague".upcase=>
      {         
        "Out-patient cases"=>
        {
          :dataElement=>"Zs6Bjgfyrct",
          :value=>idsr_mothly["IDSR Plague"]["Out-patient cases"],
          :categoryOptionCombo=>coc_out_patient_cases
        },
        "In-patient cases"=>
        {
          :dataElement=>"Zs6Bjgfyrct",
          :value=>idsr_mothly["IDSR Plague"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"Zs6Bjgfyrct",
          :value=>idsr_mothly["IDSR Plague"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },
      
      "IDSR Malaria In Pregnant Women Severe".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"HiFlLTvDG0l",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"HiFlLTvDG0l",
          :value=>idsr_mothly["IDSR Malaria in Pregnant women severe"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
        },
      
      "IDSR Diarrhoea With Blood".upcase=>
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
      
      "IDSR Severe Pneumonia <5 Years".upcase=>
      {
        "In-patient cases"=>
        {
          :dataElement=>"tLk5ymzkutq",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"tLk5ymzkutq",
          :value=>idsr_mothly["IDSR Severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
      },
      
      "IDSR Diarrhoea With Bloody".upcase=>
      {
        "Out-patient cases"=>
        {
          :dataElement=>"wDCBO0oRE18",
          :value=>idsr_mothly["IDSR Diarrhoea with blood"]["Out-patient cases"],
          :categoryOptionCombo=>coc_default
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
          :dataElement=>"kLWOyuVuvoW",
          :value=> idsr_mothly["IDSR Very severe pneumonia  less than 5 years"]["In-patient cases"],
          :categoryOptionCombo=>coc_in_patient_cases
        },
        "In-patient deaths"=>
        {
          :dataElement=>"kLWOyuVuvoW",
          :value=>idsr_mothly["IDSR Very severe pneumonia  less than 5 years"]["In-patient deaths"],
          :categoryOptionCombo=>coc_in_patient_deaths
        }
       }                                    
      }
 	 end

 	
    header="<dataValueSet dataSet=\"wmO5qvufx5b\" completeDate=\"2014-03-25\" period=\"201403\" orgUnit=\"rERxz2TtA3i\">\n"
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
      IdsrReport.reset_status_code_to_zero(year_month)

      flash[:notice] = "Data set is sent to DHIS2 successfully" 
      render :template => 'report/district_form'
    

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
		#@completeDate = Date.today()



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
			end
		end


		if @report_conditions.blank?
			flash[:notice] = "No current report matches your selected month or year!"
			render "district_form"
		end
	end
end
