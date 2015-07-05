package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

class WriteState
  extends WeakCache<Object, WriteGraph>
{
  private Contract contract;
  
  public WriteState(Contract paramContract)
  {
    contract = paramContract;
  }
  
  public WriteGraph find(Object paramObject)
  {
    WriteGraph localWriteGraph2 = (WriteGraph)fetch(paramObject);
    WriteGraph localWriteGraph1 = localWriteGraph2;
    if (localWriteGraph2 == null)
    {
      localWriteGraph1 = new WriteGraph(contract);
      cache(paramObject, localWriteGraph1);
    }
    return localWriteGraph1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.WriteState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */