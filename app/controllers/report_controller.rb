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
    filename = params[:report_type].titleize.delete(" ")
    #raise filename.inspect
    #raise year_month.inspect


    if params[:idsr_mothly]
      @idsr_mothly = {}
      idsr_mothly = params[:idsr_mothly]
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
=begin
        "IDSR Viral Hemorrhagic Fever".upcase=>
        {
          "Out-patient cases"=>
          {
            :dataElement=>"NHfpTHwyx7T",
            :value=> idsr_mothly["IDSR Viral hemorrhagic fever"]["Out-patient cases"],
            :categoryOptionCombo=>coc_out_patient
          },
          "In-patient cases"=>
          {
            :dataElement=>"NHfpTHwyx7T",
            :value=> idsr_mothly["IDSR Viral hemorrhagic fever"]["In-patient cases"],
            :categoryOptionCombo=>coc_in_patient
          },
          "In-patient deaths"=>
          {
            :dataElement=>"NHfpTHwyx7T",
            :value=> idsr_mothly["IDSR Viral hemorrhagic fever"]["In-patient deaths"],
            :categoryOptionCombo=>coc_deaths
          }
        },
=end

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
            :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient cases"],
            :categoryOptionCombo=>coc_less_than_5_in_patient_cases
          },
          "In-patient deaths"=>
          {
            :dataElement=>"Rxlf94C3PYS",
            :value=> idsr_mothly["IDSR Malaria less than 5 Years"]["In-patient deaths"],
            :categoryOptionCombo=>coc_less_than_5_in_patient_deaths
          }
        },

=begin
        "IDSR New AIDS Cases".upcase=>
        {
          "Out-patient cases"=>
          {
            :dataElement=>"tu9zdEgA5Bg",
            :value=> idsr_mothly["IDSR New aids cases"]["Out-patient cases"],
            :categoryOptionCombo=>coc_out_patient_cases
          },
          "In-patient cases"=>
          {
            :dataElement=>"tu9zdEgA5Bg",
            :value=> idsr_mothly["IDSR New aids cases"]["In-patient cases"],
            :categoryOptionCombo=>coc_in_patient_cases
          },
          "In-patient deaths"=>
          {
            :dataElement=>"tu9zdEgA5Bg",
            :value=> idsr_mothly["IDSR New aids cases"]["In-patient deaths"],
            :categoryOptionCombo=>coc_in_patient_deaths
          }
        },
=end
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
            :value=> idsr_mothly["IDSR Very severe pneumonia less than 5 years"]["In-patient cases"],
            :categoryOptionCombo=>coc_in_patient_cases
          },
          "In-patient deaths"=>
          {
            :dataElement=>"B0xPdX3XCTJ",
            :value=>idsr_mothly["IDSR Very severe pneumonia less than 5 years"]["In-patient deaths"],
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
    elsif params[:hmis_report]
      #hmis_report hash goes here

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

    @report_month = report_month

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
    sending_to_dhis2 = `curl -d @dhis2/#{filename}.xml "http://192.168.18.229:8080/api/dataValueSets" -H "Content-Type:application/xml" -u admin:Matthew2017 -v`
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
