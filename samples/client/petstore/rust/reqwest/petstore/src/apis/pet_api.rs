/*
 * OpenAPI Petstore
 *
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use reqwest;

use super::{Error, configuration};

pub struct PetApiClient {
    configuration: Rc<configuration::Configuration>,
}

impl PetApiClient {
    pub fn new(configuration: Rc<configuration::Configuration>) -> PetApiClient {
        PetApiClient {
            configuration: configuration,
        }
    }
}

pub trait PetApi {
    fn add_pet(&self, body: crate::models::Pet) -> Result<(), Error>;
    fn delete_pet(&self, pet_id: i64, api_key: &str) -> Result<(), Error>;
    fn find_pets_by_status(&self, status: Vec<String>) -> Result<Vec<crate::models::Pet>, Error>;
    fn find_pets_by_tags(&self, tags: Vec<String>) -> Result<Vec<crate::models::Pet>, Error>;
    fn get_pet_by_id(&self, pet_id: i64) -> Result<crate::models::Pet, Error>;
    fn update_pet(&self, body: crate::models::Pet) -> Result<(), Error>;
    fn update_pet_with_form(&self, pet_id: i64, name: &str, status: &str) -> Result<(), Error>;
    fn upload_file(&self, pet_id: i64, additional_metadata: &str, file: std::path::PathBuf) -> Result<crate::models::ApiResponse, Error>;
}

impl PetApi for PetApiClient {
    fn add_pet(&self, body: crate::models::Pet) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet", configuration.base_path);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn delete_pet(&self, pet_id: i64, api_key: &str) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/{petId}", configuration.base_path, petId=pet_id);
        let mut req_builder = client.delete(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.header("api_key", api_key.to_string());
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn find_pets_by_status(&self, status: Vec<String>) -> Result<Vec<crate::models::Pet>, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/findByStatus", configuration.base_path);
        let mut req_builder = client.get(uri_str.as_str());

        req_builder = req_builder.query(&[("status", &status.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]);
        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

    fn find_pets_by_tags(&self, tags: Vec<String>) -> Result<Vec<crate::models::Pet>, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/findByTags", configuration.base_path);
        let mut req_builder = client.get(uri_str.as_str());

        req_builder = req_builder.query(&[("tags", &tags.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]);
        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

    fn get_pet_by_id(&self, pet_id: i64) -> Result<crate::models::Pet, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/{petId}", configuration.base_path, petId=pet_id);
        let mut req_builder = client.get(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref apikey) = configuration.api_key {
            let key = apikey.key.clone();
            let val = match apikey.prefix {
                Some(ref prefix) => format!("{} {}", prefix, key),
                None => key,
            };
            req_builder = req_builder.header("api_key", val);
        };

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

    fn update_pet(&self, body: crate::models::Pet) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet", configuration.base_path);
        let mut req_builder = client.put(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn update_pet_with_form(&self, pet_id: i64, name: &str, status: &str) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/{petId}", configuration.base_path, petId=pet_id);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };
        let mut form_params = std::collections::HashMap::new();
        form_params.insert("name", name.to_string());
        form_params.insert("status", status.to_string());
        req_builder = req_builder.form(&form_params);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn upload_file(&self, pet_id: i64, additional_metadata: &str, file: std::path::PathBuf) -> Result<crate::models::ApiResponse, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = format!("{}/pet/{petId}/uploadImage", configuration.base_path, petId=pet_id);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        if let Some(ref token) = configuration.oauth_access_token {
            req_builder = req_builder.bearer_auth(token.to_owned());
        };
        let form = reqwest::multipart::Form::new()
            .text("additionalMetadata", additional_metadata.to_string())
            .file("file", file)?;
        req_builder = req_builder.multipart(form);

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

}
