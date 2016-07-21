package android.support.v7.widget;

class ChildHelper$Bucket
{
  static final int BITS_PER_WORD = 64;
  static final long LAST_BIT = Long.MIN_VALUE;
  long mData = 0L;
  Bucket next;
  
  private void ensureNext()
  {
    if (next == null) {
      next = new Bucket();
    }
  }
  
  void clear(int paramInt)
  {
    if (paramInt >= 64)
    {
      if (next != null) {
        next.clear(paramInt - 64);
      }
      return;
    }
    mData &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
  }
  
  int countOnesBefore(int paramInt)
  {
    if (next == null)
    {
      if (paramInt >= 64) {
        return Long.bitCount(mData);
      }
      return Long.bitCount(mData & (1L << paramInt) - 1L);
    }
    if (paramInt < 64) {
      return Long.bitCount(mData & (1L << paramInt) - 1L);
    }
    return next.countOnesBefore(paramInt - 64) + Long.bitCount(mData);
  }
  
  boolean get(int paramInt)
  {
    if (paramInt >= 64)
    {
      ensureNext();
      return next.get(paramInt - 64);
    }
    return (mData & 1L << paramInt) != 0L;
  }
  
  void insert(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= 64)
    {
      ensureNext();
      next.insert(paramInt - 64, paramBoolean);
    }
    label113:
    label119:
    for (;;)
    {
      return;
      boolean bool;
      if ((mData & 0x8000000000000000) != 0L)
      {
        bool = true;
        long l1 = (1L << paramInt) - 1L;
        long l2 = mData;
        mData = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & mData) << 1 | l2 & l1);
        if (!paramBoolean) {
          break label113;
        }
        set(paramInt);
      }
      for (;;)
      {
        if ((!bool) && (next == null)) {
          break label119;
        }
        ensureNext();
        next.insert(0, bool);
        return;
        bool = false;
        break;
        clear(paramInt);
      }
    }
  }
  
  boolean remove(int paramInt)
  {
    boolean bool2;
    if (paramInt >= 64)
    {
      ensureNext();
      bool2 = next.remove(paramInt - 64);
      return bool2;
    }
    long l1 = 1L << paramInt;
    if ((mData & l1) != 0L) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      mData &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
      l1 -= 1L;
      long l2 = mData;
      mData = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & mData, 1) | l2 & l1);
      bool2 = bool1;
      if (next == null) {
        break;
      }
      if (next.get(0)) {
        set(63);
      }
      next.remove(0);
      return bool1;
    }
  }
  
  void reset()
  {
    mData = 0L;
    if (next != null) {
      next.reset();
    }
  }
  
  void set(int paramInt)
  {
    if (paramInt >= 64)
    {
      ensureNext();
      next.set(paramInt - 64);
      return;
    }
    mData |= 1L << paramInt;
  }
  
  public String toString()
  {
    if (next == null) {
      return Long.toBinaryString(mData);
    }
    return next.toString() + "xx" + Long.toBinaryString(mData);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ChildHelper.Bucket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */