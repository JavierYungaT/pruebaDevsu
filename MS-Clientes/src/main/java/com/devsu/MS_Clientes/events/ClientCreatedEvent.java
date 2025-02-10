package com.devsu.MS_Clientes.events;

import com.devsu.MS_Clientes.dto.client.ClientAccountEventDTO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ClientCreatedEvent extends Event<ClientAccountEventDTO> {

}
