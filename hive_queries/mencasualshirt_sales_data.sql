SELECT product_dim.product_title as product_title,
product_dim.product_id as product_id,             	                                 	                    
product_dim.brand as brand,           	                    
product_dim.color as color,            	                        	                               	                    
product_dim.weight as weight,            	                    
product_dim.length as length,             	                    
product_dim.breadth as breadth,            	                    
product_dim.height as height,
product_dim.type as type,            	                    
product_dim.variant as variant,           	                                  	                              	                               	                     	                    
product_dim.design as design,             	                    
product_dim.pattern as pattern,            	                    
product_dim.occasion as occasion,             	                    
product_dim.outer_material as outer_material,             	                    
product_dim.material as material,            	                    
product_dim.sleeve as sleeve,             	                                 	                               	                              	                    
product_dim.euro_size as euro_size,           	                    
product_dim.uk_india_size as uk_india_size,             	                    
product_dim.us_size as us_size,          	                                 	                                 	                    
product_dim.designed_for as designed_for,            	                                	                    
product_dim.size_in_number as size_in_number,             	                    
product_dim.size as size,            	                             	                                 	                    
product_dim.new_display_size as new_display_size,             	                                  	                                	                    
product_dim.size_chart as size_chart,             	                            	                    
order_item_unit_s1_fact.order_external_id AS order_external_id,
order_item_unit_s1_fact.order_id AS order_id,
order_item_unit_s1_fact.account_id AS account_id,
order_item_unit_s1_fact.order_item_date AS order_item_date
FROM bigfoot_external_neo.sp_product__product_attribute_hive_dim product_dim 
INNER JOIN bigfoot_external_neo.scp_oms__order_item_unit_s1_365_final_fact order_item_unit_s1_fact ON order_item_unit_s1_fact.order_item_product_id_key = product_dim.product_attribute_hive_dim_key
WHERE product_dim.analytic_vertical IN ('MensCasualShirt');