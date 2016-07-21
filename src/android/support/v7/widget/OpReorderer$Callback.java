package android.support.v7.widget;

abstract interface OpReorderer$Callback
{
  public abstract AdapterHelper.UpdateOp obtainUpdateOp(int paramInt1, int paramInt2, int paramInt3, Object paramObject);
  
  public abstract void recycleUpdateOp(AdapterHelper.UpdateOp paramUpdateOp);
}

/* Location:
 * Qualified Name:     android.support.v7.widget.OpReorderer.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */