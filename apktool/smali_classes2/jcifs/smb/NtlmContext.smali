.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field isEstablished:Z

.field log:Ljcifs/util/LogStream;

.field netbiosName:Ljava/lang/String;

.field ntlmsspFlags:I

.field serverChallenge:[B

.field signingKey:[B

.field state:I

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    iput-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iput-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    iput-object v1, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    or-int/lit8 v0, v0, 0x4

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    if-eqz p2, :cond_0

    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const v1, 0x40008010

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    :cond_0
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3a

    :goto_0
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    add-int/lit8 v3, v0, 0x4

    if-eqz v1, :cond_0

    add-int v0, v3, v2

    array-length v4, p1

    if-le v0, v4, :cond_1

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    if-ne v1, p2, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {v0, p1, v3, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    add-int v0, v3, v2

    goto :goto_0
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChallenge()[B
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    return-object v0
.end method

.method public initSecContext([BII)[B
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v4, 0x0

    iget v0, p0, Ljcifs/smb/NtlmContext;->state:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Ljcifs/ntlmssp/Type1Message;

    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_0

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v8, :cond_0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v2, v0

    invoke-static {v1, v0, v4, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljcifs/smb/NtlmContext;->state:I

    :goto_0
    return-object v0

    :pswitch_1
    :try_start_0
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v1, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v8, :cond_1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_1
    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v2

    and-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    new-instance v0, Ljcifs/ntlmssp/Type3Message;

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    iget v6, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-direct/range {v0 .. v6}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_2

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v2, v1, v3, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_2
    iget v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    iget v0, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEstablished()Z
    .locals 1

    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtlmContext[auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntlmsspFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isEstablished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serverChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
