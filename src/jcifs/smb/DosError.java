package jcifs.smb;

public abstract interface DosError
{
  public static final int[][] DOS_ERROR_CODES;
  public static final String[] DOS_ERROR_MESSAGES = { "The operation completed successfully.", "Incorrect function.", "Incorrect function.", "The system cannot find the file specified.", "Bad password.", "The system cannot find the path specified.", "reserved", "The client does not have the necessary access rights to perform the requested function.", "Access is denied.", "The TID specified was invalid.", "The handle is invalid.", "The network name cannot be found.", "Not enough storage is available to process this command.", "The media is write protected.", "The device is not ready.", "A device attached to the system is not functioning.", "A device attached to the system is not functioning.", "The process cannot access the file because it is being used by another process.", "The process cannot access the file because it is being used by another process.", "The process cannot access the file because another process has locked a portion of the file.", "The disk is full.", "A duplicate name exists on the network.", "The network name cannot be found.", "ERRnomoreconn.", "The file exists.", "The parameter is incorrect.", "Too many Uids active on this session.", "The Uid is not known as a valid user identifier on this session.", "The pipe has been ended.", "The filename, directory name, or volume label syntax is incorrect.", "The directory is not empty.", "Cannot create a file when that file already exists.", "All pipe instances are busy.", "The pipe is being closed.", "No process is on the other end of the pipe.", "More data is available.", "This user account has expired.", "The user is not allowed to log on from this workstation.", "The user is not allowed to log on at this time.", "The password of this user has expired." };
  
  static
  {
    int[] arrayOfInt1 = { 0, 0 };
    int[] arrayOfInt2 = { 65537, -1073741822 };
    int[] arrayOfInt3 = { 65538, -1073741822 };
    int[] arrayOfInt4 = { 131073, -1073741809 };
    int[] arrayOfInt5 = { 131074, -1073741718 };
    int[] arrayOfInt6 = { 196609, -1073741766 };
    int[] arrayOfInt7 = { 262146, -1073741622 };
    int[] arrayOfInt8 = { 327681, -1073741790 };
    int[] arrayOfInt9 = { 327682, -1073741811 };
    int[] arrayOfInt10 = { 393217, -1073741816 };
    int[] arrayOfInt11 = { 393218, -1073741620 };
    int[] arrayOfInt12 = { 524289, -1073741670 };
    int[] arrayOfInt13 = { 1245187, -1073741662 };
    int[] arrayOfInt14 = { 1376259, -1073741805 };
    int[] arrayOfInt15 = { 2031617, -1073741823 };
    int[] arrayOfInt16 = { 2031619, -1073741823 };
    int[] arrayOfInt17 = { 2097153, -1073741757 };
    int[] arrayOfInt18 = { 2097155, -1073741757 };
    int[] arrayOfInt19 = { 2162691, -1073741740 };
    int[] arrayOfInt20 = { 2555907, -1073741697 };
    int[] arrayOfInt21 = { 3407873, -1073741635 };
    int[] arrayOfInt22 = { 4390913, -1073741620 };
    int[] arrayOfInt23 = { 4653057, -1073741616 };
    int[] arrayOfInt24 = { 5242881, -1073741771 };
    int[] arrayOfInt25 = { 5701633, -1073741821 };
    int[] arrayOfInt26 = { 5963778, -1073741811 };
    int[] arrayOfInt27 = { 7143425, -1073741493 };
    int[] arrayOfInt28 = { 8060929, -1073741773 };
    int[] arrayOfInt29 = { 9502721, -1073741567 };
    int[] arrayOfInt30 = { 11993089, -1073741771 };
    int[] arrayOfInt31 = { 15138817, -1073741653 };
    int[] arrayOfInt32 = { 15204353, -1073741647 };
    int[] arrayOfInt33 = { 15269889, -1073741648 };
    int[] arrayOfInt34 = { 15335425, -1073741802 };
    int[] arrayOfInt35 = { 146866178, -1073741713 };
    int[] arrayOfInt36 = { 146931714, -1073741711 };
    DOS_ERROR_CODES = new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, { 196610, -1073741621 }, arrayOfInt7, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, arrayOfInt12, arrayOfInt13, arrayOfInt14, arrayOfInt15, arrayOfInt16, arrayOfInt17, arrayOfInt18, arrayOfInt19, arrayOfInt20, arrayOfInt21, arrayOfInt22, arrayOfInt23, arrayOfInt24, arrayOfInt25, { 5898242, -1073741618 }, arrayOfInt26, arrayOfInt27, arrayOfInt28, arrayOfInt29, arrayOfInt30, arrayOfInt31, arrayOfInt32, arrayOfInt33, arrayOfInt34, { 146735106, -1073741421 }, { 146800642, -1073741712 }, arrayOfInt35, arrayOfInt36 };
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.DosError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */