package android.support.v4.d;

class l
  implements m
{
  public static final l a = new l();
  
  public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int j = 2;
    int i = paramInt1;
    while ((i < paramInt1 + paramInt2) && (j == 2))
    {
      j = i.a(Character.getDirectionality(paramCharSequence.charAt(i)));
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.d.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */