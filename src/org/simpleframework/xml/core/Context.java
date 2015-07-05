package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

abstract interface Context
{
  public abstract Object getAttribute(Object paramObject);
  
  public abstract Caller getCaller(Class paramClass);
  
  public abstract Decorator getDecorator(Class paramClass);
  
  public abstract Instance getInstance(Class paramClass);
  
  public abstract Instance getInstance(Value paramValue);
  
  public abstract String getName(Class paramClass);
  
  public abstract Value getOverride(Type paramType, InputNode paramInputNode);
  
  public abstract String getProperty(String paramString);
  
  public abstract Schema getSchema(Class paramClass);
  
  public abstract Session getSession();
  
  public abstract Style getStyle();
  
  public abstract Support getSupport();
  
  public abstract Class getType(Type paramType, Object paramObject);
  
  public abstract Version getVersion(Class paramClass);
  
  public abstract boolean isFloat(Class paramClass);
  
  public abstract boolean isFloat(Type paramType);
  
  public abstract boolean isPrimitive(Class paramClass);
  
  public abstract boolean isPrimitive(Type paramType);
  
  public abstract boolean isStrict();
  
  public abstract boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Context
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */