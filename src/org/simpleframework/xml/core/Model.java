package org.simpleframework.xml.core;

abstract interface Model
  extends Iterable<String>
{
  public abstract LabelMap buildAttributes(Context paramContext);
  
  public abstract LabelMap buildElements(Context paramContext);
  
  public abstract ModelMap buildModels(Context paramContext);
  
  public abstract Expression getExpression();
  
  public abstract int getIndex();
  
  public abstract String getName();
  
  public abstract String getPrefix();
  
  public abstract Label getText();
  
  public abstract boolean isAttribute(String paramString);
  
  public abstract boolean isComposite();
  
  public abstract boolean isElement(String paramString);
  
  public abstract boolean isEmpty();
  
  public abstract boolean isModel(String paramString);
  
  public abstract Model lookup(String paramString, int paramInt);
  
  public abstract Model lookup(Expression paramExpression);
  
  public abstract Model register(String paramString1, String paramString2, int paramInt);
  
  public abstract void register(Label paramLabel);
  
  public abstract void registerAttribute(String paramString);
  
  public abstract void registerAttribute(Label paramLabel);
  
  public abstract void registerElement(String paramString);
  
  public abstract void registerElement(Label paramLabel);
  
  public abstract void registerText(Label paramLabel);
  
  public abstract void validate(Class paramClass);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Model
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */