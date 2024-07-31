*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Test Setup    Login dohome and click web art(Create)
Test Template        Create Article 
Library    DataDriver    file=../resources/clone_article_goodreturnV2.csv  dialect=excel    encoding=utf-8
Resource    ../keywords/common_art.robot
Test Teardown    Close All Browsers  

*** Test Cases ***
Create Article Good Return    

*** Keywords ***
Create Article
    [Arguments]    ${vendor_no}    ${name_th}    ${name_en}    ${article_category}    ${merchandise_category2}    ${merchandise_category}    ${division}    
    ...    ${artl_statistics_grp}    ${astmt_list_type}    ${material_type}    ${valuation_class}    ${name_ecm}    ${name_search}    ${search_remark}    
    ...    ${product_model}    ${brand_id}    ${product_transform}    ${country_of_region}    ${hb_nonhb}    ${production}    ${tradmark}    ${product_status}    
    ...    ${abc_indicator}    ${product_role}    ${product_sub_role}    ${product_trend}    ${head_purchaser_group_no}    ${purchaser_group_no}    ${avail_check}    
    ...    ${gen_item_cat_grp}    ${tax_class}    ${stor_condition}    ${loading_group}    ${units_id}    ${rate_unit_base}    ${rate_unit_code}    ${barcode_no}    
    ...    ${width_6}    ${long_6}    ${high_6}    ${weight_6}    ${width_7}    ${long_7}    ${high_7}    ${weight_7}    ${first_sale_date}    ${selling_point}    
    ...    ${product_features}    ${maintenance}    ${warranty_terms}    ${method_of_use}    ${caution}    ${lead_time}    ${return_defective}    ${net_cost_price}    ${currency}    
    ...    ${path_pic}    ${distr_ch_C1}    ${distr_ch_C2}    ${distr_ch_C3}    ${branch_dc}    ${branch_hq}    ${branch_xl}    ${branch_togo}    ${old_article}
    ...    ${repack}	${tot_shelf_life}	${rem_shelf_life}	${head_im}	${import_purchase}	${serial_number_profile}	${mark_batch}	${add_unit2}	${add_unit3}	${add_unit4}	
    ...	   ${add_unit5}    ${rate_unit_base_2}	${units_id_2}	${rate_unit_code_2}    ${barcode_no_2}		${width_6_2}	${long_6_2}	    ${high_6_2}    ${weight_6_2}  
    ...    ${rate_unit_base_3}	    ${units_id_3}	${rate_unit_code_3}    ${barcode_no_3}		${width_6_3}	${long_6_3}	    ${high_6_3}    ${weight_6_3}
    ...    ${width_7_2}    ${long_7_2}    ${high_7_2}    ${weight_7_2}    ${width_7_3}    ${long_7_3}    ${high_7_3}    ${weight_7_3}    ${rate_unit_base_4}	${units_id_4}	
    ...	   ${rate_unit_code_4}    ${barcode_no_4}		${width_6_4}	${long_6_4}	    ${high_6_4}    ${weight_6_4}  ${rate_unit_base_5}	    ${units_id_5}	
    ...	   ${rate_unit_code_5}    ${barcode_no_5}		${width_6_5}	${long_6_5}	    ${high_6_5}    ${weight_6_5}    ${width_7_4}    ${long_7_4}    ${high_7_4}    ${Negative_stock}   
    ...    ${weight_7_4}    ${width_7_5}    ${long_7_5}    ${high_7_5}    ${weight_7_5}    ${im_group}    
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='จัดการข้อมูลสินค้า']
    Wait And Wait Until Element Is Visible    //div[@class="dx-datagrid-text-content"][text()='วันที่สร้าง']
    Wait And Click Element    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Wait And Wait Until Element Is Visible    //span[@class="MuiTab-wrapper"][text()="Basic data"]
    Wait And Click Element    //input[@name="vendor_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="vendor_no"]/following-sibling::div/div/input    ${vendor_no}
    Wait And Press Keys    //input[contains(@id, '_vendor_no') and starts-with(@id, 'dx_')]    ARROW_DOWN
    Wait And Press Keys    //input[contains(@id, '_vendor_no') and starts-with(@id, 'dx_')]    ENTER
    Wait And Click Element    //input[@name="name_th"]
    Wait And Input Text with Delay     //input[@name="name_th"]    ${name_th}
    Wait And Click Element    //input[@name="name_en"]
    Wait And Input Text with Delay     //input[@name="name_en"]    ${name_en}
    #Tab Basic
    #1. รายละเอียดเกี่ยวกับตัวสินค้า
    Wait And Click Element    //input[@name="article_category"]/following-sibling::div/div/input    #api error 500
    Wait And Input Text with Delay     //input[@name="article_category"]/following-sibling::div/div/input    ${article_category}
    Wait And Press Keys    //input[@name="article_category"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="article_category"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="merchandise_category2"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category2"]/following-sibling::div/div/input    ${merchandise_category2}
    Wait And Press Keys    //input[@name="merchandise_category2"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="merchandise_category2"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="merchandise_category"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category"]/following-sibling::div/div/input    ${merchandise_category}
    Wait And Press Keys    //input[@name="merchandise_category"]/following-sibling::div/div/input    ARROW_DOWN    
    Wait And Press Keys    //input[@name="merchandise_category"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="division"]/following-sibling::div/div/input
    Wait And Clear Element Text    //input[@name="division"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="division"]/following-sibling::div/div/input    ${division}
    Wait And Press Keys    //input[@name="division"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="division"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="artl_statistics_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    ${artl_statistics_grp}
    Wait And Press Keys    //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Clear Element Text    //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="astmt_list_type"]/following-sibling::div/div/input    ${astmt_list_type}
    Wait And Press Keys    //input[@name="astmt_list_type"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="astmt_list_type"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //input[@name="material_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="material_type"]/following-sibling::div/div/input    ${material_type}
    Wait And Press Keys    //input[@name="material_type"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="material_type"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //select[@name="distr_ch"]/following-sibling::div/div/input
    #เพิ่ม 18/7/67
    Wait And Click Element Ignore Error     //*[text()='${distr_ch_C1}']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='${distr_ch_C2}']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='${distr_ch_C3}']/preceding-sibling::div/div/div
    Wait And Click Element    //body/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/span[1]
    Wait And Scroll Element Into View    //*[@class="dx-field-item-label-text"][text()='ประเภทสินค้าทางบัญชี (valuation class)']
    Wait And Click Element    //*[text()="ทั้งหมด"]/preceding-sibling::span 
    Conditional Wait And Click element    '${branch_dc}' == 'X'    //*[text()="ศูนย์กระจายสินค้า DC"]/preceding-sibling::span
    Conditional Wait And Click element    '${branch_hq}' == 'X'    //*[text()="สำนักงานใหญ่"]/preceding-sibling::span    
    Conditional Wait And Click element    '${branch_xl}' == 'X'    //*[text()="XL"]/preceding-sibling::span    
    Conditional Wait And Click element    '${branch_togo}' == 'X'    //*[text()="TO GO"]/preceding-sibling::span    
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='2. ข้อมูลเกี่ยวกับสินค้ามีอายุ']
    Wait And Clear Element Text    //input[@name="valuation_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="valuation_class"]/following-sibling::div/div/input    ${valuation_class}
    Wait And Press Keys    //input[@name="valuation_class"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="valuation_class"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="e_comm_name_th"]
    Wait And Input Text with Delay    //input[@name="e_comm_name_th"]    ${name_ecm}
    Wait And Press Keys    //input[@name="e_comm_name_th"]    ARROW_DOWN
    Wait And Press Keys    //input[@name="e_comm_name_th"]    ENTER
    Wait And Clear Element Text    //input[@name="search_word"]
    Wait And Input Text with Delay     //input[@name="search_word"]   ${name_search}
    Wait And Press Keys    //input[@name="search_word"]    ARROW_DOWN
    Wait And Press Keys    //input[@name="search_word"]    ENTER
    Wait And Clear Element Text    //input[@name="search_remark"]
    Wait And Input Text with Delay     //input[@name="search_remark"]    ${search_remark}
    Wait And Press Keys    //input[@name="search_remark"]    ARROW_DOWN
    Wait And Press Keys    //input[@name="search_remark"]    ENTER
    Wait And Clear Element Text    //input[@name="product_model"]
    Wait And Input Text with Delay     //input[@name="product_model"]    ${product_model}
    Wait And Press Keys    //input[@name="product_model"]    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_model"]    ENTER
    Wait And Clear Element Text    //input[@name="brand_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="brand_id"]/following-sibling::div/div/input    ${brand_id}
    Wait And Press Keys    //input[@name="brand_id"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="brand_id"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="old_article"]
    Wait And Input Text with Delay Ignore Error     //input[@name="old_article"]    ${old_article}  
    Wait And Press Keys Ignore Error    //input[@name="old_article"]    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="old_article"]    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="repack"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="repack"]/following-sibling::div/div/input    ${repack}
    Wait And Press Keys Ignore Error    //input[@name="repack"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="repack"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="product_transform"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_transform"]/following-sibling::div/div/input    ${product_transform}
    Wait And Press Keys    //input[@name="product_transform"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_transform"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="country_of_region"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="country_of_region"]/following-sibling::div/div/input    ${country_of_region}
    Wait And Press Keys    //input[@name="country_of_region"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="country_of_region"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="hb_nonhb"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="hb_nonhb"]/following-sibling::div/div/input    ${hb_nonhb}
    Wait And Press Keys    //input[@name="hb_nonhb"]/following-sibling::div/div/input    ARROW_DOWN  
    Wait And Press Keys    //input[@name="hb_nonhb"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="production"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="production"]/following-sibling::div/div/input    ${production}
    Wait And Press Keys    //input[@name="production"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="production"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="tradmark"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tradmark"]/following-sibling::div/div/input    ${tradmark}
    Wait And Press Keys    //input[@name="tradmark"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="tradmark"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='3. ข้อมูลเกี่ยวกับ Indicator สินค้า']
    #2. ข้อมูลเกี่ยวกับสินค้ามีอายุ
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="tot_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="tot_shelf_life"]/following-sibling::div/div/input    ${tot_shelf_life}
    Wait And Press Keys Ignore Error    //input[@name="tot_shelf_life"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="tot_shelf_life"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="rem_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="rem_shelf_life"]/following-sibling::div/div/input    ${rem_shelf_life}
    Wait And Press Keys Ignore Error    //input[@name="rem_shelf_life"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="rem_shelf_life"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ']
    #3. ข้อมูลเกี่ยวกับ Indicator สินค้า
    Wait And Clear Element Text    //input[@name="product_status"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_status"]/following-sibling::div/div/input    ${product_status}
    Wait And Press Keys    //input[@name="product_status"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_status"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="abc_indicator"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="abc_indicator"]/following-sibling::div/div/input    ${abc_indicator}
    Wait And Press Keys    //input[@name="abc_indicator"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="abc_indicator"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="product_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_role"]/following-sibling::div/div/input    ${product_role}
    Wait And Press Keys    //input[@name="product_role"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_role"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="product_sub_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_sub_role"]/following-sibling::div/div/input    ${product_sub_role}
    Wait And Press Keys    //input[@name="product_sub_role"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_sub_role"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="product_trend"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_trend"]/following-sibling::div/div/input    ${product_trend}
    Wait And Press Keys    //input[@name="product_trend"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="product_trend"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม']
    #4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ
    Wait And Clear Element Text    //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    ${head_purchaser_group_no}
    Wait And Press Keys    //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="head_im"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="head_im"]/following-sibling::div/div/input    ${head_im}
    Wait And Press Keys Ignore Error    //input[@name="head_im"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="head_im"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="purchaser_group_no"]/following-sibling::div/div/input    ${purchaser_group_no}
    Wait And Press Keys    //input[@name="purchaser_group_no"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="purchaser_group_no"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="import_purchase"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="import_purchase"]/following-sibling::div/div/input    ${import_purchase}
    Wait And Press Keys Ignore Error    //input[@name="import_purchase"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="import_purchase"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="im_group"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="im_group"]/following-sibling::div/div/input    ${im_group}
    Wait And Press Keys Ignore Error    //input[@name="im_group"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="im_group"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']
    #5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม
    Wait And Clear Element Text    //input[@name="avail_check"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="avail_check"]/following-sibling::div/div/input    ${avail_check}
    Wait And Press Keys    //input[@name="avail_check"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="avail_check"]/following-sibling::div/div/input    ENTER
    Conditional Wait And Click element    '${Negative_stock}' == 'X'    //*[text()="สินค้าที่สามารถขายได้เมื่อสต็อกติดลบ"]/preceding-sibling::span
    Wait And Clear Element Text    //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    ${gen_item_cat_grp}
    Wait And Press Keys    //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="tax_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tax_class"]/following-sibling::div/div/input    ${tax_class}
    Wait And Press Keys    //input[@name="tax_class"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="tax_class"]/following-sibling::div/div/input    ENTER
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="serial_number_profile"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="serial_number_profile"]/following-sibling::div/div/input    ${serial_number_profile}
    Wait And Press Keys Ignore Error    //input[@name="serial_number_profile"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys Ignore Error    //input[@name="serial_number_profile"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="stor_condition"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="stor_condition"]/following-sibling::div/div/input    ${stor_condition}
    Wait And Press Keys    //input[@name="stor_condition"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="stor_condition"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="loading_group"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="loading_group"]/following-sibling::div/div/input    ${loading_group}
    Wait And Press Keys    //input[@name="loading_group"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="loading_group"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${mark_batch}' == 'X'        //*[text()="สินค้าที่ต้องระบุ batch (Batch management )"]/preceding-sibling::span    #batch
    #6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง
    Wait And Scroll Element Into View     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Clear Element Text    //input[@name="units_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="units_id"]/following-sibling::div/div/input    ${units_id}
    Wait And Press Keys    //input[@name="units_id"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="units_id"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="rate_unit_base"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="rate_unit_base"]/following-sibling::div/div/input    ${rate_unit_base}
    Wait And Press Keys    //input[@name="rate_unit_base"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="rate_unit_base"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="rate_unit_code"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="rate_unit_code"]/following-sibling::div/div/input    ${rate_unit_code}
    Wait And Press Keys    //input[@name="rate_unit_code"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="rate_unit_code"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="barcode_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="barcode_no"]/following-sibling::div/div/input    ${barcode_no}
    Wait And Press Keys    //input[@name="barcode_no"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="barcode_no"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="width"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="width"]/following-sibling::div/div/input    ${width_6}
    Wait And Press Keys    //input[@name="width"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="width"]/following-sibling::div/div/input    ENTER 
    Wait And Clear Element Text    //input[@name="long"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="long"]/following-sibling::div/div/input    ${long_6}
    Wait And Press Keys    //input[@name="long"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="long"]/following-sibling::div/div/input    ENTER  
    Wait And Clear Element Text    //input[@name="high"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="high"]/following-sibling::div/div/input    ${high_6}
    Wait And Press Keys    //input[@name="high"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="high"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="weight"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="weight"]/following-sibling::div/div/input    ${weight_6}
    Wait And Press Keys    //input[@name="weight"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="weight"]/following-sibling::div/div/input    ENTER
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Oun (หน่วยบรรจุในการสั่งซื้อ/เปิด PO)']/preceding-sibling::span    
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Sun (หน่วยที่สามารถขายได้ = เบสยูนิต)']/preceding-sibling::span    
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit2}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
    Conditional Wait And Scroll Element Into View    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${units_id_2}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${barcode_no_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${width_6_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${long_6_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${high_6_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${weight_6_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ENTER
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit3}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${units_id_3}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${barcode_no_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${width_6_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${long_6_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${high_6_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${weight_6_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ENTER
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit4}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${units_id_4}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${barcode_no_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${width_6_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${long_6_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${high_6_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${weight_6_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ENTER
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit5}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${units_id_5}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${barcode_no_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${width_6_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${long_6_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${high_6_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${weight_6_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ENTER
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    #7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    ${width_7}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    ARROW_DOWN
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    ENTER 
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input    ${long_7}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input    ARROW_DOWN
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input    ENTER  
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input   ${high_7}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input    ARROW_DOWN
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input    ENTER
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    ${weight_7}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    ARROW_DOWN
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input    ${width_7_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input    ENTER 
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input    ${long_7_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input    ENTER  
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input   ${high_7_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_7_2}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input    ${width_7_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input    ENTER 
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input    ${long_7_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input    ENTER  
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input   ${high_7_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_7_3}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input    ${width_7_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input    ENTER 
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input    ${long_7_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input    ENTER  
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input   ${high_7_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_7_4}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input    ${width_7_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input    ENTER 
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input    ${long_7_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input    ENTER  
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input   ${high_7_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input    ENTER
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_7_5}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    ARROW_DOWN
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    ENTER
    #8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)
    #9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง
    #10. ข้อมูลสินค้าหน่วยคู่ขนาน
    #11.1 ข้อมูล มาตรฐานผลิตภัณฑ์อุตสาหกรรม (มอก.)
    #11.2 เครื่องหมายการค้า ลิขสิทธิ์ สิทธิบัตร
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='12. สถานะสินค้า ใน Tab Basic Data']
    #12. สถานะสินค้า ใน Tab Basic Data
    Wait And Clear Element Text    //input[@name="first_sale_date"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="first_sale_date"]/following-sibling::div/div/input    ${first_sale_date}
    Wait And Press Keys    //input[@name="first_sale_date"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="first_sale_date"]/following-sibling::div/div/input    ENTER
    #13. Attribute หลัก
    #14. คุณสมบัติการรับประกัน บำรุงรักษา
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='การบำรุงรักษา']
    Wait And Click Element   //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${selling_point}
    Wait And Click Element   //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${product_features} 
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='เงื่อนไขการรับประกัน']
    Wait And Click Element   //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${maintenance}  
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='ประเภทของการรับประกัน'] 
    Wait And Click Element   //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${warranty_terms}
    Wait And Click Element   //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${method_of_use} 
    Wait And Click Element   //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${caution}
    #15. สินค้าภายในกล่อง
    #16. จำนวนรายการสินค้าต่อชุด (Multi Pack)
    #17. รูปภาพสินค้า
    Wait And Scroll Element Into View    //span[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='18. โลโก้สินค้า']
    Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic}      
    Wait And Click Element    //*[text()='17. รูปภาพสินค้า']/ancestor::div[2]/following-sibling::div//input[@type="radio"]  
    #Tab Purchasing
    #ข้อมูลของ Vendor
    Wait And Click Element    //*[text()="Purchasing"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ข้อมูลของ Vendor"]
    Wait And Clear Element Text    //input[@name="lead_time"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="lead_time"]/following-sibling::div/div/input    ${lead_time}
    Wait And Press Keys    //input[@name="lead_time"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="lead_time"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="return_defective"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="return_defective"]/following-sibling::div/div/input    ${return_defective}
    Wait And Press Keys    //input[@name="return_defective"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="return_defective"]/following-sibling::div/div/input    ENTER
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()="หน่วยของราคาทุน (Base Unit)."]
    #ข้อมูลต้นทุนสินค้า
    Wait And Clear Element Text    //input[@name="net_cost_price"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="net_cost_price"]/following-sibling::div/div/input    ${net_cost_price}
    Wait And Press Keys    //input[@name="net_cost_price"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="net_cost_price"]/following-sibling::div/div/input    ENTER
    Wait And Clear Element Text    //input[@name="currency"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="currency"]/following-sibling::div/div/input    ${currency}
    Wait And Press Keys    //input[@name="currency"]/following-sibling::div/div/input    ARROW_DOWN
    Wait And Press Keys    //input[@name="currency"]/following-sibling::div/div/input    ENTER
    Sleep    3s  
    #Tab Sale
    Wait And Click Element    //*[text()="Sales"]/..
    #Tab DC & Store
    Wait And Click Element    //*[text()="DC & store"]/..
    Wait And Click Element    //*[text()="ขออนุมัติ"]/..
    Wait And Click Element    //*[text()="ยืนยัน"]/..
    Wait And Wait Until Element Is Visible    //*[text()="จัดการข้อมูลสินค้า"]/..
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Pass Execution    End Test