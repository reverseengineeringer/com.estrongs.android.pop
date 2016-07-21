.class public Ljcifs/smb/SigningDigest;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static log:Ljcifs/util/LogStream;


# instance fields
.field private bypass:Z

.field private digest:Ljava/security/MessageDigest;

.field private macSigningKey:[B

.field private signSequence:I

.field private updates:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbTransport;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget v0, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x28

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v0, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    iget-object v0, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/16 v3, 0x10

    const/16 v4, 0x18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LM_COMPATIBILITY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v2, v2

    invoke-static {v0, v1, v5, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x28

    :try_start_2
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v0, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    iget-object v0, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/16 v3, 0x10

    const/16 v4, 0x18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    const/16 v0, 0x10

    :try_start_3
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v0, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([BZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iput-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    iput v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    iput v2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v1, "macSigningKey:"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v1, p1

    invoke-static {v0, p1, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public digest()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v2, "digest: "

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v2, v0

    invoke-static {v1, v0, v3, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1}, Ljcifs/util/LogStream;->flush()V

    :cond_0
    iput v3, p0, Ljcifs/smb/SigningDigest;->updates:I

    return-object v0
.end method

.method sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    iput v1, p4, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    if-eqz p5, :cond_0

    iget v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p5, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    iput-boolean v0, p5, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v3, v3

    invoke-virtual {p0, v1, v2, v3}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 v1, p2, 0xe

    :goto_0
    if-ge v0, v4, :cond_1

    add-int v2, v1, v0

    const/4 v3, 0x0

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SigningDigest;->update([BII)V

    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    const-string v0, "BSRSPYL "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_3

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    goto :goto_1

    :catchall_0
    move-exception v0

    iget v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM_COMPATIBILITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MacSigningKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 3

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0}, Ljcifs/util/LogStream;->flush()V

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget v0, p0, Ljcifs/smb/SigningDigest;->updates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/SigningDigest;->updates:I

    goto :goto_0
.end method

.method verify([BILjcifs/smb/ServerMessageBlock;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SigningDigest;->update([BII)V

    const/16 v0, 0xe

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 v0, p2, 0xe

    new-array v2, v6, [B

    iget v3, p3, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    int-to-long v4, v3

    invoke-static {v4, v5, v2, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    array-length v3, v2

    invoke-virtual {p0, v2, v1, v3}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 v2, v0, 0x8

    iget-byte v0, p3, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    move-object v0, p3

    check-cast v0, Ljcifs/smb/SmbComReadAndXResponse;

    iget v3, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xe

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p0, p1, v2, v3}, Ljcifs/smb/SigningDigest;->update([BII)V

    iget-object v2, v0, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v3, v0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v0, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {p0, v2, v3, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object v2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_3

    aget-byte v3, v2, v0

    add-int/lit8 v4, p2, 0xe

    add-int/2addr v4, v0

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_2

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v3, "signature verification failure"

    invoke-virtual {v0, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-static {v0, v2, v1, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    add-int/lit8 v1, p2, 0xe

    invoke-static {v0, p1, v1, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    :goto_2
    return v0

    :cond_1
    iget v0, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, p1, v2, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    move v0, v1

    goto :goto_2
.end method
