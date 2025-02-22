package com.devsu.MS_Cuentas_Movimientos.events;

import com.devsu.MS_Cuentas_Movimientos.dto.ClientEventDTO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ClientCreatedEvent extends Event<ClientEventDTO>{
}
