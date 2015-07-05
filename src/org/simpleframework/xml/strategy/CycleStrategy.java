package org.simpleframework.xml.strategy;

import java.util.Map;
import org.simpleframework.xml.stream.NodeMap;

public class CycleStrategy
  implements Strategy
{
  private final Contract contract;
  private final ReadState read;
  private final WriteState write;
  
  public CycleStrategy()
  {
    this("id", "reference");
  }
  
  public CycleStrategy(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, "class");
  }
  
  public CycleStrategy(String paramString1, String paramString2, String paramString3)
  {
    this(paramString1, paramString2, paramString3, "length");
  }
  
  public CycleStrategy(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    contract = new Contract(paramString1, paramString2, paramString3, paramString4);
    write = new WriteState(contract);
    read = new ReadState(contract);
  }
  
  public Value read(Type paramType, NodeMap paramNodeMap, Map paramMap)
  {
    paramMap = read.find(paramMap);
    if (paramMap != null) {
      return paramMap.read(paramType, paramNodeMap);
    }
    return null;
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap paramNodeMap, Map paramMap)
  {
    paramMap = write.find(paramMap);
    if (paramMap != null) {
      return paramMap.write(paramType, paramObject, paramNodeMap);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.CycleStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */