package com.flurry.sdk;

public class ap<ObjectType>
  extends aq
{
  private static final String a = aq.class.getSimpleName();
  private final lb<ObjectType> b;
  
  public ap(lb<ObjectType> paramlb, String paramString, long paramLong, boolean paramBoolean)
  {
    super(paramString, paramLong, paramBoolean);
    if (paramlb == null) {
      throw new IllegalArgumentException("Serializer cannot be null");
    }
    b = paramlb;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */