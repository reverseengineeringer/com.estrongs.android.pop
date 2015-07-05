package org.simpleframework.xml.stream;

final class ProviderFactory
{
  public static Provider getInstance()
  {
    try
    {
      PullProvider localPullProvider = new PullProvider();
      return localPullProvider;
    }
    catch (Throwable localThrowable) {}
    return new DocumentProvider();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.ProviderFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */