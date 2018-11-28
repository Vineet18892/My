Public class DMLcls
   {
     Public static void InsertOpp()
      {
      Opportunity opp=new Opportunity();
      Opp.name='vineet';
      opp.CloseDate=System.today();
      opp.StageName='Closed won';
      insert opp;
      }
      
      public static void deleteopp()
      {
      opportunity opp;
      opp = [select id,name from opportunity where name ='vineet' limit 1 ];
      system.debug('opp---- '+opp);
      List<opportunity> lstopp=new List<opportunity>();
      lstopp=[select id,name from opportunity where name ='vineet' ];
      system.debug(lstopp);
      delete lstopp;
      

      }
      public static void updateopp()
      {
      opportunity opp;
      opp=[select id,name from opportunity where name ='vineet' limit 1 ];
      List<opportunity> lstopp=new List<opportunity>();
      lstopp=[select id,name from opportunity where name ='vineet'];
      for(Opportunity upd:lstopp)
      {
      upd.Name='Vineett';
      update upd;
      }
      }
  }