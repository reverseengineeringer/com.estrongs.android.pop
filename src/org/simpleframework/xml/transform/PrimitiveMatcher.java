package org.simpleframework.xml.transform;

class PrimitiveMatcher
  implements Matcher
{
  public Transform match(Class paramClass)
  {
    if (paramClass == Integer.TYPE) {
      return new IntegerTransform();
    }
    if (paramClass == Boolean.TYPE) {
      return new BooleanTransform();
    }
    if (paramClass == Long.TYPE) {
      return new LongTransform();
    }
    if (paramClass == Double.TYPE) {
      return new DoubleTransform();
    }
    if (paramClass == Float.TYPE) {
      return new FloatTransform();
    }
    if (paramClass == Short.TYPE) {
      return new ShortTransform();
    }
    if (paramClass == Byte.TYPE) {
      return new ByteTransform();
    }
    if (paramClass == Character.TYPE) {
      return new CharacterTransform();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.PrimitiveMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */