if not Lang then Lang = {} end
Lang['br'] = {
    ['open'] = "Pressione ~y~E~w~ para abrir",
    ['open_dealership'] = "Pressione ~y~E~w~ para abrir",
    ['preview_vehicle'] = "Pressione ~y~E~w~ para test drive \nPressione ~y~B~w~ para comprar o veículo",
    ['test_drive_started'] = "Seu test drive começou. Termina em %s segundos.",
    ['already_has_business'] = "Você já tem uma concessionária",
    ['already_has_owner'] = "Esta concessionária já tem um proprietário",
    ['businnes_bougth'] = "Parabéns, você comprou uma concessionária",
    ['insufficient_funds'] = "Dinheiro insuficiente",
    ['insufficient_stock'] = "Estoque insuficiente para este veículo",
    ['bought_vehicle'] = "Parabéns, você comprou um %s",
    ['money_withdrawn'] = "Dinheiro retirado",
    ['money_deposited'] = "Dinheiro depositado",
    ['invalid_value'] = "Valor inválido",
    ['max_amount'] = "A quantidade máxima desses veículos que você pode transportar é %s",
    ['max_stock_vehicle'] = "Você já atingiu o valor máximo deste veículo em seu estoque",
    ['max_employees'] = "Você atingiu o limite de funcionários",
    ['user_not_found'] = "Usuário não encontrado",
    ['user_employed'] = "Usuário já empregado",
    ['hired_user'] = "Parabéns, você contratou %s",
    ['fired_user'] = "Funcionário despedido",
    ['sell_request_created'] = "Solicitação de venda de usados criada em R$ %s",
    ['sell_request_created_owner'] = "Solicitação de venda de usados criada em sua concessionária",
    ['no_owner'] = "Esta concessionária não tem dono",
    ['request_cancelled'] = "Sua solicitação foi cancelada e seu dinheiro devolvido",
    ['buy_request_cancelled'] = "Seu pedido foi cancelado",
    ['sold_vehicle'] = "Você vendeu este veículo com sucesso por R$ %s",
    ['cant_cancel_request'] = "Você não pode cancelar este pedido",
    ['request_created'] = "Sua solicitação foi criada",
    ['cant_decline_request'] = "Você não pode recusar este pedido",
    ['cant_accept_request'] = "Você não pode aceitar este pedido",
    ['request_declined'] = "Você recusou esta solicitação",
    ['request_finished'] = "Você concluiu esta solicitação",
    ['o_bought_vehicle'] = "Você comprou este veículo",
    ['not_own_this_vehicle'] = "O cliente não possui mais este veículo",
    ['not_own_this_vehicle_2'] = "Você não possui este veículo",
    ['stock_price_changed'] = "Preço do estoque alterado",
    ['no_own_dealer'] = "Você não possui esta concessionária",
    ['dealer_sold'] = "Você vendeu esta concessionária",
    ['must_be_owner'] = "Você deve ser o proprietário para fazer isso",
    ['comission_received'] = "Você recebeu uma comissão, verifique sua conta",
    ['comission_sent'] = "O funcionário recebeu sua comissão",
    ['cant_find_user'] = "Este funcionário não está disponível agora",
    ['already_has_vehicle'] = "Você já tem este veículo",
    ['already_requested'] = "Você já tem uma solicitação ativa deste veículo",

    ['occupied_places'] = "Garagem ocupada",
    ['already_has_job'] = "Você já tem uma entrega em andamento",
    ['blip_route'] = "Veículos",
    ['already_is_in_garage'] = "Seu veículo está em sua garagem",
    ['objective_marker_3'] = "Pressione ~y~E~w~",
    ['sucess_2'] = "~g~Sucesso",
    ['sucess_in_progess_2'] = "Leve o veículo de volta para a garagem",
    ['sucess_finished_2'] = "Trabalho concluído",
    ['garage_marker'] = "Sua garagem",
    ['you_died'] = "Você morreu, você não conseguiu entregar produtos",
    ['vehicle_destroyed'] = "Seu veículo foi destruído, você não entregou produtos",
    ['truck_plate'] = "Caminhão",
    ['truck_blip'] = "Veículo",
    ['vehicle_locked'] = "Veículo <b>trancado</b> com sucesso.",
	['vehicle_unlocked'] = "Veículo <b>destrancado</b> com sucesso.",

    ['balance_vehicle_export'] = "Exportação de veículos: %s",
    ['balance_vehicle_import'] = "Importação de veículos: %s",
    ['balance_vehicle_bought'] = "Veículo comprado: %s",
    ['balance_used_vehicle_bought'] = "Veículo usado comprado: %s",
    ['balance_request_started'] = "[1] Solicitação de importação de veículo: %s",
    ['balance_request_finished'] = "[2] Solicitação de importação de veículo:%s",
    ['stock_full'] = "O estoque da concessionária está cheio",

    ['logs_date'] = "Data",
    ['logs_hour'] = "Hora",
    ['logs_bought'] = "```prolog\n[CONCESSIONARIA COMPRADA]: %s \n[ID]: %s \r```",
    ['logs_close'] = "```prolog\n[CONCESSIONARIA VENDIDA]: %s \n[ID]: %s \r```",
    ['logs_lost_low_stock'] = "```prolog\n[CONCESSIONARIA FALIDA]: %s\n[ESTOQUE]: %s\n[VAZIO DESDE]: %s\n[ID]: %s \r```",
	['logs_finish_import'] = "```prolog\n[IMPORTAÇÃO FINALIZADA]: %s\n[VEÍCULO]: %s %s\n[PREÇO]: %s\n[ESTOQUE]: %s\n[ID]: %s \r```",
	['logs_finish_export'] = "```prolog\n[EXPORTAÇÃO FINALIZADA]: %s\n[VEÍCULO]: %s %s\n[PREÇO]: %s\n[ESTOQUE]: %s\n[ID]: %s \r```",
    ['logs_vehicle_bought'] = "```prolog\n[VEÍCULO COMPRADO]: %s\n[VEÍCULO]: %s\n[PREÇO]: %s\n[ID]: %s \r```",
    ['logs_sell_used_vehicle_request'] = "```prolog\n[SOLITAÇÃO DE VENDA DE VEÍCULO USADO CRIADA]: %s\n[VEÍCULO]: %s\n[PLACA]: %s \n[PREÇO]: %s \n[ID]: %s \r```",
    ['logs_sell_used_vehicle_finish'] = "```prolog\n[SOLICITAÇÃO DE VENDA DE VEÍCULO USADO ATENDIDA]: %s\n[VEÍCULO]: %s\n[PLACA]: %s \n[PREÇO]: %s \n[ID]: %s \r```",
    ['logs_sell_used_vehicle_without_owner'] = "```prolog\n[VENDA DE VEÍCULO USADO]: %s\n[VEÍCULO]: %s\n[PLACA]: %s \n[PREÇO]: %s \n[ID]: %s \r```",
    ['logs_buy_vehicle_request'] = "```prolog\n[SOLICITAÇÃO DE IMPORTAÇÃO CRIADA]: %s\n[VEÍCULO]: %s\n[PREÇO]: %s \n[ID]: %s \r```",
    ['logs_buy_vehicle_finish'] = "```prolog\n[SOLICITAÇÃO DE IMPORTAÇÃO ATENDIDA]: %s\n[VEÍCULO]: %s\n[PREÇO]: %s \n[ID]: %s \r```",
}