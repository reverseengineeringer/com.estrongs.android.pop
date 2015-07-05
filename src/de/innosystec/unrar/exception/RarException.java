package de.innosystec.unrar.exception;

public class RarException
  extends Exception
{
  private RarException.RarExceptionType type;
  
  public RarException(RarException.RarExceptionType paramRarExceptionType)
  {
    super(paramRarExceptionType.name());
    type = paramRarExceptionType;
  }
  
  public RarException(RarException.RarExceptionType paramRarExceptionType, String paramString)
  {
    super(paramRarExceptionType.name() + " - " + paramString);
    type = paramRarExceptionType;
  }
  
  public RarException(RarException paramRarException)
  {
    super(paramRarException.getMessage(), paramRarException);
    type = paramRarException.getType();
  }
  
  public RarException(Exception paramException)
  {
    super(paramException.getMessage(), paramException);
    type = RarException.RarExceptionType.unkownError;
  }
  
  public RarException.RarExceptionType getType()
  {
    return type;
  }
  
  public void setType(RarException.RarExceptionType paramRarExceptionType)
  {
    type = paramRarExceptionType;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.exception.RarException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */