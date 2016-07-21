.class Ljcifs/smb/NetServerEnum2;
.super Ljcifs/smb/SmbComTransaction;


# static fields
.field static final DESCR:[Ljava/lang/String;

.field static final SV_TYPE_ALL:I = -0x1

.field static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field domain:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field serverTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WrLehDO\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/NetServerEnum2;->command:B

    const/16 v0, 0x68

    iput-byte v0, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->name:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/NetServerEnum2;->maxParameterCount:I

    const/16 v0, 0x4000

    iput v0, p0, Ljcifs/smb/NetServerEnum2;->maxDataCount:I

    iput-byte v1, p0, Ljcifs/smb/NetServerEnum2;->maxSetupCount:B

    iput v1, p0, Ljcifs/smb/NetServerEnum2;->setupCount:I

    const/16 v0, 0x1388

    iput v0, p0, Ljcifs/smb/NetServerEnum2;->timeout:I

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method reset(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NetServerEnum2;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "SV_TYPE_ALL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "SV_TYPE_DOMAIN_ENUM"

    goto :goto_0
.end method

.method writeDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    :try_start_0
    sget-object v3, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-byte v4, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v3

    invoke-static {v3, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Ljcifs/smb/NetServerEnum2;->maxDataCount:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/NetServerEnum2;->writeInt4(J[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v3, v1}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3, v1}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v0

    add-int/2addr v0, v3

    :goto_1
    sub-int v1, v0, p2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method writeSetupWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
