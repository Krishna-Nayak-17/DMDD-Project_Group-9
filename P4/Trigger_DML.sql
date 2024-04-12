Use WarehouseManagement;
GO

Create Trigger EncryptBankAccountNumber
ON BankTransfer
after insert
as
begin
	open symmetric key Warehouse_sk
	decryption by certificate WarehouseCert;

	UPDATE BankTransfer
    SET BankAccountNumber = ENCRYPTBYKEY(KEY_GUID('Warehouse_sk'), inserted.BankAccountNumber)
    FROM BankTransfer
    INNER JOIN inserted ON BankTransfer.PaymentID = inserted.PaymentID;

    -- Close the symmetric key
    CLOSE SYMMETRIC KEY Warehouse_sk;
END;
GO

Create Trigger EncryptCardNumber
ON Card
after insert
as
begin
	open symmetric key Warehouse_sk
	decryption by certificate WarehouseCert;

	UPDATE Card
    SET CardNumber = ENCRYPTBYKEY(KEY_GUID('Warehouse_sk'), inserted.CardNumber)
    FROM Card
    INNER JOIN inserted ON Card.PaymentID = inserted.PaymentID;

    -- Close the symmetric key
    CLOSE SYMMETRIC KEY Warehouse_sk;
END;
GO 