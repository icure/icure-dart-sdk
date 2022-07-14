//
// AUTO-GENERATED FILE, DO NOT MODIFY!

// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library icure_dart_sdk.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:pointycastle/asn1.dart';
import "package:pointycastle/export.dart";
import 'package:pointycastle/src/platform_check/platform_check.dart';
import 'package:tuple/tuple.dart';
import 'package:collection/collection.dart';

import 'extended_api/data_owner_resolver.dart';

import 'util/collection_utils.dart';
import 'util/binary_utils.dart';
import 'util/functional_utils.dart';

import 'crypto/crypto.dart';

part 'api_client.dart';
part 'api_exception.dart';
part 'api_helper.dart';
part 'auth/api_key_auth.dart';
part 'auth/authentication.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';
part 'auth/oauth.dart';

part 'api/access_log_api.dart';
part 'api/agenda_api.dart';
part 'api/anonymous_access_api.dart';
part 'api/applicationsettings_api.dart';
part 'api/article_api.dart';
part 'api/auth_api.dart';
part 'api/beefact_api.dart';
part 'api/bekmehr_api.dart';
part 'api/beresultexport_api.dart';
part 'api/beresultimport_api.dart';
part 'api/besamv2_api.dart';
part 'api/calendar_item_api.dart';
part 'api/calendar_item_type_api.dart';
part 'api/classification_api.dart';
part 'api/classification_template_api.dart';
part 'api/code_api.dart';
part 'api/contact_api.dart';
part 'api/device_api.dart';
part 'api/document_api.dart';
part 'api/document_template_api.dart';
part 'api/entity_template_api.dart';
part 'api/entityref_api.dart';
part 'api/form_api.dart';
part 'api/front_end_migration_api.dart';
part 'api/group_api.dart';
part 'api/health_element_api.dart';
part 'api/healthcare_party_api.dart';
part 'api/icure_api.dart';
part 'api/insurance_api.dart';
part 'api/invoice_api.dart';
part 'api/keyword_api.dart';
part 'api/maintenance_task_api.dart';
part 'api/medex_api.dart';
part 'api/medical_location_api.dart';
part 'api/message_api.dart';
part 'api/patient_api.dart';
part 'api/permission_api.dart';
part 'api/place_api.dart';
part 'api/receipt_api.dart';
part 'api/tarification_api.dart';
part 'api/time_table_api.dart';
part 'api/tmp_api.dart';
part 'api/user_api.dart';

part 'extended_api/accesslog_api.dart';
part 'extended_api/contact_api.dart';
part 'extended_api/document_api.dart';
part 'extended_api/health_element_api.dart';
part 'extended_api/healthcare_party_api.dart';
part 'extended_api/patient_api.dart';
part 'extended_api/data_owner_api.dart';
part 'extended_api/data_owner_api_factory.dart';

part 'model/access_log_dto.dart';
part 'model/address_dto.dart';
part 'model/administration_quantity.dart';
part 'model/agenda_dto.dart';
part 'model/agreement_appendix_dto.dart';
part 'model/amp_component_dto.dart';
part 'model/amp_dto.dart';
part 'model/ampp_component_dto.dart';
part 'model/ampp_dto.dart';
part 'model/annotation_dto.dart';
part 'model/application_settings_dto.dart';
part 'model/article_dto.dart';
part 'model/atc_dto.dart';
part 'model/authentication.dart';
part 'model/authentication_response.dart';
part 'model/authentication_token_dto.dart';
part 'model/basic.dart';
part 'model/basic_dto.dart';
part 'model/byte_array_dto.dart';
part 'model/calendar_item_dto.dart';
part 'model/calendar_item_tag_dto.dart';
part 'model/calendar_item_type_dto.dart';
part 'model/care_team_member_dto.dart';
part 'model/care_team_membership_dto.dart';
part 'model/check_smf_patient_result.dart';
part 'model/classification_dto.dart';
part 'model/classification_template_dto.dart';
part 'model/code_dto.dart';
part 'model/code_stub.dart';
part 'model/code_stub_dto.dart';
part 'model/commented_classification_dto.dart';
part 'model/commercialization_dto.dart';
part 'model/company_dto.dart';
part 'model/contact_dto.dart';
part 'model/content_dto.dart';
part 'model/copayment_dto.dart';
part 'model/database_initialisation_dto.dart';
part 'model/database_synchronization_dto.dart';
part 'model/delegation_dto.dart';
part 'model/device_dto.dart';
part 'model/device_type_dto.dart';
part 'model/diary_note_export_info_dto.dart';
part 'model/dmpp_dto.dart';
part 'model/doc_identifier.dart';
part 'model/document_dto.dart';
part 'model/document_group_dto.dart';
part 'model/document_template_dto.dart';
part 'model/duration_dto.dart';
part 'model/eid_item.dart';
part 'model/editor.dart';
part 'model/efact_invoice.dart';
part 'model/email_template_dto.dart';
part 'model/employer_dto.dart';
part 'model/employment_info_dto.dart';
part 'model/entity_reference_dto.dart';
part 'model/entity_template_dto.dart';
part 'model/episode_dto.dart';
part 'model/financial_institution_information_dto.dart';
part 'model/flat_rate_tarification_dto.dart';
part 'model/flow_item_dto.dart';
part 'model/form_column.dart';
part 'model/form_data_option.dart';
part 'model/form_dto.dart';
part 'model/form_layout.dart';
part 'model/form_layout_data.dart';
part 'model/form_planning.dart';
part 'model/form_section.dart';
part 'model/form_template_dto.dart';
part 'model/form_template_layout.dart';
part 'model/formula.dart';
part 'model/front_end_migration_dto.dart';
part 'model/group_dto.dart';
part 'model/gui_code.dart';
part 'model/gui_code_type.dart';
part 'model/health_element_dto.dart';
part 'model/healthcare_party_dto.dart';
part 'model/healthcare_party_history_status_dto.dart';
part 'model/icure_stub_dto.dart';
part 'model/id_with_rev_dto.dart';
part 'model/identifier_dto.dart';
part 'model/identity_document_reader_dto.dart';
part 'model/import_mapping.dart';
part 'model/import_result_dto.dart';
part 'model/indexing_info_dto.dart';
part 'model/ingredient_dto.dart';
part 'model/insurability_dto.dart';
part 'model/insurance_dto.dart';
part 'model/invoice_dto.dart';
part 'model/invoice_item.dart';
part 'model/invoice_sender.dart';
part 'model/invoices_batch.dart';
part 'model/invoicing_code_dto.dart';
part 'model/keyword_dto.dart';
part 'model/keyword_subword_dto.dart';
part 'model/labelled_occurence_dto.dart';
part 'model/letter_value_dto.dart';
part 'model/list_of_ids_dto.dart';
part 'model/list_of_properties_dto.dart';
part 'model/login_credentials.dart';
part 'model/maintenance_task_dto.dart';
part 'model/map_of_ids_dto.dart';
part 'model/measure_dto.dart';
part 'model/medex_info_dto.dart';
part 'model/medical_house_contract_dto.dart';
part 'model/medical_location_dto.dart';
part 'model/medication_dto.dart';
part 'model/medication_scheme_export_info_dto.dart';
part 'model/medicinalproduct_dto.dart';
part 'model/message_dto.dart';
part 'model/message_read_status_dto.dart';
part 'model/message_with_batch.dart';
part 'model/messages_read_status_update.dart';
part 'model/mime_attachment_dto.dart';
part 'model/nmp_dto.dart';
part 'model/no_generic_prescription_reason_dto.dart';
part 'model/no_switch_reason_dto.dart';
part 'model/numerator_range_dto.dart';
part 'model/packaging_type_dto.dart';
part 'model/paginated_document_key_id_pair_object.dart';
part 'model/paginated_list_access_log_dto.dart';
part 'model/paginated_list_amp_dto.dart';
part 'model/paginated_list_classification_dto.dart';
part 'model/paginated_list_classification_template_dto.dart';
part 'model/paginated_list_code_dto.dart';
part 'model/paginated_list_contact_dto.dart';
part 'model/paginated_list_device_dto.dart';
part 'model/paginated_list_document_dto.dart';
part 'model/paginated_list_entity_template_dto.dart';
part 'model/paginated_list_form_dto.dart';
part 'model/paginated_list_health_element_dto.dart';
part 'model/paginated_list_healthcare_party_dto.dart';
part 'model/paginated_list_invoice_dto.dart';
part 'model/paginated_list_maintenance_task_dto.dart';
part 'model/paginated_list_message_dto.dart';
part 'model/paginated_list_nmp_dto.dart';
part 'model/paginated_list_patient_dto.dart';
part 'model/paginated_list_service_dto.dart';
part 'model/paginated_list_string.dart';
part 'model/paginated_list_tarification_dto.dart';
part 'model/paginated_list_user_dto.dart';
part 'model/paginated_list_vmp_dto.dart';
part 'model/paginated_list_vmp_group_dto.dart';
part 'model/paragraph_agreement_dto.dart';
part 'model/partnership_dto.dart';
part 'model/patient_dto.dart';
part 'model/patient_health_care_party_dto.dart';
part 'model/patient_registration_success_dto.dart';
part 'model/payment_dto.dart';
part 'model/periodicity_dto.dart';
part 'model/permission_dto.dart';
part 'model/permission_item_dto.dart';
part 'model/person_name_dto.dart';
part 'model/pharmaceutical_form_dto.dart';
part 'model/pharmaceutical_form_stub_dto.dart';
part 'model/place_dto.dart';
part 'model/plan_of_action_dto.dart';
part 'model/pricing_dto.dart';
part 'model/property_stub_dto.dart';
part 'model/property_type_stub_dto.dart';
part 'model/public_key_dto.dart';
part 'model/quantity_dto.dart';
part 'model/receipt_dto.dart';
part 'model/referral_period_dto.dart';
part 'model/regimen_item_dto.dart';
part 'model/registration_information_dto.dart';
part 'model/registration_success_dto.dart';
part 'model/reimbursement_criterion_dto.dart';
part 'model/reimbursement_dto.dart';
part 'model/remote.dart';
part 'model/remote_authentication_dto.dart';
part 'model/remote_dto.dart';
part 'model/renewal_dto.dart';
part 'model/replication_dto.dart';
part 'model/replication_info_dto.dart';
part 'model/replication_stats.dart';
part 'model/replication_stats_dto.dart';
part 'model/replicator_document.dart';
part 'model/replicator_document_dto.dart';
part 'model/result_info_dto.dart';
part 'model/right_dto.dart';
part 'model/route_of_administration_dto.dart';
part 'model/sam_text_dto.dart';
part 'model/sam_version_dto.dart';
part 'model/schooling_info_dto.dart';
part 'model/section.dart';
part 'model/service_dto.dart';
part 'model/service_link_dto.dart';
part 'model/software_medical_file_export_dto.dart';
part 'model/standard_substance_dto.dart';
part 'model/strength_range_dto.dart';
part 'model/sub_contact_dto.dart';
part 'model/substance_dto.dart';
part 'model/substance_stub_dto.dart';
part 'model/substanceproduct_dto.dart';
part 'model/suggest.dart';
part 'model/sumehr_content_dto.dart';
part 'model/sumehr_export_info_dto.dart';
part 'model/sumehr_validity_dto.dart';
part 'model/supply_problem_dto.dart';
part 'model/suspension_dto.dart';
part 'model/tag.dart';
part 'model/tarification_dto.dart';
part 'model/telecom_dto.dart';
part 'model/time_series_dto.dart';
part 'model/time_table_dto.dart';
part 'model/time_table_hour_dto.dart';
part 'model/time_table_item_dto.dart';
part 'model/typed_value_dto_object.dart';
part 'model/user_dto.dart';
part 'model/user_group_dto.dart';
part 'model/valorisation_dto.dart';
part 'model/virtual_form_dto.dart';
part 'model/virtual_ingredient_dto.dart';
part 'model/vmp_component_dto.dart';
part 'model/vmp_dto.dart';
part 'model/vmp_group_dto.dart';
part 'model/vmp_group_stub_dto.dart';
part 'model/vmp_stub_dto.dart';
part 'model/vtm_dto.dart';
part 'model/wada_dto.dart';
part 'model/weekday.dart';

part 'model/decrypted/access_log_dto.dart';
part 'model/decrypted/article_dto.dart';
part 'model/decrypted/calendar_item_dto.dart';
part 'model/decrypted/classification_dto.dart';
part 'model/decrypted/contact_dto.dart';
part 'model/decrypted/content_dto.dart';
part 'model/decrypted/document_dto.dart';
part 'model/decrypted/form_dto.dart';
part 'model/decrypted/health_element_dto.dart';
part 'model/decrypted/icure_stub_dto.dart';
part 'model/decrypted/invoice_dto.dart';
part 'model/decrypted/message_dto.dart';
part 'model/decrypted/paginated_list_access_log_dto.dart';
part 'model/decrypted/paginated_list_classification_dto.dart';
part 'model/decrypted/paginated_list_contact_dto.dart';
part 'model/decrypted/paginated_list_health_element_dto.dart';

part 'model/decrypted/paginated_list_invoice_dto.dart';

part 'model/decrypted/paginated_list_message_dto.dart';

part 'model/decrypted/paginated_list_patient_dto.dart';

part 'model/decrypted/paginated_list_service_dto.dart';

part 'model/decrypted/patient_dto.dart';

part 'model/decrypted/receipt_dto.dart';

part 'model/decrypted/service_dto.dart';

part 'model/decrypted/time_table_dto.dart';

part 'model/filter/predicate/and_predicate.dart';

part 'model/filter/predicate/or_predicate.dart';

part 'model/filter/predicate/predicate.dart';

part 'model/filter/predicate/always_predicate.dart';

part 'model/filter/predicate/not_predicate.dart';

part 'model/filter/contact/contact_by_hc_party_filter.dart';

part 'model/filter/contact/contact_by_service_ids_filter.dart';

part 'model/filter/contact/contact_by_hc_party_patient_tag_code_date_filter.dart';

part 'model/filter/contact/contact_by_hc_party_tag_code_date_filter.dart';

part 'model/filter/hcparty/healthcare_party_by_ids_filter.dart';

part 'model/filter/hcparty/all_healthcare_parties_filter.dart';

part 'model/filter/healthelement/health_element_by_hc_party_identifiers_filter.dart';

part 'model/filter/healthelement/health_element_by_ids_filter.dart';

part 'model/filter/healthelement/health_element_by_hc_party_secret_foreign_keys_filter.dart';

part 'model/filter/healthelement/health_element_by_hc_party_filter.dart';

part 'model/filter/healthelement/health_element_by_hc_party_tag_code_filter.dart';

part 'model/filter/intersection_filter.dart';

part 'model/filter/union_filter.dart';

part 'model/filter/code/code_by_region_type_label_language_filter.dart';

part 'model/filter/code/code_by_ids_filter.dart';

part 'model/filter/code/all_codes_filter.dart';

part 'model/filter/chain/filter_chain.dart';

part 'model/filter/user/user_by_ids_filter.dart';

part 'model/filter/user/all_users_filter.dart';

part 'model/filter/complement_filter.dart';

part 'model/filter/patient/patient_by_hc_party_date_of_birth_filter.dart';

part 'model/filter/patient/patient_by_hc_party_name_contains_fuzzy_filter.dart';

part 'model/filter/patient/patient_by_hc_party_name_filter.dart';

part 'model/filter/patient/patient_by_hc_party_and_identifiers_filter.dart';

part 'model/filter/patient/patient_by_hc_party_filter.dart';

part 'model/filter/patient/patient_by_hc_party_and_external_id_filter.dart';

part 'model/filter/patient/patient_by_hc_party_gender_education_profession.dart';

part 'model/filter/patient/patient_by_hc_party_and_ssins_filter.dart';

part 'model/filter/patient/patient_by_hc_party_and_ssin_filter.dart';

part 'model/filter/patient/patient_by_hc_party_date_of_birth_between_filter.dart';

part 'model/filter/patient/patient_by_ids_filter.dart';

part 'model/filter/patient/patient_by_hc_party_and_active_filter.dart';

part 'model/filter/device/device_by_hc_party_filter.dart';

part 'model/filter/device/device_by_ids_filter.dart';

part 'model/filter/invoice/invoice_by_hc_party_code_date_filter.dart';

part 'model/filter/device/all_devices_filter.dart';

part 'model/filter/service/service_by_hc_party_tag_code_date_filter.dart';

part 'model/filter/service/service_by_ids_filter.dart';

part 'model/filter/service/service_by_hc_party_identifiers_filter.dart';

part 'model/filter/service/service_by_hc_party_health_element_ids_filter.dart';

part 'model/filter/service/service_by_contacts_and_subcontacts_filter.dart';

part 'model/filter/service/service_by_secret_foreign_keys.dart';

part 'model/filter/service/service_by_hc_party_filter.dart';

part 'model/filter/abstract_filter_dto.dart';

part 'model/filter/maintenancetask/maintenance_task_after_date_filter.dart';

part 'model/filter/maintenancetask/maintenance_task_by_hc_party_and_identifiers_filter.dart';

part 'model/filter/maintenancetask/maintenance_task_by_hc_party_and_type_filter.dart';

part 'model/filter/maintenancetask/maintenance_task_by_ids_filter.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
