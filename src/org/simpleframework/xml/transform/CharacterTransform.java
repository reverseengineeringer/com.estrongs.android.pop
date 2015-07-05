package org.simpleframework.xml.transform;

class CharacterTransform
  implements Transform<Character>
{
  public Character read(String paramString)
  {
    if (paramString.length() != 1) {
      throw new InvalidFormatException("Cannot convert '%s' to a character", new Object[] { paramString });
    }
    return Character.valueOf(paramString.charAt(0));
  }
  
  public String write(Character paramCharacter)
  {
    return paramCharacter.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.CharacterTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */