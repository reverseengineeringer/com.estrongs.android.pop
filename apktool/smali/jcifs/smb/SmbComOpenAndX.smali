.class Ljcifs/smb/SmbComOpenAndX;
.super Ljcifs/smb/AndXServerMessageBlock;


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DO_NOT_CACHE:I = 0x1000

.field private static final FLAGS_REQUEST_BATCH_OPLOCK:I = 0x4

.field private static final FLAGS_REQUEST_OPLOCK:I = 0x2

.field private static final FLAGS_RETURN_ADDITIONAL_INFO:I = 0x1

.field private static final OPEN_FN_CREATE:I = 0x10

.field private static final OPEN_FN_FAIL_IF_EXISTS:I = 0x0

.field private static final OPEN_FN_OPEN:I = 0x1

.field private static final OPEN_FN_TRUNC:I = 0x2

.field private static final SHARING_COMPATIBILITY:I = 0x0

.field private static final SHARING_DENY_NONE:I = 0x40

.field private static final SHARING_DENY_READ_EXECUTE:I = 0x30

.field private static final SHARING_DENY_READ_WRITE_EXECUTE:I = 0x10

.field private static final SHARING_DENY_WRITE:I = 0x20

.field private static final WRITE_THROUGH:I = 0x4000


# instance fields
.field allocationSize:I

.field creationTime:I

.field desiredAccess:I

.field fileAttributes:I

.field flags:I

.field openFunction:I

.field searchAttributes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput-object p1, p0, Ljcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

    const/16 v0, 0x2d

    iput-byte v0, p0, Ljcifs/smb/SmbComOpenAndX;->command:B

    and-int/lit8 v0, p2, 0x3

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v3, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/16 v0, 0x16

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    and-int/lit8 v0, p3, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_1

    const/16 v0, 0x12

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    :goto_0
    return-void

    :cond_1
    iput v3, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_4

    and-int/lit8 v0, p3, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget v0, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readBytesWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComOpenAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    invoke-static {v2, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget v3, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openFunction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    invoke-static {v2, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 2

    iget-boolean v0, p0, Ljcifs/smb/SmbComOpenAndX;->useUnicode:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    :goto_0
    iget-object v1, p0, Ljcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iput v1, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComOpenAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    sub-int v0, v2, p2

    return v0
.end method
