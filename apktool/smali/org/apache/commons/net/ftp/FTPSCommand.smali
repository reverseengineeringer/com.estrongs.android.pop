.class public final Lorg/apache/commons/net/ftp/FTPSCommand;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ADAT:I = 0x1

.field public static final AUTH:I = 0x0

.field public static final AUTHENTICATION_SECURITY_DATA:I = 0x1

.field public static final AUTHENTICATION_SECURITY_MECHANISM:I = 0x0

.field public static final CCC:I = 0x4

.field public static final CLEAR_COMMAND_CHANNEL:I = 0x4

.field public static final DATA_CHANNEL_PROTECTION_LEVEL:I = 0x3

.field public static final PBSZ:I = 0x2

.field public static final PROT:I = 0x3

.field public static final PROTECTION_BUFFER_SIZE:I = 0x2

.field private static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AUTH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ADAT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PBSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PROT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CCC"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
