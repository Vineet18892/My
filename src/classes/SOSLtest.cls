public class SOSLtest 
{
public static void ABC()
{
    
    List<List<sObject>> searchList = [FIND 'Wingo OR SFDC' IN ALL FIELDS 
                   RETURNING Account(Name),Contact(FirstName,LastName,Department)];
Account[] searchAccounts = (Account[])searchList[0];
Contact[] searchContacts = (Contact[])searchList[1];

System.debug('Found the following accounts.');
for (Account a : searchAccounts) {
    System.debug('Account' +a.Name);
}


System.debug('Found the following contacts.');
for (Contact c : searchContacts) {
    System.debug(c.LastName + ', ' + c.FirstName);
}
}
    
}