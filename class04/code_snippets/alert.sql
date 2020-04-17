-- the idea here is to detect the rows which have not been predicted 
-- in our trained model, we excluded obeservations/rows not falling into the proper interval (outside of 5 times the IQR)
-- such values will be thus excluded from the predicted dataset
-- we want to warn the team regarding such values!

SELECT
    -- we select the piece of information we want to send to the team regarding these values
    -- the geopoint and Family_size is a good start
    "cleaned"."geopoint",
    "cleaned"."Family_size"
  from "HOUSEPRICINGADMINS_to_predict_clean" "cleaned"
  -- we do a left join before isolating non-scored values 
  left join "HOUSEPRICINGADMINS_to_predict_scored" "scored"
  -- here our unique identifier is the concatenation of geopoint and Famil_size (it will be a unique identifier)
  on concat("scored"."geopoint","scored"."Family_size") = concat("cleaned"."geopoint","cleaned"."Family_size")
  -- the below condition will extract the non-scored data
  where "prediction" is null
