delete from statements_statementdetail;
insert into statements_statementdetail (line_item, statement_id, line_item_order) VALUES 
('net_sales', (select id from statements_statement where statement_type = 'income_statement'), 100),
('cost_of_goods_sold', (select id from statements_statement where statement_type = 'income_statement'), 200),
('sales_and_marketing', (select id from statements_statement where statement_type = 'income_statement'), 300),
('research_and_development', (select id from statements_statement where statement_type = 'income_statement'), 400),
('general_and_administrative', (select id from statements_statement where statement_type = 'income_statement'), 500),
('net_interest_income', (select id from statements_statement where statement_type = 'income_statement'), 600),
('income_taxes', (select id from statements_statement where statement_type = 'income_statement'), 700),
('cash_receipts', (select id from statements_statement where statement_type = 'cash_flow_statement'), 5),
('cash_disbursements', (select id from statements_statement where statement_type = 'cash_flow_statement'), 10),
('ppe_purchase', (select id from statements_statement where statement_type = 'cash_flow_statement'), 15),
('net_borrowings', (select id from statements_statement where statement_type = 'cash_flow_statement'), 20),
('income_taxes_paid', (select id from statements_statement where statement_type = 'cash_flow_statement'), 25),
('sale_of_capital_stock', (select id from statements_statement where statement_type = 'cash_flow_statement'), 30),
('cash', (select id from statements_statement where statement_type = 'balance_sheet'), 5),
('accounts_receivable', (select id from statements_statement where statement_type = 'balance_sheet'), 10),
('inventories', (select id from statements_statement where statement_type = 'balance_sheet'), 15),
('prepaid_expenses', (select id from statements_statement where statement_type = 'balance_sheet'), 20),
('other_assets', (select id from statements_statement where statement_type = 'balance_sheet'), 25),
('fixed_assets_at_cost', (select id from statements_statement where statement_type = 'balance_sheet'), 30),
('accumulated_depreciation', (select id from statements_statement where statement_type = 'balance_sheet'), 35),
('accounts_payable', (select id from statements_statement where statement_type = 'balance_sheet'), 40),
('accrued_expenses', (select id from statements_statement where statement_type = 'balance_sheet'), 45),
('current_portion_of_debt', (select id from statements_statement where statement_type = 'balance_sheet'), 50),
('income_taxes_payable', (select id from statements_statement where statement_type = 'balance_sheet'), 55),
('longterm_debt', (select id from statements_statement where statement_type = 'balance_sheet'), 60),
('capital_stock', (select id from statements_statement where statement_type = 'balance_sheet'), 65),
('retained_earnings', (select id from statements_statement where statement_type = 'balance_sheet'), 70);
