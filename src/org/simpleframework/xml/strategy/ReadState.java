package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

class ReadState
  extends WeakCache<Object, ReadGraph>
{
  private final Contract contract;
  private final Loader loader = new Loader();
  
  public ReadState(Contract paramContract)
  {
    contract = paramContract;
  }
  
  private ReadGraph create(Object paramObject)
  {
    ReadGraph localReadGraph2 = (ReadGraph)fetch(paramObject);
    ReadGraph localReadGraph1 = localReadGraph2;
    if (localReadGraph2 == null)
    {
      localReadGraph1 = new ReadGraph(contract, loader);
      cache(paramObject, localReadGraph1);
    }
    return localReadGraph1;
  }
  
  public ReadGraph find(Object paramObject)
  {
    ReadGraph localReadGraph = (ReadGraph)fetch(paramObject);
    if (localReadGraph != null) {
      return localReadGraph;
    }
    return create(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.ReadState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */