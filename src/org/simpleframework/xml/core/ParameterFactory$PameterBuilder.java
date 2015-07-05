package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;

class ParameterFactory$PameterBuilder
{
  public Class create;
  public Class type;
  
  public ParameterFactory$PameterBuilder(Class paramClass1, Class paramClass2)
  {
    create = paramClass1;
    type = paramClass2;
  }
  
  private Constructor getConstructor(Class... paramVarArgs)
  {
    return create.getConstructor(paramVarArgs);
  }
  
  public Constructor getConstructor()
  {
    return getConstructor(new Class[] { Constructor.class, type, Integer.TYPE });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ParameterFactory.PameterBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */