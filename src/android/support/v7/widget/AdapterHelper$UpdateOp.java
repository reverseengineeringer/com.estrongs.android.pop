package android.support.v7.widget;

class AdapterHelper$UpdateOp
{
  static final int ADD = 1;
  static final int MOVE = 8;
  static final int POOL_SIZE = 30;
  static final int REMOVE = 2;
  static final int UPDATE = 4;
  int cmd;
  int itemCount;
  Object payload;
  int positionStart;
  
  AdapterHelper$UpdateOp(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    cmd = paramInt1;
    positionStart = paramInt2;
    itemCount = paramInt3;
    payload = paramObject;
  }
  
  String cmdToString()
  {
    switch (cmd)
    {
    case 3: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      return "??";
    case 1: 
      return "add";
    case 2: 
      return "rm";
    case 4: 
      return "up";
    }
    return "mv";
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (UpdateOp)paramObject;
          if (cmd != cmd) {
            return false;
          }
        } while ((cmd == 8) && (Math.abs(itemCount - positionStart) == 1) && (itemCount == positionStart) && (positionStart == itemCount));
        if (itemCount != itemCount) {
          return false;
        }
        if (positionStart != positionStart) {
          return false;
        }
        if (payload == null) {
          break;
        }
      } while (payload.equals(payload));
      return false;
    } while (payload == null);
    return false;
  }
  
  public int hashCode()
  {
    return (cmd * 31 + positionStart) * 31 + itemCount;
  }
  
  public String toString()
  {
    return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + positionStart + "c:" + itemCount + ",p:" + payload + "]";
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AdapterHelper.UpdateOp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */