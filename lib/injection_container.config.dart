// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/dio/dio.dart' as _i364;
import 'feature/cplife_app/buy_back/data/data_source/buy_back_remote_data_source.dart'
    as _i16;
import 'feature/cplife_app/buy_back/data/data_source/buy_back_remote_data_source_imp.dart'
    as _i17;
import 'feature/cplife_app/buy_back/data/repository/buy_back_repository_impl.dart'
    as _i19;
import 'feature/cplife_app/buy_back/domain/repository/buy_back_repository.dart'
    as _i18;
import 'feature/cplife_app/buy_back/domain/usecase/register_buy_back/register_buy_back_usecase.dart'
    as _i77;
import 'feature/cplife_app/buy_back/domain/usecase/validate_buy_back/validate_buy_back_usecase.dart'
    as _i76;
import 'feature/cplife_app/buy_back/presentation/bloc/register_buy_back/register_buy_back_bloc.dart'
    as _i154;
import 'feature/cplife_app/buy_back/presentation/bloc/validate_buy_back/validate_buy_back_bloc.dart'
    as _i253;
import 'feature/cplife_app/deposit_unit_linked/data/data_source/deposit_unit_link_remote_data_source.dart'
    as _i74;
import 'feature/cplife_app/deposit_unit_linked/data/data_source/deposit_unit_link_remote_data_source_imp.dart'
    as _i75;
import 'feature/cplife_app/deposit_unit_linked/data/repositories/deposit_unit_link_repository_imp.dart'
    as _i221;
import 'feature/cplife_app/deposit_unit_linked/domain/repositories/deposit_unit_link_repository.dart'
    as _i220;
import 'feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/create_deposit_usecase.dart'
    as _i278;
import 'feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/transaction_status_usecase.dart'
    as _i279;
import 'feature/cplife_app/deposit_unit_linked/domain/usecases/unit_price/unit_price_usecase.dart'
    as _i280;
import 'feature/cplife_app/deposit_unit_linked/presentation/blocs/create_dposit/create_deposit_bloc.dart'
    as _i345;
import 'feature/cplife_app/deposit_unit_linked/presentation/blocs/transaction_status/transaction_status_bloc.dart'
    as _i352;
import 'feature/cplife_app/deposit_unit_linked/presentation/blocs/unit_price/unit_price_bloc.dart'
    as _i333;
import 'feature/cplife_app/insurances/data/data_source/insurances_remote_data_source.dart'
    as _i4;
import 'feature/cplife_app/insurances/data/data_source/insurances_remote_data_source_imp.dart'
    as _i5;
import 'feature/cplife_app/insurances/data/repository/insurances_repository_impl.dart'
    as _i73;
import 'feature/cplife_app/insurances/domain/repository/insurances_repository.dart'
    as _i72;
import 'feature/cplife_app/insurances/domain/usecases/insurances_list/insurances_list_usecase.dart'
    as _i153;
import 'feature/cplife_app/insurances/domain/usecases/life_insurances/life_insurances_usecase.dart'
    as _i143;
import 'feature/cplife_app/insurances/presentation/bloc/insurances_bloc/insurances_list_bloc.dart'
    as _i156;
import 'feature/cplife_app/insurances/presentation/bloc/life_insurances/life_insurances_bloc.dart'
    as _i172;
import 'feature/cplife_app/loan/data/data_source/loan_remote_data_source.dart'
    as _i70;
import 'feature/cplife_app/loan/data/data_source/loan_remote_data_source_imp.dart'
    as _i71;
import 'feature/cplife_app/loan/data/repository/loan_repository_imp.dart'
    as _i109;
import 'feature/cplife_app/loan/domain/repository/loan_repository.dart'
    as _i108;
import 'feature/cplife_app/loan/domain/usecase/iban_inquiry/iban_inquiry_usecase.dart'
    as _i207;
import 'feature/cplife_app/loan/domain/usecase/register_loan/register_loan_usecase.dart'
    as _i132;
import 'feature/cplife_app/loan/domain/usecase/saved_money/saved_money_usecase.dart'
    as _i131;
import 'feature/cplife_app/loan/domain/usecase/validate_loan/validate_loan_usecase.dart'
    as _i133;
import 'feature/cplife_app/loan/presentation/bloc/iban_inquiry/iban_inquiry_bloc.dart'
    as _i320;
import 'feature/cplife_app/loan/presentation/bloc/register_loan/register_loan_bloc.dart'
    as _i283;
import 'feature/cplife_app/loan/presentation/bloc/saved_money/saved_money_bloc.dart'
    as _i224;
import 'feature/cplife_app/loan/presentation/bloc/validate_loan/validate_loan_bloc.dart'
    as _i165;
import 'feature/cplife_app/tickets/data/data_source/tickets_remote_datasource.dart'
    as _i29;
import 'feature/cplife_app/tickets/data/data_source/tickets_remote_datasource_impl.dart'
    as _i30;
import 'feature/cplife_app/tickets/data/repository/tickets_repository_imp.dart'
    as _i42;
import 'feature/cplife_app/tickets/domain/repository/tickets_repository.dart'
    as _i41;
import 'feature/cplife_app/tickets/domain/usecase/details_tickets/details_ticket_usecase.dart'
    as _i120;
import 'feature/cplife_app/tickets/domain/usecase/remove_ticket/remove_ticket_usecase.dart'
    as _i119;
import 'feature/cplife_app/tickets/domain/usecase/tickets/tickets_usecase.dart'
    as _i118;
import 'feature/cplife_app/tickets/presentation/bloc/details_ticket/details_ticket_bloc.dart'
    as _i130;
import 'feature/cplife_app/tickets/presentation/bloc/remove_ticket/remove_ticket_bloc.dart'
    as _i134;
import 'feature/cplife_app/tickets/presentation/bloc/tickets/tickets_bloc.dart'
    as _i166;
import 'feature/cplife_app/withdraw/data/data_source/withdraw_remote_data_source.dart'
    as _i37;
import 'feature/cplife_app/withdraw/data/data_source/withdraw_remote_data_source_imp.dart'
    as _i38;
import 'feature/cplife_app/withdraw/data/repository/withdraw_repository_imp.dart'
    as _i206;
import 'feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart'
    as _i205;
import 'feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/create_cash_withdraw_usecase.dart'
    as _i241;
import 'feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/create_settlement_withdraw_usecase.dart'
    as _i339;
import 'feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/settlement_withdraw_usecase.dart'
    as _i242;
import 'feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/validate_cash_withdraw_usecase.dart'
    as _i243;
import 'feature/cplife_app/withdraw/presentation/bloc/create_cash_withdraw/create_cash_withdraw_bloc.dart'
    as _i346;
import 'feature/cplife_app/withdraw/presentation/bloc/create_settlement_withdraw/create_settlement_withdraw_bloc.dart'
    as _i363;
import 'feature/cplife_app/withdraw/presentation/bloc/settlement_withdraw/settlement_withdraw_bloc.dart'
    as _i303;
import 'feature/cplife_app/withdraw/presentation/bloc/validate_cash_withdraw/validate_cash_withdraw_bloc.dart'
    as _i284;
import 'feature/cplife_app/withdraw_unitlinked/data/data_source/withdraw_unit_link_remote_data_source.dart'
    as _i6;
import 'feature/cplife_app/withdraw_unitlinked/data/data_source/withdraw_unit_link_remote_data_source_imp.dart'
    as _i7;
import 'feature/cplife_app/withdraw_unitlinked/data/repository/withdraw_unit_link_repository_imp.dart'
    as _i107;
import 'feature/cplife_app/withdraw_unitlinked/domain/repository/withdraw_unit_linked_repository.dart'
    as _i106;
import 'feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/withdraw_unit_link_usecase.dart'
    as _i173;
import 'feature/cplife_app/withdraw_unitlinked/presentation/blocs/create_withdraw_unit_linkes/create_withdraw_unit_linked_bloc.dart'
    as _i235;
import 'feature/darmanet_app/cost_registration/data/data_source/cost_registration_remote_data_source.dart'
    as _i20;
import 'feature/darmanet_app/cost_registration/data/data_source/cost_registration_remote_data_source_imp.dart'
    as _i21;
import 'feature/darmanet_app/cost_registration/data/repository/cost_registration_repository_imp.dart'
    as _i44;
import 'feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart'
    as _i43;
import 'feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/check_repetitive_usecase.dart'
    as _i181;
import 'feature/darmanet_app/cost_registration/domain/usecase/create_cost/create_cost_usecase.dart'
    as _i175;
import 'feature/darmanet_app/cost_registration/domain/usecase/destory/destory_usecase.dart'
    as _i177;
import 'feature/darmanet_app/cost_registration/domain/usecase/file_list/file_list_usecase.dart'
    as _i174;
import 'feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/get_active_by_person_usecase.dart'
    as _i183;
import 'feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/get_all_cost_desc_usecase.dart'
    as _i182;
import 'feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/get_all_family_for_all_contract_usecase.dart'
    as _i179;
import 'feature/darmanet_app/cost_registration/domain/usecase/get_by_id/get_by_id_usecase.dart'
    as _i178;
import 'feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/get_envelope_send_info_usecase.dart'
    as _i176;
import 'feature/darmanet_app/cost_registration/domain/usecase/send_envelope/send_envelope_usecase.dart'
    as _i184;
import 'feature/darmanet_app/cost_registration/domain/usecase/upload/upload_usecase.dart'
    as _i185;
import 'feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/upload_person_cost_image_usecase.dart'
    as _i180;
import 'feature/darmanet_app/cost_registration/presentation/bloc/check_repetitive/check_repetitive_bloc.dart'
    as _i240;
import 'feature/darmanet_app/cost_registration/presentation/bloc/create_cost/create_cost_bloc.dart'
    as _i237;
import 'feature/darmanet_app/cost_registration/presentation/bloc/destroy/destroy_bloc.dart'
    as _i236;
import 'feature/darmanet_app/cost_registration/presentation/bloc/file_list/file_list_bloc.dart'
    as _i248;
import 'feature/darmanet_app/cost_registration/presentation/bloc/get_active_by_person/get_active_by_person_bloc.dart'
    as _i261;
import 'feature/darmanet_app/cost_registration/presentation/bloc/get_all_cost_desc/get_all_cost_desc_bloc.dart'
    as _i326;
import 'feature/darmanet_app/cost_registration/presentation/bloc/get_all_family_for_all_contract/get_all_family_for_all_contract_bloc.dart'
    as _i223;
import 'feature/darmanet_app/cost_registration/presentation/bloc/get_by_id/get_by_id_bloc.dart'
    as _i257;
import 'feature/darmanet_app/cost_registration/presentation/bloc/get_envelope_send_info/get_envelope_send_info_bloc.dart'
    as _i204;
import 'feature/darmanet_app/cost_registration/presentation/bloc/send_envelope/send_envelop_bloc.dart'
    as _i246;
import 'feature/darmanet_app/cost_registration/presentation/bloc/upload/upload_bloc.dart'
    as _i210;
import 'feature/darmanet_app/cost_registration/presentation/bloc/upload_person_cost_image/upload_person_cost_image_bloc.dart'
    as _i328;
import 'feature/darmanet_app/cost_tracking/data/data_source/cost_tracking_remote_data_source.dart'
    as _i31;
import 'feature/darmanet_app/cost_tracking/data/data_source/cost_tracking_remote_data_source_imp.dart'
    as _i32;
import 'feature/darmanet_app/cost_tracking/data/repository/cost_tracking_repository_imp.dart'
    as _i85;
import 'feature/darmanet_app/cost_tracking/domain/repository/cost_tracking_repository.dart'
    as _i84;
import 'feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/get_person_family_list_usecase.dart'
    as _i121;
import 'feature/darmanet_app/cost_tracking/presentation/bloc/get_person_family_list/get_person_family_list_bloc.dart'
    as _i147;
import 'feature/darmanet_app/health_care_centers/data/data_sources/health_care_centers_remote_data_source.dart'
    as _i39;
import 'feature/darmanet_app/health_care_centers/data/data_sources/health_care_centers_remote_data_source_impl.dart'
    as _i40;
import 'feature/darmanet_app/health_care_centers/data/repositories/get_clinic_search_result_repository_impl.dart'
    as _i89;
import 'feature/darmanet_app/health_care_centers/data/repositories/get_clinic_types_repository_impl.dart'
    as _i111;
import 'feature/darmanet_app/health_care_centers/domain/repositories/get_clinic_search_result_repository.dart'
    as _i88;
import 'feature/darmanet_app/health_care_centers/domain/repositories/get_clinics_types_repository.dart'
    as _i110;
import 'feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/get_clinic_search_resulut_usecase.dart'
    as _i254;
import 'feature/darmanet_app/health_care_centers/domain/use_cases/clinics_types/get_clinics_types_usecase.dart'
    as _i288;
import 'feature/darmanet_app/health_care_centers/presentation/bloc/clinic_types/get_clinics_types_bloc.dart'
    as _i361;
import 'feature/darmanet_app/health_care_centers/presentation/bloc/clinin_search/get_clinic_search_result_bloc.dart'
    as _i263;
import 'feature/darmanet_app/introduction/data/data_source/introduction_remote_data_source.dart'
    as _i22;
import 'feature/darmanet_app/introduction/data/data_source/introduction_remote_data_source_impl.dart'
    as _i23;
import 'feature/darmanet_app/introduction/data/repository/introduction_repository_impl.dart'
    as _i161;
import 'feature/darmanet_app/introduction/domain/repository/introduction_repository.dart'
    as _i160;
import 'feature/darmanet_app/introduction/domain/usecase/get_all_clinic/get_all_clinic_usecase.dart'
    as _i227;
import 'feature/darmanet_app/introduction/domain/usecase/get_cities/get_cities_usecase.dart'
    as _i230;
import 'feature/darmanet_app/introduction/domain/usecase/get_last_voucher_number/get_last_voucher_number_usecase.dart'
    as _i229;
import 'feature/darmanet_app/introduction/domain/usecase/person_voucher_create/person_voucher_create_usecase.dart'
    as _i228;
import 'feature/darmanet_app/introduction/presentation/bloc/get_all_clinic/get_all_clinic_bloc.dart'
    as _i273;
import 'feature/darmanet_app/introduction/presentation/bloc/get_cities/get_cities_bloc.dart'
    as _i341;
import 'feature/darmanet_app/introduction/presentation/bloc/get_last_voucher_number/get_last_voucher_number_bloc.dart'
    as _i348;
import 'feature/darmanet_app/introduction/presentation/bloc/person_voucher_create/person_voucher_create_bloc.dart'
    as _i337;
import 'feature/darmanet_app/introduction_tracking/data/data_source/introduction_tracking_remote_data_source.dart'
    as _i62;
import 'feature/darmanet_app/introduction_tracking/data/data_source/introduction_tracking_remote_data_source_impl.dart'
    as _i63;
import 'feature/darmanet_app/introduction_tracking/data/repository/introduction_tracking_repository_imp.dart'
    as _i93;
import 'feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart'
    as _i92;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/get_active_by_person_for_voucher_usecase.dart'
    as _i150;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/get_all_family_by_main_national_code_use_case.dart'
    as _i151;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/person_voucher_request_list_usecase.dart'
    as _i148;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/send_to_next_level/send_to_next_level_usecase.dart'
    as _i149;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/voucher_download_usecase.dart'
    as _i276;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/voucher_report_usecase.dart'
    as _i277;
import 'feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/voucher_request_get_by_id_usecase.dart'
    as _i152;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/get_active_by_person_for_voucher/get_active_by_person_for_voucher_bloc.dart'
    as _i192;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/get_all_family_by_main_national_code/get_all_family_by_main_national_code_bloc.dart'
    as _i186;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/person_voucher_request_list/person_voucher_request_list_bloc.dart'
    as _i191;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/send_to_next_level/send_to_next_level_bloc.dart'
    as _i322;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_download/voucher_download_bloc.dart'
    as _i347;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_report/voucher_report_bloc.dart'
    as _i285;
import 'feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_request_get_by_id/voucher_request_get_by_id_bloc.dart'
    as _i231;
import 'feature/darmanet_app/submit_discontent/data/data_source/submit_discontent_remote_data_source.dart'
    as _i68;
import 'feature/darmanet_app/submit_discontent/data/data_source/submit_discontent_remote_data_source_impl.dart'
    as _i69;
import 'feature/darmanet_app/submit_discontent/data/repository/submit_discontent_repository_impl.dart'
    as _i81;
import 'feature/darmanet_app/submit_discontent/domain/repository/submit_discontent_repository.dart'
    as _i80;
import 'feature/darmanet_app/submit_discontent/domain/usecase/submit_discontent_usecase.dart'
    as _i188;
import 'feature/darmanet_app/submit_discontent/presentation/bloc/submit_discontent_bloc.dart'
    as _i330;
import 'feature/main_app/agents_branches/data/data_sources/get_agents_branches_remote_data_source_impl.dart'
    as _i50;
import 'feature/main_app/agents_branches/data/data_sources/get_branches_remote_data_source.dart'
    as _i49;
import 'feature/main_app/agents_branches/data/repositories/get_agents_branches_repository_impl.dart'
    as _i234;
import 'feature/main_app/agents_branches/domain/repositories/get_agents_branches_repository.dart'
    as _i233;
import 'feature/main_app/agents_branches/domain/use_cases/get_agents_list/get_agents_list_usecase.dart'
    as _i249;
import 'feature/main_app/agents_branches/domain/use_cases/get_cities/get_cities_agents_branches_usecase.dart'
    as _i250;
import 'feature/main_app/agents_branches/domain/use_cases/get_states/get_states_agents_branches_usecase.dart'
    as _i251;
import 'feature/main_app/agents_branches/presentation/bloc/get_agents_list_normal/get_agents_list_bloc.dart'
    as _i286;
import 'feature/main_app/agents_branches/presentation/bloc/get_cities/get_cities_agents_branches_bloc.dart'
    as _i314;
import 'feature/main_app/agents_branches/presentation/bloc/get_states/get_states_agents_branches_bloc.dart'
    as _i327;
import 'feature/main_app/faq/data/data_source/faq_remote_datasource.dart'
    as _i56;
import 'feature/main_app/faq/data/data_source/faq_remote_datasource_impl.dart'
    as _i57;
import 'feature/main_app/faq/data/repository/faq_repository_imp.dart' as _i87;
import 'feature/main_app/faq/domain/repository/faq_repository.dart' as _i86;
import 'feature/main_app/faq/domain/use_case/category/get_category_usecase.dart'
    as _i201;
import 'feature/main_app/faq/domain/use_case/faq/get_faq_usecase.dart' as _i202;
import 'feature/main_app/faq/domain/use_case/search/faq_search_usecase.dart'
    as _i282;
import 'feature/main_app/faq/presentation/bloc/category/get_category_bloc.dart'
    as _i213;
import 'feature/main_app/faq/presentation/bloc/faq_qa/faq_qa_bloc.dart'
    as _i238;
import 'feature/main_app/faq/presentation/bloc/search/faq_search_bloc.dart'
    as _i321;
import 'feature/main_app/finance_profile/data/data_source/finance_profile_remote_datasource.dart'
    as _i10;
import 'feature/main_app/finance_profile/data/data_source/finance_profile_remote_datasource_imp.dart'
    as _i11;
import 'feature/main_app/finance_profile/data/repository/finance_profile_repository_imp.dart'
    as _i48;
import 'feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart'
    as _i47;
import 'feature/main_app/finance_profile/domain/usecase/account_default/account_default_usecase.dart'
    as _i103;
import 'feature/main_app/finance_profile/domain/usecase/account_enable/account_enable_usecase.dart'
    as _i95;
import 'feature/main_app/finance_profile/domain/usecase/add_card/add_card_usecase.dart'
    as _i98;
import 'feature/main_app/finance_profile/domain/usecase/card_default/card_default_usecase.dart'
    as _i100;
import 'feature/main_app/finance_profile/domain/usecase/get_account/get_account_usecase.dart'
    as _i96;
import 'feature/main_app/finance_profile/domain/usecase/get_account_iban/get_account_iban_usecase.dart'
    as _i102;
import 'feature/main_app/finance_profile/domain/usecase/get_card/get_card_usecase.dart'
    as _i101;
import 'feature/main_app/finance_profile/domain/usecase/post_account/post_account_usecase.dart'
    as _i94;
import 'feature/main_app/finance_profile/domain/usecase/remove_card/remove_card_usecase.dart'
    as _i97;
import 'feature/main_app/finance_profile/domain/usecase/update_card_title/update_card_title_usecase.dart'
    as _i99;
import 'feature/main_app/finance_profile/presentaion/bloc/account_default/account_default_bloc.dart'
    as _i114;
import 'feature/main_app/finance_profile/presentaion/bloc/account_enable/account_enable_bloc.dart'
    as _i270;
import 'feature/main_app/finance_profile/presentaion/bloc/add_card/add_card_bloc.dart'
    as _i272;
import 'feature/main_app/finance_profile/presentaion/bloc/card_default/card_default_bloc.dart'
    as _i164;
import 'feature/main_app/finance_profile/presentaion/bloc/get_account/get_account_bloc.dart'
    as _i304;
import 'feature/main_app/finance_profile/presentaion/bloc/get_account_iban/get_account_iban_bloc.dart'
    as _i260;
import 'feature/main_app/finance_profile/presentaion/bloc/get_card/get_card_bloc.dart'
    as _i203;
import 'feature/main_app/finance_profile/presentaion/bloc/post_account/post_account_bloc.dart'
    as _i255;
import 'feature/main_app/finance_profile/presentaion/bloc/remove_card/remove_card_bloc.dart'
    as _i291;
import 'feature/main_app/finance_profile/presentaion/bloc/update_card_title/update_card_title_bloc.dart'
    as _i222;
import 'feature/main_app/minio/data/data_source/minio_remote_datasource.dart'
    as _i45;
import 'feature/main_app/minio/data/data_source/minio_remote_datasource_impl.dart'
    as _i46;
import 'feature/main_app/minio/data/repository/minio_repository_imp.dart'
    as _i245;
import 'feature/main_app/minio/domain/repository/minio_repository.dart'
    as _i244;
import 'feature/main_app/minio/domain/usecase/authenticate/authenticate_usecase.dart'
    as _i306;
import 'feature/main_app/minio/domain/usecase/get_bucket/get_bucket_usecase.dart'
    as _i311;
import 'feature/main_app/minio/domain/usecase/get_object_list/get_object_list_usecase.dart'
    as _i308;
import 'feature/main_app/minio/domain/usecase/object_download/object_download_usecase.dart'
    as _i309;
import 'feature/main_app/minio/domain/usecase/object_remove/object_remove_usecase.dart'
    as _i310;
import 'feature/main_app/minio/domain/usecase/object_upload/object_upload_usecase.dart'
    as _i307;
import 'feature/main_app/minio/presentaion/bloc/authenticate/authenticate_bloc.dart'
    as _i323;
import 'feature/main_app/minio/presentaion/bloc/get_bucket/get_bucket_bloc.dart'
    as _i325;
import 'feature/main_app/minio/presentaion/bloc/get_object_list/get_object_list_bloc.dart'
    as _i355;
import 'feature/main_app/minio/presentaion/bloc/object_download/object_download_bloc.dart'
    as _i359;
import 'feature/main_app/minio/presentaion/bloc/object_remove/object_remove_bloc.dart'
    as _i350;
import 'feature/main_app/minio/presentaion/bloc/object_upload/object_upload_bloc.dart'
    as _i331;
import 'feature/main_app/profile/data/data_source/profile_remote_datasource.dart'
    as _i35;
import 'feature/main_app/profile/data/data_source/profile_remote_datasource_imp.dart'
    as _i36;
import 'feature/main_app/profile/data/repository/profile_repository_imp.dart'
    as _i105;
import 'feature/main_app/profile/domain/repository/profile_repository.dart'
    as _i104;
import 'feature/main_app/profile/domain/usecase/download_picture/download_profile_picture_usecase.dart'
    as _i115;
import 'feature/main_app/profile/domain/usecase/get_passport/get_passport_usecase.dart'
    as _i138;
import 'feature/main_app/profile/domain/usecase/get_profile/get_profile_usecase.dart'
    as _i135;
import 'feature/main_app/profile/domain/usecase/get_risk_score/get_risk_score_usecase.dart'
    as _i141;
import 'feature/main_app/profile/domain/usecase/get_score/get_score_usecase.dart'
    as _i116;
import 'feature/main_app/profile/domain/usecase/get_staff/get_staff_usecase.dart'
    as _i136;
import 'feature/main_app/profile/domain/usecase/update_passport/update_passport_usecase.dart'
    as _i139;
import 'feature/main_app/profile/domain/usecase/upload_picture/upload_profile_picture_usecase.dart'
    as _i117;
import 'feature/main_app/profile/domain/usecase/zipcode_detail/zipcode_detail_usecase.dart'
    as _i137;
import 'feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_usecase.dart'
    as _i140;
import 'feature/main_app/profile/presentaion/bloc/download_picture/download_profile_picture_bloc.dart'
    as _i157;
import 'feature/main_app/profile/presentaion/bloc/get_passport/get_passport_bloc.dart'
    as _i189;
import 'feature/main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart'
    as _i258;
import 'feature/main_app/profile/presentaion/bloc/get_risk_score/get_risk_score_bloc.dart'
    as _i169;
import 'feature/main_app/profile/presentaion/bloc/get_score/get_score_bloc.dart'
    as _i271;
import 'feature/main_app/profile/presentaion/bloc/get_staff/get_staff_bloc.dart'
    as _i305;
import 'feature/main_app/profile/presentaion/bloc/update_passport/update_passport_bloc.dart'
    as _i292;
import 'feature/main_app/profile/presentaion/bloc/upload_picture/upload_profile_picture_bloc.dart'
    as _i187;
import 'feature/main_app/profile/presentaion/bloc/zipcode_detail/zipcode_detail_bloc.dart'
    as _i264;
import 'feature/main_app/profile/presentaion/bloc/zipcode_update/zipcode_update_bloc.dart'
    as _i287;
import 'feature/main_app/relatives/data/data_source/relatives_remote_data_source.dart'
    as _i33;
import 'feature/main_app/relatives/data/data_source/relatives_remote_data_source_imp.dart'
    as _i34;
import 'feature/main_app/relatives/data/repository/relatives_repository_imp.dart'
    as _i128;
import 'feature/main_app/relatives/domain/repository/relatives_repository.dart'
    as _i127;
import 'feature/main_app/relatives/domain/usecase/add_relative/add_relative_usecase.dart'
    as _i196;
import 'feature/main_app/relatives/domain/usecase/delete_relative/delete_relative_usecase.dart'
    as _i194;
import 'feature/main_app/relatives/domain/usecase/edit_relative/edit_relative_usecase.dart'
    as _i193;
import 'feature/main_app/relatives/domain/usecase/get_relative_list/get_relative_usecase.dart'
    as _i197;
import 'feature/main_app/relatives/domain/usecase/get_relatives_type_list/get_relatives_type_list_usecase.dart'
    as _i198;
import 'feature/main_app/relatives/domain/usecase/register_without_otp/register_under_18_usecase.dart'
    as _i199;
import 'feature/main_app/relatives/domain/usecase/register_without_otp/register_upper_18_usecase.dart'
    as _i200;
import 'feature/main_app/relatives/domain/usecase/user_info_inquiry/user_info_inquiry_usecase.dart'
    as _i195;
import 'feature/main_app/relatives/presentation/bloc/add_relative/add_relative_bloc.dart'
    as _i281;
import 'feature/main_app/relatives/presentation/bloc/delete_relative/delete_relative_bloc.dart'
    as _i252;
import 'feature/main_app/relatives/presentation/bloc/edit_relative/edit_relative_bloc.dart'
    as _i212;
import 'feature/main_app/relatives/presentation/bloc/register_without_otp/register_under_18/register_under_18_bloc.dart'
    as _i214;
import 'feature/main_app/relatives/presentation/bloc/register_without_otp/register_upper_18/register_upper_18_bloc.dart'
    as _i319;
import 'feature/main_app/relatives/presentation/bloc/relatives_list/get_relative_bloc.dart'
    as _i332;
import 'feature/main_app/relatives/presentation/bloc/relatives_type_list/relatives_type_list_bloc.dart'
    as _i232;
import 'feature/main_app/relatives/presentation/bloc/user_info_inquiry/user_info_inquiry_bloc.dart'
    as _i317;
import 'feature/main_app/splash/data/data_source/version_remote_data_source.dart'
    as _i24;
import 'feature/main_app/splash/data/data_source/version_remote_data_source_imp.dart'
    as _i25;
import 'feature/main_app/splash/data/repositories/version_repository_imp.dart'
    as _i67;
import 'feature/main_app/splash/domain/repositories/version_repository.dart'
    as _i66;
import 'feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_use_case.dart'
    as _i211;
import 'feature/main_app/splash/presentaion/bloc/bloc/get_last_version_bloc.dart'
    as _i289;
import 'feature/main_app/sso/data/data_source/sso_remote_data_source.dart'
    as _i60;
import 'feature/main_app/sso/data/data_source/sso_remote_data_source_imp.dart'
    as _i61;
import 'feature/main_app/sso/data/repository/sso_repository_imp.dart' as _i209;
import 'feature/main_app/sso/domain/repository/sso_repository.dart' as _i208;
import 'feature/main_app/sso/domain/usecase/login/login_usecase.dart' as _i219;
import 'feature/main_app/sso/domain/usecase/login_otp/login_otp_usecase.dart'
    as _i217;
import 'feature/main_app/sso/domain/usecase/profile_activation/get_profile_activation_usecase.dart'
    as _i216;
import 'feature/main_app/sso/domain/usecase/sign_up/sign_up_usecase.dart'
    as _i218;
import 'feature/main_app/sso/domain/usecase/sign_up_otp/sign_up_otp_usecase.dart'
    as _i215;
import 'feature/main_app/sso/presentation/bloc/login/login_bloc.dart' as _i316;
import 'feature/main_app/sso/presentation/bloc/login_otp/login_otp_bloc.dart'
    as _i344;
import 'feature/main_app/sso/presentation/bloc/profile_activation/profile_activation_bloc.dart'
    as _i247;
import 'feature/main_app/sso/presentation/bloc/sign_up/sign_up_bloc.dart'
    as _i335;
import 'feature/main_app/sso/presentation/bloc/sign_up_otp/sign_up_otp_bloc.dart'
    as _i256;
import 'feature/main_app/vehicle_inspection/data/data_source/vehicle_inspection_remote_datasource.dart'
    as _i78;
import 'feature/main_app/vehicle_inspection/data/data_source/vehicle_inspection_remote_datasource_impl.dart'
    as _i79;
import 'feature/main_app/vehicle_inspection/data/repository/create_basic_expertise_repository_impl.dart'
    as _i91;
import 'feature/main_app/vehicle_inspection/data/repository/expertise_status_repository_impl.dart'
    as _i123;
import 'feature/main_app/vehicle_inspection/data/repository/get_process_repository_impl.dart'
    as _i125;
import 'feature/main_app/vehicle_inspection/data/repository/other_vehicle_inspection_repository_imp.dart'
    as _i83;
import 'feature/main_app/vehicle_inspection/data/repository/vehicle_inspection_repository_imp.dart'
    as _i146;
import 'feature/main_app/vehicle_inspection/domain/repository/create_basic_expertise.dart'
    as _i90;
import 'feature/main_app/vehicle_inspection/domain/repository/expertise_status_repository.dart'
    as _i122;
import 'feature/main_app/vehicle_inspection/domain/repository/get_process_repository.dart'
    as _i124;
import 'feature/main_app/vehicle_inspection/domain/repository/other_vehicle_inspection_repository.dart'
    as _i82;
import 'feature/main_app/vehicle_inspection/domain/repository/vehicle_inspection_repository.dart'
    as _i145;
import 'feature/main_app/vehicle_inspection/domain/usecase/create_basic_expertise/create_basic_expertise_usecase.dart'
    as _i142;
import 'feature/main_app/vehicle_inspection/domain/usecase/expertise_status/expertise_status_usecase.dart'
    as _i290;
import 'feature/main_app/vehicle_inspection/domain/usecase/get_process/get_process_usecase.dart'
    as _i155;
import 'feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/other_vehicle_inspection_usecase.dart'
    as _i170;
import 'feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/vehicle_inspection_usecase.dart'
    as _i262;
import 'feature/main_app/vehicle_inspection/presentation/bloc/create_basic_expertise_bloc/create_basic_expertise_bloc.dart'
    as _i259;
import 'feature/main_app/vehicle_inspection/presentation/bloc/expertise_status_bloc/expertise_status_bloc.dart'
    as _i357;
import 'feature/main_app/vehicle_inspection/presentation/bloc/get_process_bloc/get_process_bloc.dart'
    as _i318;
import 'feature/main_app/vehicle_inspection/presentation/bloc/other_vehicle_inspection_bloc/other_vehicle_inspection_bloc.dart'
    as _i324;
import 'feature/main_app/vehicle_inspection/presentation/bloc/vehicle_inspection_bloc/vehicle_inspection_bloc.dart'
    as _i329;
import 'feature/main_app/vehicle_profile/data/data_source/vehicle_profile_remote_datasource.dart'
    as _i58;
import 'feature/main_app/vehicle_profile/data/data_source/vehicle_profile_remote_datasource_impl.dart'
    as _i59;
import 'feature/main_app/vehicle_profile/data/repository/vehicle_profile_repository_imp.dart'
    as _i163;
import 'feature/main_app/vehicle_profile/domain/repository/vehicle_profile_repository.dart'
    as _i162;
import 'feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/delete_vehicle_usecase.dart'
    as _i266;
import 'feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/edit_vehicle_usecase.dart'
    as _i269;
import 'feature/main_app/vehicle_profile/domain/usecase/post_vehicle/post_vehicle_usecase.dart'
    as _i268;
import 'feature/main_app/vehicle_profile/domain/usecase/vehicle/vehicle_usecase.dart'
    as _i265;
import 'feature/main_app/vehicle_profile/domain/usecase/vehicle_inquiry/vehicle_inquiry_usecase.dart'
    as _i267;
import 'feature/main_app/vehicle_profile/presentaion/bloc/delete_vehicle/delete_vehicle_bloc.dart'
    as _i351;
import 'feature/main_app/vehicle_profile/presentaion/bloc/edit_vehicle/edit_vehicle_bloc.dart'
    as _i349;
import 'feature/main_app/vehicle_profile/presentaion/bloc/post_vehicle/post_vehicle_bloc.dart'
    as _i343;
import 'feature/main_app/vehicle_profile/presentaion/bloc/vehicle/vehicle_bloc.dart'
    as _i342;
import 'feature/main_app/vehicle_profile/presentaion/bloc/vehicle_inquiry/vehicle_inquiry_bloc.dart'
    as _i334;
import 'feature/main_app/vehicle_service/data/data_source/vehicle_dept_remote_datasource.dart'
    as _i14;
import 'feature/main_app/vehicle_service/data/data_source/vehicle_dept_remote_datasource_impl.dart'
    as _i15;
import 'feature/main_app/vehicle_service/data/repository/vehicle_dept_repository_impl.dart'
    as _i113;
import 'feature/main_app/vehicle_service/domain/repository/vehicle_dept_repository.dart'
    as _i112;
import 'feature/main_app/vehicle_service/domain/usecase/vehicle_dept/vehicle_dept_usecase.dart'
    as _i126;
import 'feature/main_app/vehicle_service/presentation/bloc/vehicle_debt_bloc/vehicle_dept_bloc.dart'
    as _i226;
import 'feature/main_app/wallet/data/data_source/wallet_remote_datasource.dart'
    as _i64;
import 'feature/main_app/wallet/data/data_source/wallet_remote_datasource_imp.dart'
    as _i65;
import 'feature/main_app/wallet/data/repository/wallet_repository_imp.dart'
    as _i159;
import 'feature/main_app/wallet/domain/repository/wallet_repository.dart'
    as _i158;
import 'feature/main_app/wallet/domain/usecases/create_user/create_user_usecase.dart'
    as _i293;
import 'feature/main_app/wallet/domain/usecases/create_wallet/create_wallet_usecase.dart'
    as _i294;
import 'feature/main_app/wallet/domain/usecases/deposit_result/deposit_result_usecase.dart'
    as _i313;
import 'feature/main_app/wallet/domain/usecases/payment_verify/payment_verify_usecase.dart'
    as _i300;
import 'feature/main_app/wallet/domain/usecases/send_otp/send_otp_usecase.dart'
    as _i295;
import 'feature/main_app/wallet/domain/usecases/wallet_balance/wallet_balance_usecase.dart'
    as _i301;
import 'feature/main_app/wallet/domain/usecases/wallet_code/wallet_code_usecase.dart'
    as _i302;
import 'feature/main_app/wallet/domain/usecases/wallet_payment/wallet_payment_usecase.dart'
    as _i299;
import 'feature/main_app/wallet/domain/usecases/wallet_to_wallet/wallet_to_wallet_usecase.dart'
    as _i297;
import 'feature/main_app/wallet/domain/usecases/wallet_transaction/wallet_transaction_usecase.dart'
    as _i296;
import 'feature/main_app/wallet/domain/usecases/wallet_withdraw/wallet_withdraw_usecase.dart'
    as _i298;
import 'feature/main_app/wallet/presentation/bloc/create_user/create_user_bloc.dart'
    as _i338;
import 'feature/main_app/wallet/presentation/bloc/create_wallet/create_wallet_bloc.dart'
    as _i315;
import 'feature/main_app/wallet/presentation/bloc/deposit_result/deposit_result_bloc.dart'
    as _i353;
import 'feature/main_app/wallet/presentation/bloc/payment_verify/payment_verify_bloc.dart'
    as _i312;
import 'feature/main_app/wallet/presentation/bloc/send_otp/send_otp_bloc.dart'
    as _i356;
import 'feature/main_app/wallet/presentation/bloc/wallet_balance/wallet_balance_bloc.dart'
    as _i340;
import 'feature/main_app/wallet/presentation/bloc/wallet_code/wallet_code_bloc.dart'
    as _i336;
import 'feature/main_app/wallet/presentation/bloc/wallet_payment/wallet_payment_bloc.dart'
    as _i354;
import 'feature/main_app/wallet/presentation/bloc/wallet_to_wallet/wallet_to_wallet_bloc.dart'
    as _i360;
import 'feature/main_app/wallet/presentation/bloc/wallet_transaction/wallet_transaction_bloc.dart'
    as _i358;
import 'feature/main_app/wallet/presentation/bloc/wallet_withdraw/wallet_withdraw_bloc.dart'
    as _i362;
import 'feature/otrs_app/data/data_source/otrs_data_source.dart' as _i8;
import 'feature/otrs_app/data/data_source/otrs_data_source_impl.dart' as _i9;
import 'feature/otrs_app/data/repository/ticketing_confirm_repository_impl.dart'
    as _i54;
import 'feature/otrs_app/data/repository/ticketing_info_repository_impl.dart'
    as _i52;
import 'feature/otrs_app/data/repository/ticketing_list_repository_mipl.dart'
    as _i13;
import 'feature/otrs_app/data/repository/ticketing_login_repository_impl.dart'
    as _i28;
import 'feature/otrs_app/data/repository/ticketing_search_repository_impl.dart'
    as _i168;
import 'feature/otrs_app/domain/repository/ticketing_confirm_repository.dart'
    as _i53;
import 'feature/otrs_app/domain/repository/ticketing_info_repository.dart'
    as _i51;
import 'feature/otrs_app/domain/repository/ticketing_list_repository.dart'
    as _i12;
import 'feature/otrs_app/domain/repository/ticketing_login_repository.dart'
    as _i27;
import 'feature/otrs_app/domain/repository/ticketing_search_repository.dart'
    as _i167;
import 'feature/otrs_app/domain/usecase/confirm/ticketing_confirm_usecase.dart'
    as _i55;
import 'feature/otrs_app/domain/usecase/info/ticketing_info_usecase.dart'
    as _i144;
import 'feature/otrs_app/domain/usecase/list/ticketing_list_usecase.dart'
    as _i26;
import 'feature/otrs_app/domain/usecase/login/ticketing_login_usecase.dart'
    as _i129;
import 'feature/otrs_app/domain/usecase/search/ticketing_search_usecase.dart'
    as _i225;
import 'feature/otrs_app/presentation/bloc/confirm/ticketing_confirm_bloc.dart'
    as _i190;
import 'feature/otrs_app/presentation/bloc/info/ticketing_info_bloc.dart'
    as _i239;
import 'feature/otrs_app/presentation/bloc/list/ticketing_list_bloc.dart'
    as _i171;
import 'feature/otrs_app/presentation/bloc/login/ticketing_login_bloc.dart'
    as _i275;
import 'feature/otrs_app/presentation/bloc/search/ticketing_search_bloc.dart'
    as _i274;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i3.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.lazySingleton<_i4.InsurancesListDataSource>(
        () => _i5.InsurancesListDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i6.WithdrawUnitLinkedRemoteDataSource>(
        () => _i7.WithdrawUnitLinkedRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i8.OtrsRemoteDataSource>(
        () => _i9.OtrsRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i10.FinanceProfileRemoteDataSource>(
        () => _i11.FinanceProfileRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i12.TicketingListRepository>(() =>
        _i13.TicketingListRepositoryImpl(
            remoteDataSource: gh<_i8.OtrsRemoteDataSource>()));
    gh.lazySingleton<_i14.VehicleDeptRemoteDataSource>(
        () => _i15.VehicleDeptRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i16.BuyBackRemoteDataSource>(
        () => _i17.BuyBackRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i18.BuyBackRepository>(() => _i19.BuyBackRepositoryImpl(
        buyBackRemoteDataSource: gh<_i16.BuyBackRemoteDataSource>()));
    gh.lazySingleton<_i20.CostRegistrationRemoteDataSource>(
        () => _i21.CostRegistrationRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i22.IntroductionRemoteDataSource>(
        () => _i23.IntroductionRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i24.VersionRemoteDataSource>(
        () => _i25.VersionRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.factory<_i26.TicketingListUsecase>(
        () => _i26.TicketingListUsecase(gh<_i12.TicketingListRepository>()));
    gh.lazySingleton<_i27.TicketingLoginRepository>(() =>
        _i28.TicketingLoginRepositoryImpl(
            remoteDataSource: gh<_i8.OtrsRemoteDataSource>()));
    gh.lazySingleton<_i29.TicketsRemoteDataSource>(
        () => _i30.TicketsRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i31.CostTrackingRemoteDataSource>(
        () => _i32.CostTrackingRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i33.RelativesRemoteDataSource>(
        () => _i34.RelativesRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i35.ProfileRemoteDataSource>(
        () => _i36.ProfileRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i37.WithdrawRemoteDataSource>(
        () => _i38.WithdrawDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i39.HealthCareCEntersRemoteDataSource>(
        () => _i40.HealthcareCentersRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i41.TicketsRepository>(() => _i42.TicketsRepositoryImpl(
        ticketsRemoteDataSource: gh<_i29.TicketsRemoteDataSource>()));
    gh.lazySingleton<_i43.CostRegistrationRepository>(() =>
        _i44.CostRegistrationRepositoryImp(
            costRegistrationRemoteDataSource:
                gh<_i20.CostRegistrationRemoteDataSource>()));
    gh.lazySingleton<_i45.MinioRemoteDataSource>(
        () => _i46.MinioRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i47.FinanceProfileRepository>(() =>
        _i48.FinanceProfileRepositoryImpl(
            financeProfileRemoteDataSource:
                gh<_i10.FinanceProfileRemoteDataSource>()));
    gh.lazySingleton<_i49.GetAgentsBranchesRemoteDataSource>(
        () => _i50.GetAgentsBranchesRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i51.TicketingInfoRepository>(() =>
        _i52.TicketingInfoRepositoryImpl(
            remoteDataSource: gh<_i8.OtrsRemoteDataSource>()));
    gh.lazySingleton<_i53.TicketingConfirmRepository>(() =>
        _i54.TicketingConfirmRepositoryImpl(
            remoteDataSource: gh<_i8.OtrsRemoteDataSource>()));
    gh.factory<_i55.TicketingConfirmUsecase>(() =>
        _i55.TicketingConfirmUsecase(gh<_i53.TicketingConfirmRepository>()));
    gh.lazySingleton<_i56.FaqRemoteDataSource>(
        () => _i57.FaqRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i58.VehicleProfileRemoteDataSource>(
        () => _i59.VehicleProfileRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i60.SsoRemoteDataSource>(
        () => _i61.SsoRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i62.IntroductionTrackingRemoteDataSource>(() =>
        _i63.IntroductionTrackingRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i64.WalletRemoteDataSource>(
        () => _i65.WalletRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i66.VersionRepository>(() => _i67.VersionRepositoryImp(
        versionRemoteDataSource: gh<_i24.VersionRemoteDataSource>()));
    gh.lazySingleton<_i68.SubmitDiscontentRemoteDataSource>(
        () => _i69.SubmitDiscontentRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i70.LoanRemoteDataSource>(
        () => _i71.LoanRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i72.InsurancesListRepository>(() =>
        _i73.InsurancesListRepositoryImpl(
            insurancesListDataSource: gh<_i4.InsurancesListDataSource>()));
    gh.lazySingleton<_i74.DepositUnitLinkRemoteDataSource>(
        () => _i75.DepositUnitLinkRemoteDataSourceImp(dio: gh<_i3.Dio>()));
    gh.factory<_i76.ValidateBuyBackUseCase>(() => _i76.ValidateBuyBackUseCase(
        buyBackRepository: gh<_i18.BuyBackRepository>()));
    gh.factory<_i77.RegisterBuyBackUseCase>(() => _i77.RegisterBuyBackUseCase(
        buyBackRepository: gh<_i18.BuyBackRepository>()));
    gh.lazySingleton<_i78.VehicleInspectionRemoteDatasource>(
        () => _i79.VehicleInspectionRemoteDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i80.SubmitDiscontentRepository>(() =>
        _i81.SubmitDiscontentRepositoryImpl(
            remoteDataSource: gh<_i68.SubmitDiscontentRemoteDataSource>()));
    gh.lazySingleton<_i82.OtherVehicleInspectionRepository>(() =>
        _i83.OtherVehicleInspectionRepositoryImpl(
            vehicleInspectionRemoteDatasource:
                gh<_i78.VehicleInspectionRemoteDatasource>()));
    gh.lazySingleton<_i84.CostTrackingRepository>(() =>
        _i85.CostTrackingRepositoryImp(
            costTrackingRemoteDataSource:
                gh<_i31.CostTrackingRemoteDataSource>()));
    gh.lazySingleton<_i86.FaqRepository>(() => _i87.FaqRepositoryImpl(
        faqRemoteDataSource: gh<_i56.FaqRemoteDataSource>()));
    gh.lazySingleton<_i88.GetClinicSearchResultRepository>(() =>
        _i89.GetClinicSearchResultRepositoryImpl(
            remoteDataSource: gh<_i39.HealthCareCEntersRemoteDataSource>()));
    gh.lazySingleton<_i90.CreateBasicExpertiseRepository>(() =>
        _i91.CreateBasicExpertiseRepositoryImpl(
            vehicleInspectionRemoteDatasource:
                gh<_i78.VehicleInspectionRemoteDatasource>()));
    gh.lazySingleton<_i92.IntroductionTrackingRepository>(() =>
        _i93.IntroductionTrackingRepositoryImp(
            introductionTrackingRemoteDataSource:
                gh<_i62.IntroductionTrackingRemoteDataSource>()));
    gh.factory<_i94.PostAccountUseCase>(() => _i94.PostAccountUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i95.AccountEnableUseCase>(() => _i95.AccountEnableUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i96.GetAccountUseCase>(() => _i96.GetAccountUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i97.RemoveCardUseCase>(() => _i97.RemoveCardUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i98.AddCardUseCase>(() => _i98.AddCardUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i99.UpdateCardTitleUseCase>(() => _i99.UpdateCardTitleUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i100.CardDefaultUseCase>(() => _i100.CardDefaultUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i101.GetCardUseCase>(() => _i101.GetCardUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i102.GetAccountIbanUseCase>(() => _i102.GetAccountIbanUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.factory<_i103.AccountDefaultUseCase>(() => _i103.AccountDefaultUseCase(
        financeProfileRepository: gh<_i47.FinanceProfileRepository>()));
    gh.lazySingleton<_i104.ProfileRepository>(() => _i105.ProfileRepositoryImpl(
        profileRemoteDataSource: gh<_i35.ProfileRemoteDataSource>()));
    gh.lazySingleton<_i106.WithdrawUnitLinkedRepository>(() =>
        _i107.WithdrawUnitLinkedRepositoryImp(
            withdrawUnitLinkedRemoteDataSource:
                gh<_i6.WithdrawUnitLinkedRemoteDataSource>()));
    gh.lazySingleton<_i108.LoanRepository>(() => _i109.LoanRepositoryImpl(
        loanRemoteDataSource: gh<_i70.LoanRemoteDataSource>()));
    gh.lazySingleton<_i110.GetClinicsTypesRepository>(() =>
        _i111.GetClinicsTypesRepositoryImpl(
            remoteDataSource: gh<_i39.HealthCareCEntersRemoteDataSource>()));
    gh.lazySingleton<_i112.VehicleDeptRepository>(() =>
        _i113.VehicleDeptRepositoryImpl(
            vehicleDeptRemoteDataSource:
                gh<_i14.VehicleDeptRemoteDataSource>()));
    gh.lazySingleton<_i114.AccountDefaultBloc>(() => _i114.AccountDefaultBloc(
        accountDefaultUseCase: gh<_i103.AccountDefaultUseCase>()));
    gh.factory<_i115.DownloadProfilePictureUseCase>(() =>
        _i115.DownloadProfilePictureUseCase(
            repository: gh<_i104.ProfileRepository>()));
    gh.factory<_i116.GetScoreUseCase>(
        () => _i116.GetScoreUseCase(repository: gh<_i104.ProfileRepository>()));
    gh.factory<_i117.UploadProfilePictureUseCase>(() =>
        _i117.UploadProfilePictureUseCase(
            repository: gh<_i104.ProfileRepository>()));
    gh.factory<_i118.TicketsUseCase>(
        () => _i118.TicketsUseCase(gh<_i41.TicketsRepository>()));
    gh.factory<_i119.RemoveTicketUseCase>(
        () => _i119.RemoveTicketUseCase(gh<_i41.TicketsRepository>()));
    gh.factory<_i120.DetailsTicketUseCase>(
        () => _i120.DetailsTicketUseCase(gh<_i41.TicketsRepository>()));
    gh.factory<_i121.GetPersonFamilyListUseCase>(() =>
        _i121.GetPersonFamilyListUseCase(
            costTrackingRepository: gh<_i84.CostTrackingRepository>()));
    gh.lazySingleton<_i122.ExpertiseStatusRepository>(() =>
        _i123.ExpertiseStatusRepositoryImpl(
            vehicleInspectionRemoteDatasource:
                gh<_i78.VehicleInspectionRemoteDatasource>()));
    gh.lazySingleton<_i124.GetProcessRepository>(() =>
        _i125.GetProcessRepositoryImpl(
            vehicleInspectionRemoteDatasource:
                gh<_i78.VehicleInspectionRemoteDatasource>()));
    gh.factory<_i126.VehicleDeptUseCase>(() => _i126.VehicleDeptUseCase(
        vehicleDeptRepository: gh<_i112.VehicleDeptRepository>()));
    gh.lazySingleton<_i127.RelativesRepository>(() =>
        _i128.RelativesRepositoryImpl(
            relativesDataSource: gh<_i33.RelativesRemoteDataSource>()));
    gh.factory<_i129.TicketingLoginUsecase>(
        () => _i129.TicketingLoginUsecase(gh<_i27.TicketingLoginRepository>()));
    gh.lazySingleton<_i130.DetailsTicketBloc>(() => _i130.DetailsTicketBloc(
        detailsTicketUseCase: gh<_i120.DetailsTicketUseCase>()));
    gh.factory<_i131.SavedMoneyUseCase>(() =>
        _i131.SavedMoneyUseCase(loanRepository: gh<_i108.LoanRepository>()));
    gh.factory<_i132.RegisterLoanUseCase>(() =>
        _i132.RegisterLoanUseCase(loanRepository: gh<_i108.LoanRepository>()));
    gh.factory<_i133.ValidateLoanUseCase>(() =>
        _i133.ValidateLoanUseCase(loanRepository: gh<_i108.LoanRepository>()));
    gh.lazySingleton<_i134.RemoveTicketBloc>(() => _i134.RemoveTicketBloc(
        removeTicketUseCase: gh<_i119.RemoveTicketUseCase>()));
    gh.factory<_i135.GetProfileUseCase>(() => _i135.GetProfileUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i136.GetStaffUseCase>(() => _i136.GetStaffUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i137.ZipcodeDetailUseCase>(() => _i137.ZipcodeDetailUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i138.GetPassportUseCase>(() => _i138.GetPassportUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i139.UpdatePassportUseCase>(() => _i139.UpdatePassportUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i140.ZipcodeUpdateUseCase>(() => _i140.ZipcodeUpdateUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i141.GetRiskScoreUseCase>(() => _i141.GetRiskScoreUseCase(
        profileRepository: gh<_i104.ProfileRepository>()));
    gh.factory<_i142.CreateBasicExpertiseUseCase>(() =>
        _i142.CreateBasicExpertiseUseCase(
            createBasicExpertiseRepository:
                gh<_i90.CreateBasicExpertiseRepository>()));
    gh.factory<_i143.LifeInsurancesUseCase>(
        () => _i143.LifeInsurancesUseCase(gh<_i72.InsurancesListRepository>()));
    gh.factory<_i144.TicketingInfoUseCase>(
        () => _i144.TicketingInfoUseCase(gh<_i51.TicketingInfoRepository>()));
    gh.lazySingleton<_i145.VehicleInspectionRepository>(() =>
        _i146.VehicleInspectionRepositoryImpl(
            vehicleInspectionRemoteDatasource:
                gh<_i78.VehicleInspectionRemoteDatasource>()));
    gh.lazySingleton<_i147.GetPersonFamilyListBloc>(() =>
        _i147.GetPersonFamilyListBloc(
            getPersonFamilyListUseCase:
                gh<_i121.GetPersonFamilyListUseCase>()));
    gh.factory<_i148.PersonVoucherRequestListUseCase>(() =>
        _i148.PersonVoucherRequestListUseCase(
            introductionTrackingRepository:
                gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i149.SendToNextLevelUseCase>(() => _i149.SendToNextLevelUseCase(
        introductionTrackingRepository:
            gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i150.GetActiveByPersonVoucherUseCase>(() =>
        _i150.GetActiveByPersonVoucherUseCase(
            introductionTrackingRepository:
                gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i151.GetAllFamilyByMainNationalCodeUseCase>(() =>
        _i151.GetAllFamilyByMainNationalCodeUseCase(
            introductionTrackingRepository:
                gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i152.VoucherRequestGetByIdUseCase>(() =>
        _i152.VoucherRequestGetByIdUseCase(
            introductionTrackingRepository:
                gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i153.InsurancesListUseCase>(
        () => _i153.InsurancesListUseCase(gh<_i72.InsurancesListRepository>()));
    gh.lazySingleton<_i154.RegisterBuyBackBloc>(() => _i154.RegisterBuyBackBloc(
        registerBuyBackUseCase: gh<_i77.RegisterBuyBackUseCase>()));
    gh.factory<_i155.GetProcessUseCase>(() => _i155.GetProcessUseCase(
        getProcessRepository: gh<_i124.GetProcessRepository>()));
    gh.lazySingleton<_i156.InsurancesListBloc>(() => _i156.InsurancesListBloc(
        insurancesListUseCase: gh<_i153.InsurancesListUseCase>()));
    gh.lazySingleton<_i157.DownloadProfilePictureBloc>(() =>
        _i157.DownloadProfilePictureBloc(
            useCase: gh<_i115.DownloadProfilePictureUseCase>()));
    gh.lazySingleton<_i158.WalletRepository>(() => _i159.WalletRepositoryImp(
        walletRemoteDataSource: gh<_i64.WalletRemoteDataSource>()));
    gh.lazySingleton<_i160.IntroductionRepository>(() =>
        _i161.IntroductionRepositoryImp(
            introductionRemoteDataSource:
                gh<_i22.IntroductionRemoteDataSource>()));
    gh.lazySingleton<_i162.VehicleProfileRepository>(() =>
        _i163.VehicleProfileRepositoryImpl(
            vehicleProfileRemoteDataSource:
                gh<_i58.VehicleProfileRemoteDataSource>()));
    gh.lazySingleton<_i164.CardDefaultBloc>(() => _i164.CardDefaultBloc(
        cardDefaultUseCase: gh<_i100.CardDefaultUseCase>()));
    gh.lazySingleton<_i165.ValidateLoanBloc>(() => _i165.ValidateLoanBloc(
        validateLoanUseCase: gh<_i133.ValidateLoanUseCase>()));
    gh.lazySingleton<_i166.TicketsBloc>(
        () => _i166.TicketsBloc(ticketsUseCase: gh<_i118.TicketsUseCase>()));
    gh.lazySingleton<_i167.TicketingSearchRepository>(() =>
        _i168.TicketingSearchRepositoryImpl(
            remoteDataSource: gh<_i8.OtrsRemoteDataSource>()));
    gh.lazySingleton<_i169.GetRiskScoreBloc>(() => _i169.GetRiskScoreBloc(
        getRiskScoreUseCase: gh<_i141.GetRiskScoreUseCase>()));
    gh.factory<_i170.OtherVehicleInspectionUseCase>(() =>
        _i170.OtherVehicleInspectionUseCase(
            otherVehicleInspectionRepository:
                gh<_i82.OtherVehicleInspectionRepository>()));
    gh.lazySingleton<_i171.TicketingListBloc>(() => _i171.TicketingListBloc(
        ticketingListUsecase: gh<_i26.TicketingListUsecase>()));
    gh.lazySingleton<_i172.LifeInsurancesBloc>(() => _i172.LifeInsurancesBloc(
        lifeInsurancesUseCase: gh<_i143.LifeInsurancesUseCase>()));
    gh.factory<_i173.CreateWithdrawUnitLinkedUseCase>(() =>
        _i173.CreateWithdrawUnitLinkedUseCase(
            gh<_i106.WithdrawUnitLinkedRepository>()));
    gh.factory<_i174.FileListUseCase>(() => _i174.FileListUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i175.CreateCostUseCase>(() => _i175.CreateCostUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i176.GetEnvelopeSendInfoUseCase>(() =>
        _i176.GetEnvelopeSendInfoUseCase(
            costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i177.DestroyUseCase>(() => _i177.DestroyUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i178.GetByIdUsecase>(() => _i178.GetByIdUsecase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i179.GetAllFamilyForAllContractUsecase>(() =>
        _i179.GetAllFamilyForAllContractUsecase(
            costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i180.UploadPersonCostImageUseCase>(() =>
        _i180.UploadPersonCostImageUseCase(
            costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i181.CheckRepetitiveUseCase>(() => _i181.CheckRepetitiveUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i182.GetAllCostDescUsecase>(() => _i182.GetAllCostDescUsecase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i183.GetActiveByPersonUsecase>(() =>
        _i183.GetActiveByPersonUsecase(
            costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i184.SendEnvelopeUseCase>(() => _i184.SendEnvelopeUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.factory<_i185.UploadUseCase>(() => _i185.UploadUseCase(
        costRegistrationRepository: gh<_i43.CostRegistrationRepository>()));
    gh.lazySingleton<_i186.GetAllFamilyByMainNationalCodeBloc>(() =>
        _i186.GetAllFamilyByMainNationalCodeBloc(
            getAllFamilyByMainNationalCodeUseCase:
                gh<_i151.GetAllFamilyByMainNationalCodeUseCase>()));
    gh.lazySingleton<_i187.UploadProfilePictureBloc>(() =>
        _i187.UploadProfilePictureBloc(
            uploadUseCase: gh<_i117.UploadProfilePictureUseCase>()));
    gh.factory<_i188.SubmitDiscontentUseCase>(() =>
        _i188.SubmitDiscontentUseCase(
            repository: gh<_i80.SubmitDiscontentRepository>()));
    gh.lazySingleton<_i189.GetPassportBloc>(() => _i189.GetPassportBloc(
        getPassportUseCase: gh<_i138.GetPassportUseCase>()));
    gh.lazySingleton<_i190.TicketingConfirmBloc>(() =>
        _i190.TicketingConfirmBloc(
            usecase: gh<_i55.TicketingConfirmUsecase>()));
    gh.lazySingleton<_i191.PersonVoucherRequestListBloc>(() =>
        _i191.PersonVoucherRequestListBloc(
            personVoucherRequestListUseCase:
                gh<_i148.PersonVoucherRequestListUseCase>()));
    gh.lazySingleton<_i192.GetActiveByPersonForVoucherBloc>(() =>
        _i192.GetActiveByPersonForVoucherBloc(
            getActiveByPersonVoucherUseCase:
                gh<_i150.GetActiveByPersonVoucherUseCase>()));
    gh.factory<_i193.EditRelativeUseCase>(() => _i193.EditRelativeUseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i194.DeleteRelativeUseCase>(() => _i194.DeleteRelativeUseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i195.UserInfoInquiryUseCase>(() => _i195.UserInfoInquiryUseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i196.AddRelativeUseCase>(() => _i196.AddRelativeUseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i197.GetRelativeListUseCase>(() => _i197.GetRelativeListUseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i198.GetRelativesTypeListUseCase>(() =>
        _i198.GetRelativesTypeListUseCase(
            relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i199.RegisterUnder18UseCase>(() => _i199.RegisterUnder18UseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i200.RegisterUpper18UseCase>(() => _i200.RegisterUpper18UseCase(
        relativesRepository: gh<_i127.RelativesRepository>()));
    gh.factory<_i201.GetCategoryUseCase>(() =>
        _i201.GetCategoryUseCase(faqRepository: gh<_i86.FaqRepository>()));
    gh.factory<_i202.FAQUseCase>(
        () => _i202.FAQUseCase(faqRepository: gh<_i86.FaqRepository>()));
    gh.lazySingleton<_i203.GetCardBloc>(
        () => _i203.GetCardBloc(getCardUseCase: gh<_i101.GetCardUseCase>()));
    gh.lazySingleton<_i204.GetEnvelopeSendInfoBloc>(() =>
        _i204.GetEnvelopeSendInfoBloc(
            getEnvelopeSendInfoUseCase:
                gh<_i176.GetEnvelopeSendInfoUseCase>()));
    gh.lazySingleton<_i205.WithdrawRepository>(() =>
        _i206.WithdrawRepositoryImpl(
            withdrawRemoteDataSource: gh<_i37.WithdrawRemoteDataSource>()));
    gh.factory<_i207.IbanInquiryUseCase>(
        () => _i207.IbanInquiryUseCase(gh<_i108.LoanRepository>()));
    gh.lazySingleton<_i208.SsoRepository>(() => _i209.SsoRepositoryImpl(
        remoteDataSource: gh<_i60.SsoRemoteDataSource>()));
    gh.lazySingleton<_i210.UploadBloc>(
        () => _i210.UploadBloc(uploadUseCase: gh<_i185.UploadUseCase>()));
    gh.factory<_i211.GetLastVersionUseCase>(() => _i211.GetLastVersionUseCase(
        versionRepository: gh<_i66.VersionRepository>()));
    gh.lazySingleton<_i212.EditRelativeBloc>(() => _i212.EditRelativeBloc(
        editRelativeUseCase: gh<_i193.EditRelativeUseCase>()));
    gh.lazySingleton<_i213.GetCategoryBloc>(() => _i213.GetCategoryBloc(
        getCategoryUseCase: gh<_i201.GetCategoryUseCase>()));
    gh.lazySingleton<_i214.RegisterUnder18Bloc>(() => _i214.RegisterUnder18Bloc(
        registerUnder18UseCase: gh<_i199.RegisterUnder18UseCase>()));
    gh.factory<_i215.SignUpOtpUseCase>(
        () => _i215.SignUpOtpUseCase(ssoRepository: gh<_i208.SsoRepository>()));
    gh.factory<_i216.GetProfileActivationUseCase>(() =>
        _i216.GetProfileActivationUseCase(
            ssoRepository: gh<_i208.SsoRepository>()));
    gh.factory<_i217.LoginOtpUseCase>(
        () => _i217.LoginOtpUseCase(ssoRepository: gh<_i208.SsoRepository>()));
    gh.factory<_i218.SignUpUseCase>(
        () => _i218.SignUpUseCase(ssoRepository: gh<_i208.SsoRepository>()));
    gh.factory<_i219.LoginUseCase>(
        () => _i219.LoginUseCase(ssoRepository: gh<_i208.SsoRepository>()));
    gh.lazySingleton<_i220.DepositUnitLinkRepository>(() =>
        _i221.DepositUnitLinkRepositoryImp(
            depositUnitLinkRemoteDataSource:
                gh<_i74.DepositUnitLinkRemoteDataSource>()));
    gh.lazySingleton<_i222.UpdateCardTitleBloc>(() => _i222.UpdateCardTitleBloc(
        updateCardTitleUseCase: gh<_i99.UpdateCardTitleUseCase>()));
    gh.lazySingleton<_i223.GetAllFamilyForAllContractBloc>(() =>
        _i223.GetAllFamilyForAllContractBloc(
            getAllFamilyForAllContractUsecase:
                gh<_i179.GetAllFamilyForAllContractUsecase>()));
    gh.lazySingleton<_i224.SavedMoneyBloc>(() =>
        _i224.SavedMoneyBloc(savedMoneyUseCase: gh<_i131.SavedMoneyUseCase>()));
    gh.factory<_i225.TicketingSearchUsecase>(() =>
        _i225.TicketingSearchUsecase(gh<_i167.TicketingSearchRepository>()));
    gh.lazySingleton<_i226.VehicleDeptBloc>(() => _i226.VehicleDeptBloc(
        vehicleDeptUseCase: gh<_i126.VehicleDeptUseCase>()));
    gh.factory<_i227.GetAllClinicUseCase>(() => _i227.GetAllClinicUseCase(
        introductionRepository: gh<_i160.IntroductionRepository>()));
    gh.factory<_i228.PersonVoucherCreateUseCase>(() =>
        _i228.PersonVoucherCreateUseCase(
            introductionRepository: gh<_i160.IntroductionRepository>()));
    gh.factory<_i229.GetLastVoucherNumberUseCase>(() =>
        _i229.GetLastVoucherNumberUseCase(
            introductionRepository: gh<_i160.IntroductionRepository>()));
    gh.factory<_i230.GetCitiesUseCase>(() => _i230.GetCitiesUseCase(
        introductionRepository: gh<_i160.IntroductionRepository>()));
    gh.lazySingleton<_i231.VoucherRequestGetByIdBloc>(() =>
        _i231.VoucherRequestGetByIdBloc(
            voucherRequestGetByIdUseCase:
                gh<_i152.VoucherRequestGetByIdUseCase>()));
    gh.lazySingleton<_i232.RelativesTypeListBloc>(() =>
        _i232.RelativesTypeListBloc(
            relativesListUseCase: gh<_i198.GetRelativesTypeListUseCase>()));
    gh.lazySingleton<_i233.GetAgentsListRepository>(() =>
        _i234.GetAgentsBranchesRepositoryImpl(
            remoteDataSource: gh<_i49.GetAgentsBranchesRemoteDataSource>()));
    gh.lazySingleton<_i235.CreateWithdrawBloc>(() => _i235.CreateWithdrawBloc(
        createWithdrawUnitLinkedUseCase:
            gh<_i173.CreateWithdrawUnitLinkedUseCase>()));
    gh.lazySingleton<_i236.DestroyBloc>(
        () => _i236.DestroyBloc(destroyUseCase: gh<_i177.DestroyUseCase>()));
    gh.lazySingleton<_i237.CreateCostBloc>(() =>
        _i237.CreateCostBloc(createCostUseCase: gh<_i175.CreateCostUseCase>()));
    gh.lazySingleton<_i238.FaqQaBloc>(
        () => _i238.FaqQaBloc(faqUseCase: gh<_i202.FAQUseCase>()));
    gh.lazySingleton<_i239.TicketingInfoBloc>(() =>
        _i239.TicketingInfoBloc(usecase: gh<_i144.TicketingInfoUseCase>()));
    gh.lazySingleton<_i240.CheckRepetitiveBloc>(() => _i240.CheckRepetitiveBloc(
        checkRepetitiveUseCase: gh<_i181.CheckRepetitiveUseCase>()));
    gh.factory<_i241.CreateCashWithdrawUseCase>(() =>
        _i241.CreateCashWithdrawUseCase(
            withdrawRepository: gh<_i205.WithdrawRepository>()));
    gh.factory<_i242.SettlementWithdrawUseCase>(() =>
        _i242.SettlementWithdrawUseCase(
            withdrawRepository: gh<_i205.WithdrawRepository>()));
    gh.factory<_i243.ValidateCashWithdrawUseCase>(() =>
        _i243.ValidateCashWithdrawUseCase(
            withdrawRepository: gh<_i205.WithdrawRepository>()));
    gh.lazySingleton<_i244.MinioRepository>(() => _i245.MinioRepositoryImpl(
        minioRemoteDataSource: gh<_i45.MinioRemoteDataSource>()));
    gh.lazySingleton<_i246.SendEnvelopBloc>(() => _i246.SendEnvelopBloc(
        sendEnvelopeUseCase: gh<_i184.SendEnvelopeUseCase>()));
    gh.lazySingleton<_i247.GetProfileActivationBloc>(() =>
        _i247.GetProfileActivationBloc(
            getProfileActivationUseCase:
                gh<_i216.GetProfileActivationUseCase>()));
    gh.lazySingleton<_i248.FileListBloc>(
        () => _i248.FileListBloc(fileListUseCase: gh<_i174.FileListUseCase>()));
    gh.factory<_i249.GetAgentsListUseCase>(() => _i249.GetAgentsListUseCase(
        repository: gh<_i233.GetAgentsListRepository>()));
    gh.factory<_i250.GetCitiesAgentsBranchesUseCase>(() =>
        _i250.GetCitiesAgentsBranchesUseCase(
            repository: gh<_i233.GetAgentsListRepository>()));
    gh.factory<_i251.GetStatesAgentsBranchesUseCase>(() =>
        _i251.GetStatesAgentsBranchesUseCase(
            repository: gh<_i233.GetAgentsListRepository>()));
    gh.lazySingleton<_i252.DeleteRelativeBloc>(() => _i252.DeleteRelativeBloc(
        deleteRelativeUseCase: gh<_i194.DeleteRelativeUseCase>()));
    gh.lazySingleton<_i253.ValidateBuyBackBloc>(() => _i253.ValidateBuyBackBloc(
        validateBuyBackUseCase: gh<_i76.ValidateBuyBackUseCase>()));
    gh.factory<_i254.GetClinicSearchResultUseCase>(() =>
        _i254.GetClinicSearchResultUseCase(
            repository: gh<_i88.GetClinicSearchResultRepository>()));
    gh.lazySingleton<_i255.PostAccountBloc>(() => _i255.PostAccountBloc(
        postAccountUseCase: gh<_i94.PostAccountUseCase>()));
    gh.lazySingleton<_i256.SignUpOtpBloc>(() =>
        _i256.SignUpOtpBloc(signUpOtpUseCase: gh<_i215.SignUpOtpUseCase>()));
    gh.lazySingleton<_i257.GetByIdcBloc>(
        () => _i257.GetByIdcBloc(getByIdUsecase: gh<_i178.GetByIdUsecase>()));
    gh.lazySingleton<_i258.GetProfileBloc>(() =>
        _i258.GetProfileBloc(getProfileUseCase: gh<_i135.GetProfileUseCase>()));
    gh.lazySingleton<_i259.CreateBasicExpertiseBloc>(() =>
        _i259.CreateBasicExpertiseBloc(
            createBasicExpertiseUseCase:
                gh<_i142.CreateBasicExpertiseUseCase>()));
    gh.lazySingleton<_i260.GetAccountIbanBloc>(() => _i260.GetAccountIbanBloc(
        getAccountIbanUseCase: gh<_i102.GetAccountIbanUseCase>()));
    gh.lazySingleton<_i261.GetActiveByPersonBloc>(() =>
        _i261.GetActiveByPersonBloc(
            getActiveByPersonUsecase: gh<_i183.GetActiveByPersonUsecase>()));
    gh.factory<_i262.VehicleInspectionUseCase>(() =>
        _i262.VehicleInspectionUseCase(
            vehicleInspectionRepository:
                gh<_i145.VehicleInspectionRepository>()));
    gh.lazySingleton<_i263.GetClinicSearchResultBloc>(() =>
        _i263.GetClinicSearchResultBloc(
            useCase: gh<_i254.GetClinicSearchResultUseCase>()));
    gh.factory<_i264.ZipcodeDetailBloc>(() => _i264.ZipcodeDetailBloc(
        zipcodeDetailUseCase: gh<_i137.ZipcodeDetailUseCase>()));
    gh.factory<_i265.VehicleUseCase>(() => _i265.VehicleUseCase(
        vehicleProfileRepository: gh<_i162.VehicleProfileRepository>()));
    gh.factory<_i266.DeleteVehicleUseCase>(() => _i266.DeleteVehicleUseCase(
        vehicleProfileRepository: gh<_i162.VehicleProfileRepository>()));
    gh.factory<_i267.VehicleInquiryUseCase>(() => _i267.VehicleInquiryUseCase(
        vehicleProfileRepository: gh<_i162.VehicleProfileRepository>()));
    gh.factory<_i268.PostVehicleUseCase>(() => _i268.PostVehicleUseCase(
        vehicleProfileRepository: gh<_i162.VehicleProfileRepository>()));
    gh.factory<_i269.EditVehicleUseCase>(() => _i269.EditVehicleUseCase(
        vehicleProfileRepository: gh<_i162.VehicleProfileRepository>()));
    gh.lazySingleton<_i270.AccountEnableBloc>(() => _i270.AccountEnableBloc(
        accountEnableUseCase: gh<_i95.AccountEnableUseCase>()));
    gh.factory<_i271.GetScoreBloc>(
        () => _i271.GetScoreBloc(useCase: gh<_i116.GetScoreUseCase>()));
    gh.lazySingleton<_i272.AddCardBloc>(
        () => _i272.AddCardBloc(addCardUseCase: gh<_i98.AddCardUseCase>()));
    gh.lazySingleton<_i273.GetAllClinicBloc>(() => _i273.GetAllClinicBloc(
        getAllClinicUseCase: gh<_i227.GetAllClinicUseCase>()));
    gh.lazySingleton<_i274.TicketingSearchBloc>(() => _i274.TicketingSearchBloc(
        ticketingSearchUsecase: gh<_i225.TicketingSearchUsecase>()));
    gh.lazySingleton<_i275.TicketingLoginBloc>(() =>
        _i275.TicketingLoginBloc(usecase: gh<_i129.TicketingLoginUsecase>()));
    gh.factory<_i276.VoucherDownloadUseCase>(() => _i276.VoucherDownloadUseCase(
        introductionRepository: gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i277.VoucherReportUseCase>(() => _i277.VoucherReportUseCase(
        introductionRepository: gh<_i92.IntroductionTrackingRepository>()));
    gh.factory<_i278.CreateDepositUseCase>(() =>
        _i278.CreateDepositUseCase(gh<_i220.DepositUnitLinkRepository>()));
    gh.factory<_i279.TransactionStatusUseCase>(() =>
        _i279.TransactionStatusUseCase(gh<_i220.DepositUnitLinkRepository>()));
    gh.factory<_i280.UnitPriceUseCase>(
        () => _i280.UnitPriceUseCase(gh<_i220.DepositUnitLinkRepository>()));
    gh.lazySingleton<_i281.AddRelativeBloc>(() => _i281.AddRelativeBloc(
        addRelativeUseCase: gh<_i196.AddRelativeUseCase>()));
    gh.factory<_i282.FaqSearchUseCase>(
        () => _i282.FaqSearchUseCase(repository: gh<_i86.FaqRepository>()));
    gh.lazySingleton<_i283.RegisterLoanBloc>(() => _i283.RegisterLoanBloc(
        registerLoanUseCase: gh<_i132.RegisterLoanUseCase>()));
    gh.lazySingleton<_i284.ValidateCashWithdrawBloc>(() =>
        _i284.ValidateCashWithdrawBloc(
            validateCashWithdrawUseCase:
                gh<_i243.ValidateCashWithdrawUseCase>()));
    gh.lazySingleton<_i285.VoucherReportBloc>(() => _i285.VoucherReportBloc(
        voucherReportUseCase: gh<_i277.VoucherReportUseCase>()));
    gh.lazySingleton<_i286.GetAgentsListBloc>(() =>
        _i286.GetAgentsListBloc(useCase: gh<_i249.GetAgentsListUseCase>()));
    gh.factory<_i287.ZipcodeUpdateBloc>(() => _i287.ZipcodeUpdateBloc(
        zipcodeUpdateUseCase: gh<_i140.ZipcodeUpdateUseCase>()));
    gh.factory<_i288.GetClinicsTypesUseCase>(() => _i288.GetClinicsTypesUseCase(
        repository: gh<_i110.GetClinicsTypesRepository>()));
    gh.lazySingleton<_i289.GetLastVersionBloc>(() => _i289.GetLastVersionBloc(
        getLastVersionUseCase: gh<_i211.GetLastVersionUseCase>()));
    gh.factory<_i290.ExpertiseStatusUseCase>(() => _i290.ExpertiseStatusUseCase(
        expertiseStatusRepository: gh<_i122.ExpertiseStatusRepository>()));
    gh.lazySingleton<_i291.RemoveCardBloc>(() =>
        _i291.RemoveCardBloc(removeCardUseCase: gh<_i97.RemoveCardUseCase>()));
    gh.lazySingleton<_i292.UpdatePassportBloc>(() => _i292.UpdatePassportBloc(
        updatePassportUseCase: gh<_i139.UpdatePassportUseCase>()));
    gh.factory<_i293.CreateUserUseCase>(() => _i293.CreateUserUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i294.CreateWalletUseCase>(() => _i294.CreateWalletUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i295.SendOtpUseCase>(() =>
        _i295.SendOtpUseCase(walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i296.WalletTransactionUseCase>(() =>
        _i296.WalletTransactionUseCase(
            walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i297.WalletToWalletUseCase>(() => _i297.WalletToWalletUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i298.WalletWithdrawUseCase>(() => _i298.WalletWithdrawUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i299.WalletPaymentUseCase>(() => _i299.WalletPaymentUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i300.PaymentVerifyUseCase>(() => _i300.PaymentVerifyUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i301.WalletBalanceUseCase>(() => _i301.WalletBalanceUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.factory<_i302.WalletCodeUseCase>(() => _i302.WalletCodeUseCase(
        walletRepository: gh<_i158.WalletRepository>()));
    gh.lazySingleton<_i303.SettlementWithdrawBloc>(() =>
        _i303.SettlementWithdrawBloc(
            settlementWithdrawUseCase: gh<_i242.SettlementWithdrawUseCase>()));
    gh.lazySingleton<_i304.GetAccountBloc>(() =>
        _i304.GetAccountBloc(getAccountUseCase: gh<_i96.GetAccountUseCase>()));
    gh.lazySingleton<_i305.GetStaffBloc>(
        () => _i305.GetStaffBloc(getStaffUseCase: gh<_i136.GetStaffUseCase>()));
    gh.factory<_i306.AuthenticateUseCase>(() => _i306.AuthenticateUseCase(
        minioRepository: gh<_i244.MinioRepository>()));
    gh.factory<_i307.ObjectUploadUseCase>(() => _i307.ObjectUploadUseCase(
        minioRepository: gh<_i244.MinioRepository>()));
    gh.factory<_i308.GetObjectListUseCase>(() => _i308.GetObjectListUseCase(
        minioRepository: gh<_i244.MinioRepository>()));
    gh.factory<_i309.ObjectDownloadUseCase>(() => _i309.ObjectDownloadUseCase(
        minioRepository: gh<_i244.MinioRepository>()));
    gh.factory<_i310.ObjectRemoveUseCase>(() => _i310.ObjectRemoveUseCase(
        minioRepository: gh<_i244.MinioRepository>()));
    gh.factory<_i311.GetBucketUseCase>(() =>
        _i311.GetBucketUseCase(minioRepository: gh<_i244.MinioRepository>()));
    gh.lazySingleton<_i312.PaymentVerifyBloc>(() =>
        _i312.PaymentVerifyBloc(useCase: gh<_i300.PaymentVerifyUseCase>()));
    gh.factory<_i313.DepositResultUseCase>(() =>
        _i313.DepositResultUseCase(repository: gh<_i158.WalletRepository>()));
    gh.lazySingleton<_i314.GetCitiesAgentsBranchesBloc>(() =>
        _i314.GetCitiesAgentsBranchesBloc(
            useCase: gh<_i250.GetCitiesAgentsBranchesUseCase>()));
    gh.lazySingleton<_i315.CreateWalletBloc>(() => _i315.CreateWalletBloc(
        createWalletUseCase: gh<_i294.CreateWalletUseCase>()));
    gh.lazySingleton<_i316.LoginBloc>(
        () => _i316.LoginBloc(loginUseCase: gh<_i219.LoginUseCase>()));
    gh.lazySingleton<_i317.UserInfoInquiryBloc>(() => _i317.UserInfoInquiryBloc(
        userInfoInquiryUseCase: gh<_i195.UserInfoInquiryUseCase>()));
    gh.lazySingleton<_i318.GetProcessBloc>(() =>
        _i318.GetProcessBloc(getProcessUseCase: gh<_i155.GetProcessUseCase>()));
    gh.lazySingleton<_i319.RegisterUpper18Bloc>(() => _i319.RegisterUpper18Bloc(
        registerUpper18UseCase: gh<_i200.RegisterUpper18UseCase>()));
    gh.lazySingleton<_i320.IbanInquiryBloc>(() => _i320.IbanInquiryBloc(
        ibanInquiryUseCase: gh<_i207.IbanInquiryUseCase>()));
    gh.lazySingleton<_i321.FaqSearchBloc>(
        () => _i321.FaqSearchBloc(useCase: gh<_i282.FaqSearchUseCase>()));
    gh.lazySingleton<_i322.SendToNextLevelBloc>(() => _i322.SendToNextLevelBloc(
        sendToNextLevelUseCase: gh<_i149.SendToNextLevelUseCase>()));
    gh.lazySingleton<_i323.AuthenticateBloc>(() => _i323.AuthenticateBloc(
        authenticateUseCase: gh<_i306.AuthenticateUseCase>()));
    gh.lazySingleton<_i324.OtherVehicleInspectionBloc>(() =>
        _i324.OtherVehicleInspectionBloc(
            otherVehicleInspectionUseCase:
                gh<_i170.OtherVehicleInspectionUseCase>()));
    gh.lazySingleton<_i325.GetBucketBloc>(() =>
        _i325.GetBucketBloc(getBucketUseCase: gh<_i311.GetBucketUseCase>()));
    gh.lazySingleton<_i326.GetAllCostDescBloc>(() => _i326.GetAllCostDescBloc(
        getAllCostDescUsecase: gh<_i182.GetAllCostDescUsecase>()));
    gh.lazySingleton<_i327.GetStatesAgentsBranchesBloc>(() =>
        _i327.GetStatesAgentsBranchesBloc(
            useCase: gh<_i251.GetStatesAgentsBranchesUseCase>()));
    gh.lazySingleton<_i328.UploadPersonCostImageBloc>(() =>
        _i328.UploadPersonCostImageBloc(
            uploadPersonCostImageUseCase:
                gh<_i180.UploadPersonCostImageUseCase>()));
    gh.lazySingleton<_i329.VehicleInspectionBloc>(() =>
        _i329.VehicleInspectionBloc(
            vehicleInspectionUseCase: gh<_i262.VehicleInspectionUseCase>()));
    gh.lazySingleton<_i330.SubmitDiscontentBloc>(() =>
        _i330.SubmitDiscontentBloc(
            useCase: gh<_i188.SubmitDiscontentUseCase>()));
    gh.lazySingleton<_i331.ObjectUploadBloc>(() => _i331.ObjectUploadBloc(
        objectUploadUseCase: gh<_i307.ObjectUploadUseCase>()));
    gh.lazySingleton<_i332.GetRelativeBloc>(
        () => _i332.GetRelativeBloc(gh<_i197.GetRelativeListUseCase>()));
    gh.lazySingleton<_i333.UnitPriceBloc>(() =>
        _i333.UnitPriceBloc(unitPriceUseCase: gh<_i280.UnitPriceUseCase>()));
    gh.lazySingleton<_i334.VehicleInquiryBloc>(() => _i334.VehicleInquiryBloc(
        vehicleInquiryUseCase: gh<_i267.VehicleInquiryUseCase>()));
    gh.lazySingleton<_i335.SignUpBloc>(
        () => _i335.SignUpBloc(signUpUseCase: gh<_i218.SignUpUseCase>()));
    gh.lazySingleton<_i336.WalletCodeBloc>(() =>
        _i336.WalletCodeBloc(walletCodeUseCase: gh<_i302.WalletCodeUseCase>()));
    gh.lazySingleton<_i337.PersonVoucherCreateBloc>(() =>
        _i337.PersonVoucherCreateBloc(
            personVoucherCreateUseCase:
                gh<_i228.PersonVoucherCreateUseCase>()));
    gh.lazySingleton<_i338.CreateUserBloc>(() =>
        _i338.CreateUserBloc(createUserUseCase: gh<_i293.CreateUserUseCase>()));
    gh.factory<_i339.CreateSettlementWithdrawUseCase>(() =>
        _i339.CreateSettlementWithdrawUseCase(gh<_i205.WithdrawRepository>()));
    gh.lazySingleton<_i340.WalletBalanceBloc>(() => _i340.WalletBalanceBloc(
        walletBalanceUseCase: gh<_i301.WalletBalanceUseCase>()));
    gh.lazySingleton<_i341.GetCitiesBloc>(() =>
        _i341.GetCitiesBloc(getCitiesUseCase: gh<_i230.GetCitiesUseCase>()));
    gh.lazySingleton<_i342.VehicleBloc>(
        () => _i342.VehicleBloc(vehicleUseCase: gh<_i265.VehicleUseCase>()));
    gh.lazySingleton<_i343.PostVehicleBloc>(() => _i343.PostVehicleBloc(
        postVehicleUseCase: gh<_i268.PostVehicleUseCase>()));
    gh.lazySingleton<_i344.LoginOtpBloc>(
        () => _i344.LoginOtpBloc(loginOtpUseCase: gh<_i217.LoginOtpUseCase>()));
    gh.lazySingleton<_i345.CreateDepositBloc>(() => _i345.CreateDepositBloc(
        createDepositUseCase: gh<_i278.CreateDepositUseCase>()));
    gh.lazySingleton<_i346.CreateCashWithdrawBloc>(() =>
        _i346.CreateCashWithdrawBloc(
            createCashWithdrawUseCase: gh<_i241.CreateCashWithdrawUseCase>()));
    gh.lazySingleton<_i347.VoucherDownloadBloc>(() => _i347.VoucherDownloadBloc(
        voucherDownloadUseCase: gh<_i276.VoucherDownloadUseCase>()));
    gh.lazySingleton<_i348.GetLastVoucherNumberBloc>(() =>
        _i348.GetLastVoucherNumberBloc(
            getLastVoucherNumberUseCase:
                gh<_i229.GetLastVoucherNumberUseCase>()));
    gh.lazySingleton<_i349.EditVehicleBloc>(() => _i349.EditVehicleBloc(
        editVehicleUseCase: gh<_i269.EditVehicleUseCase>()));
    gh.lazySingleton<_i350.ObjectRemoveBloc>(() => _i350.ObjectRemoveBloc(
        objectRemoveUseCase: gh<_i310.ObjectRemoveUseCase>()));
    gh.lazySingleton<_i351.DeleteVehicleBloc>(() => _i351.DeleteVehicleBloc(
        deleteVehicleUseCase: gh<_i266.DeleteVehicleUseCase>()));
    gh.lazySingleton<_i352.TransactionStatusBloc>(() =>
        _i352.TransactionStatusBloc(
            transactionStatusUseCase: gh<_i279.TransactionStatusUseCase>()));
    gh.lazySingleton<_i353.DepositResultBloc>(() =>
        _i353.DepositResultBloc(useCase: gh<_i313.DepositResultUseCase>()));
    gh.lazySingleton<_i354.WalletPaymentBloc>(() => _i354.WalletPaymentBloc(
        walletPaymentUseCase: gh<_i299.WalletPaymentUseCase>()));
    gh.lazySingleton<_i355.GetObjectListBloc>(() => _i355.GetObjectListBloc(
        getObjectListUseCase: gh<_i308.GetObjectListUseCase>()));
    gh.lazySingleton<_i356.SendOtpBloc>(
        () => _i356.SendOtpBloc(useCase: gh<_i295.SendOtpUseCase>()));
    gh.lazySingleton<_i357.ExpertiseStatusBloc>(() => _i357.ExpertiseStatusBloc(
        expertiseStatusUseCase: gh<_i290.ExpertiseStatusUseCase>()));
    gh.lazySingleton<_i358.WalletTransactionBloc>(() =>
        _i358.WalletTransactionBloc(
            walletTransactionUseCase: gh<_i296.WalletTransactionUseCase>()));
    gh.lazySingleton<_i359.ObjectDownloadBloc>(() => _i359.ObjectDownloadBloc(
        objectDownloadUseCase: gh<_i309.ObjectDownloadUseCase>()));
    gh.lazySingleton<_i360.WalletToWalletBloc>(() => _i360.WalletToWalletBloc(
        walletToWalletUseCase: gh<_i297.WalletToWalletUseCase>()));
    gh.lazySingleton<_i361.GetClinicsTypesBloc>(() =>
        _i361.GetClinicsTypesBloc(useCase: gh<_i288.GetClinicsTypesUseCase>()));
    gh.lazySingleton<_i362.WalletWithdrawBloc>(() =>
        _i362.WalletWithdrawBloc(useCase: gh<_i298.WalletWithdrawUseCase>()));
    gh.lazySingleton<_i363.CreateSettlementWithdrawBloc>(() =>
        _i363.CreateSettlementWithdrawBloc(
            createSettlementWithdrawUseCase:
                gh<_i339.CreateSettlementWithdrawUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i364.RegisterModule {}
