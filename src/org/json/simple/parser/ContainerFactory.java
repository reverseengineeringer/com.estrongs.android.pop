package org.json.simple.parser;

import java.util.List;
import java.util.Map;

public abstract interface ContainerFactory
{
  public abstract List creatArrayContainer();
  
  public abstract Map createObjectContainer();
}

/* Location:
 * Qualified Name:     org.json.simple.parser.ContainerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */