.class Ljcifs/smb/SmbComTreeConnectAndX;
.super Ljcifs/smb/AndXServerMessageBlock;


# static fields
.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z

.field private static batchLimits:[B


# instance fields
.field private disconnectTid:Z

.field private password:[B

.field private passwordLength:I

.field path:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Ljcifs/smb/SmbSession;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_0
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_1
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_2
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_3
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_4
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_5
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_6
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V
    .locals 1

    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iput-object p2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const/16 v0, 0x75

    iput-byte v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->command:B

    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xff

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_6
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x10 -> :sswitch_0
        0x25 -> :sswitch_6
        0x2d -> :sswitch_4
    .end sparse-switch
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
    .locals 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",disconnectTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",passwordLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

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
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    add-int/2addr v0, p2

    :goto_0
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    :try_start_0
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    sub-int v0, v2, p2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, v2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v2, :cond_3

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :cond_0
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, v2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v3, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    array-length v2, v2

    iput v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    :goto_0
    add-int/lit8 v2, p2, 0x1

    iget-boolean v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    if-eqz v3, :cond_4

    :goto_1
    aput-byte v0, p1, p2

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTreeConnectAndX;->writeInt2(J[BI)V

    const/4 v0, 0x4

    return v0

    :cond_1
    sget-boolean v2, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    invoke-virtual {p0, v2, v3, v1}, Ljcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    :cond_3
    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
