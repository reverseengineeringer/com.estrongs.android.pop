package org.simpleframework.xml.transform;

import java.math.BigInteger;

class BigIntegerTransform
  implements Transform<BigInteger>
{
  public BigInteger read(String paramString)
  {
    return new BigInteger(paramString);
  }
  
  public String write(BigInteger paramBigInteger)
  {
    return paramBigInteger.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.BigIntegerTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */