package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;

class ExpressionBuilder
{
  private final ExpressionBuilder.Cache cache = new ExpressionBuilder.Cache(this);
  private final Type type;
  
  public ExpressionBuilder(Class paramClass)
  {
    this(new ClassType(paramClass));
  }
  
  public ExpressionBuilder(Type paramType)
  {
    type = paramType;
  }
  
  private Expression create(String paramString)
  {
    PathParser localPathParser = new PathParser(type, paramString);
    if (cache != null) {
      cache.put(paramString, localPathParser);
    }
    return localPathParser;
  }
  
  public Expression build(String paramString)
  {
    Expression localExpression2 = (Expression)cache.get(paramString);
    Expression localExpression1 = localExpression2;
    if (localExpression2 == null) {
      localExpression1 = create(paramString);
    }
    return localExpression1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExpressionBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */