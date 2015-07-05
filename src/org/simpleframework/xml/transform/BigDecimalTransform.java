package org.simpleframework.xml.transform;

import java.math.BigDecimal;

class BigDecimalTransform
  implements Transform<BigDecimal>
{
  public BigDecimal read(String paramString)
  {
    return new BigDecimal(paramString);
  }
  
  public String write(BigDecimal paramBigDecimal)
  {
    return paramBigDecimal.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.BigDecimalTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */