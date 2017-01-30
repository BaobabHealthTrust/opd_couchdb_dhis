require 'couchrest_model'
class IdsrReport < CouchRest::Model::Base

  property :conditions, String
  property  :in_patient_cases, String
  property  :in_patient_deaths, String
  property  :out_patient_cases, String
  property  :report_month, String
  property  :site_code, String
  property :site_name, String
  property :site_region, String
  property :site_district, String
  property  :updated_on, String
  property  :report_type, String





  design do

   view :by_site_district,
   :map => "function(doc)
   {

    if((doc['site_district'] !=' ') && (doc['site_district'] != null ) && (doc['status_code']=='1')){
      emit(doc['site_district'])
    } 

    }"

    view :by_site_name_and_report_month,
    :map => "function(doc) { 
    if(doc['site_name'] !='' && doc['report_month'] != '' && doc['status_code']=='1'){
      emit(doc['site_name'].trim().split(' ').join('_') + '_' + doc['report_month'].substr(0, 8))
    }
    }"


  
end



def self.fetch_conditions(report_month, site_name)
 report_month =  report_month.to_s
 site_name =  site_name

        # show feedback if report not found

        key = site_name.split(' ').join('_') + '_' + report_month


        data = IdsrReport.by_site_name_and_report_month.key(key).each

             #raise @report_conditions.inspec
             
end


           def self.fetch_district(site_district)



            @districts =  IdsrReport.by_site_district.keys


            actual_district = "INVALID"

            @districts.each do |dist|



             site_district = site_district

             if (dist == site_district)
              actual_district = site_district
            end

          end

          return actual_district.upcase

        end

        def self.facility_list(site_district)

          district = site_district


          data = IdsrReport.by_site_district.key(site_district).each

          details = []
          data.each do |data|
            x = data["site_name"]
            y = data["status_code"]
            if y == "1"
              details << x
            end

          end
          details =  details.uniq
          return details
        end



      end






