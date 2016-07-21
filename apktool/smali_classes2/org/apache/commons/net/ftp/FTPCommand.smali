.class public final Lorg/apache/commons/net/ftp/FTPCommand;
.super Ljava/lang/Object;


# static fields
.field public static final ABOR:I = 0x15

.field public static final ABORT:I = 0x15

.field public static final ACCOUNT:I = 0x2

.field public static final ACCT:I = 0x2

.field public static final ALLO:I = 0x11

.field public static final ALLOCATE:I = 0x11

.field public static final APPE:I = 0x10

.field public static final APPEND:I = 0x10

.field public static final CDUP:I = 0x4

.field public static final CHANGE_TO_PARENT_DIRECTORY:I = 0x4

.field public static final CHANGE_WORKING_DIRECTORY:I = 0x3

.field public static final CWD:I = 0x3

.field public static final DATA_PORT:I = 0x8

.field public static final DELE:I = 0x16

.field public static final DELETE:I = 0x16

.field public static final EPRT:I = 0x25

.field public static final EPSV:I = 0x24

.field public static final FEAT:I = 0x22

.field public static final FEATURES:I = 0x22

.field public static final FILE_STRUCTURE:I = 0xb

.field public static final GET_MOD_TIME:I = 0x21

.field public static final HELP:I = 0x1f

.field private static final LAST:I = 0x27

.field public static final LIST:I = 0x1a

.field public static final LOGOUT:I = 0x7

.field public static final MAKE_DIRECTORY:I = 0x18

.field public static final MDTM:I = 0x21

.field public static final MFMT:I = 0x23

.field public static final MKD:I = 0x18

.field public static final MLSD:I = 0x26

.field public static final MLST:I = 0x27

.field public static final MODE:I = 0xc

.field public static final MOD_TIME:I = 0x21

.field public static final NAME_LIST:I = 0x1b

.field public static final NLST:I = 0x1b

.field public static final NOOP:I = 0x20

.field public static final PASS:I = 0x1

.field public static final PASSIVE:I = 0x9

.field public static final PASSWORD:I = 0x1

.field public static final PASV:I = 0x9

.field public static final PORT:I = 0x8

.field public static final PRINT_WORKING_DIRECTORY:I = 0x19

.field public static final PWD:I = 0x19

.field public static final QUIT:I = 0x7

.field public static final REIN:I = 0x6

.field public static final REINITIALIZE:I = 0x6

.field public static final REMOVE_DIRECTORY:I = 0x17

.field public static final RENAME_FROM:I = 0x13

.field public static final RENAME_TO:I = 0x14

.field public static final REPRESENTATION_TYPE:I = 0xa

.field public static final REST:I = 0x12

.field public static final RESTART:I = 0x12

.field public static final RETR:I = 0xd

.field public static final RETRIEVE:I = 0xd

.field public static final RMD:I = 0x17

.field public static final RNFR:I = 0x13

.field public static final RNTO:I = 0x14

.field public static final SET_MOD_TIME:I = 0x23

.field public static final SITE:I = 0x1c

.field public static final SITE_PARAMETERS:I = 0x1c

.field public static final SMNT:I = 0x5

.field public static final STAT:I = 0x1e

.field public static final STATUS:I = 0x1e

.field public static final STOR:I = 0xe

.field public static final STORE:I = 0xe

.field public static final STORE_UNIQUE:I = 0xf

.field public static final STOU:I = 0xf

.field public static final STRU:I = 0xb

.field public static final STRUCTURE_MOUNT:I = 0x5

.field public static final SYST:I = 0x1d

.field public static final SYSTEM:I = 0x1d

.field public static final TRANSFER_MODE:I = 0xc

.field public static final TYPE:I = 0xa

.field public static final USER:I

.field public static final USERNAME:I

.field private static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PASS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACCT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CWD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDUP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SMNT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REIN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "QUIT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PASV"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "STRU"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MODE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RETR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "STOR"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "STOU"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "APPE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ALLO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "REST"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RNFR"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RNTO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ABOR"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DELE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "RMD"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MKD"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PWD"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LIST"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "NLST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SITE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SYST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "STAT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "HELP"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "NOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MDTM"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "FEAT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "MFMT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "EPSV"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "EPRT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "MLSD"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "MLST"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkArray()V
    .locals 4

    const/16 v0, 0x28

    sget-object v1, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect _commands array. Should have length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
