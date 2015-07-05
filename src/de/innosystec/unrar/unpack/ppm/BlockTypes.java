package de.innosystec.unrar.unpack.ppm;

public enum BlockTypes
{
  BLOCK_LZ(0),  BLOCK_PPM(1);
  
  private int blockType;
  
  private BlockTypes(int paramInt)
  {
    blockType = paramInt;
  }
  
  public static BlockTypes findBlockType(int paramInt)
  {
    if (BLOCK_LZ.equals(paramInt)) {
      return BLOCK_LZ;
    }
    if (BLOCK_PPM.equals(paramInt)) {
      return BLOCK_PPM;
    }
    return null;
  }
  
  public boolean equals(int paramInt)
  {
    return blockType == paramInt;
  }
  
  public int getBlockType()
  {
    return blockType;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.BlockTypes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */