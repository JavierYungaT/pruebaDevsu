package com.devsu.MS_Cuentas_Movimientos.service;


import com.devsu.MS_Cuentas_Movimientos.dto.ResponseData;
import com.devsu.MS_Cuentas_Movimientos.dto.account.AccountDTO;
import com.devsu.MS_Cuentas_Movimientos.dto.account.AccountNumberDTO;
import com.devsu.MS_Cuentas_Movimientos.dto.account.SaveAccountDTO;
import com.devsu.MS_Cuentas_Movimientos.exceptions.CustomValidationException;

import java.util.List;
import java.util.Map;

public interface AccountService {

    List<AccountDTO> findAllAccounts();
    AccountDTO getAccountByNumber(AccountNumberDTO accountNumber);
    ResponseData saveAccount(SaveAccountDTO accountDTO) throws CustomValidationException;
    ResponseData updateClient(Integer accountId, Map<String, Object> fields) throws CustomValidationException;
    ResponseData deleteAccount(AccountNumberDTO accountNumberDTO) throws CustomValidationException;
    ResponseData updateAccountAllData(AccountDTO accountDTO) throws CustomValidationException;
}
