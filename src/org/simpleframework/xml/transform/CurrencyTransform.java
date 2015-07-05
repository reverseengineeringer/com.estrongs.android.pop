package org.simpleframework.xml.transform;

import java.util.Currency;

class CurrencyTransform
  implements Transform<Currency>
{
  public Currency read(String paramString)
  {
    return Currency.getInstance(paramString);
  }
  
  public String write(Currency paramCurrency)
  {
    return paramCurrency.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.CurrencyTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */