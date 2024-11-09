INSERT INTO public.date_calculation_parameter (id, provider_id, service_branch, result, date_type, days_offset)
VALUES ('77fe8f12-d7ad-4950-87a0-07090fd5f92f'::uuid, 4::bigint, 'VEHICLE'::service_branch,
        'FIRST_PAYMENT_DUE_DATE'::date_calculation_result, 'CONTRACT_START'::date_calculation_type, 0::integer);