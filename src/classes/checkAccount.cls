@RestResource(urlmapping='/show/Accounts/*')

 global class checkAccount
  {
  @httpGet
  global static Account doget()
  {
  RestRequest  req=RestContext.request;
  RestResponse res=RestContext.response;
  String accountid=req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
  System.debug('Account I:'+ accountID);
  Account result=[Select name,phone from Account where ID=:accountID];
  return result;
  }
  }