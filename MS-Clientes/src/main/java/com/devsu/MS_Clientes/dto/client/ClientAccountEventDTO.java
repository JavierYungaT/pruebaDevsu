package com.devsu.MS_Clientes.dto.client;

import com.devsu.MS_Clientes.enums.MovementsTypeEnum;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
public class ClientAccountEventDTO {

    private String identification;
    private String name;
    private MovementsTypeEnum accountType;
    private BigDecimal initialBalance;
}
