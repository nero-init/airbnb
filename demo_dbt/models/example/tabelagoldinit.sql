SELECT
    init_id AS id_imovel,
    init_name AS nome,
    init_host_id AS host_id,
    init_host_name AS host_nome,
    init_neighbourhood AS bairro,
    init_latitude AS latitude,
    init_longitude AS longitude,
    init_room_type AS tipo,
    mean_neighbourhood_price AS preco,
    modified_minimum_nights AS noites_minimas,
    number_of_reviews AS numero_reviews,
    last_review AS ultima_review,
    reviews_per_month AS reviews_por_mes,
    calculated_host_listings_count AS hosts_qtd,
    availability_365 AS disponibilidade,
    number_of_reviews_ltm AS reviewss_ultimo_mes
FROM
    tabelasilverend


