require 'couchrest_model'
class Report < CouchRest::Model::Base

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
        emit(doc['report_type'].trim().split(' ').join('_') + '_' + doc['site_name'].trim().split(' ').join('_') + '_' + doc['report_month'].substr(0, 8))
      }
      }"
    end

    def self.fetch_conditions(key)
      data = Report.by_site_name_and_report_month.key(key).each
      
      #raise @report_conditions.inspect
    end

    def self.reset_status_code_to_zero(id)
      file = "#{Rails.root}/config/couchdb_config.yml"
      couchdb_details = YAML.load(File.read(file))
      database = couchdb_details["source_database"]
      username = couchdb_details["source_username"]
      password = couchdb_details["source_password"]
      port = couchdb_details["source_port"]
      ip_address = couchdb_details["source_address"]

      doc = JSON.parse(`curl -X GET http://#{username}:#{password}@#{ip_address}:#{port}/#{database}/#{id}`)

      if !doc['report_month'].blank?
        doc["status_code"] = "0"
        RestClient.post("http://#{username}:#{password}@#{ip_address}:#{port}/#{database}", doc.to_json, :content_type => "application/json")

      end

    end

    def self.fetch_district(site_district,report_type)
      districts = Report.by_site_district.key(site_district).each
      actual_district = "INVALID"
      districts.each do |dist|
        if ((dist["site_district"].strip == site_district.strip) && (dist["report_type"].strip == report_type.strip))
          actual_district = site_district
        end
      end
      return actual_district.upcase
    end

    def self.facility_list(site_district,report_type)
      data = Report.by_site_district.key(site_district).each
      details = []
      data.each do |data|
        if ((data["site_district"] == site_district.strip) && (data["report_type"] == report_type.strip))
          if data["status_code"] == "1"
            details << data["site_name"]
          end
        end
      end
      details =  details.uniq
      return details
    end
  end
