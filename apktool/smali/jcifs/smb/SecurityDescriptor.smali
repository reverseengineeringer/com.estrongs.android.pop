.class public Ljcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;


# instance fields
.field public aces:[Ljcifs/smb/ACE;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    return-void
.end method


# virtual methods
.method public decode([BII)I
    .locals 5

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SecurityDescriptor;->type:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    add-int v0, p2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v3

    add-int/lit8 v0, v0, 0x4

    const/16 v2, 0x1000

    if-le v3, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid SecurityDescriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v1, :cond_1

    new-array v1, v3, [Ljcifs/smb/ACE;

    iput-object v1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    new-instance v4, Ljcifs/smb/ACE;

    invoke-direct {v4}, Ljcifs/smb/ACE;-><init>()V

    aput-object v4, v2, v1

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Ljcifs/smb/ACE;->decode([BI)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v1, "SecurityDescriptor:\n"

    iget-object v0, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljcifs/smb/ACE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method
