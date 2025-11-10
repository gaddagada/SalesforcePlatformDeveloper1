trigger UpsertContact on Contact (after insert) {
    // Get existing Account1 rows
    List<Account> upsertContact = [
        SELECT Id, BillingCity
        FROM Account
        WHERE Name = 'Account1'
        FOR UPDATE
    ];

    // Update their BillingCity
    for (Account a : accts) {
        a.BillingCity = 'Dallas';
    }

    // Add a new Account2 to insert
    accts.add(new Account(Name = 'Account2', BillingCity = 'Austin'));

    // One DML for all changes
    if (!accts.isEmpty()) {
        upsert accts; // uses Id when present; inserts Account2
    }
}