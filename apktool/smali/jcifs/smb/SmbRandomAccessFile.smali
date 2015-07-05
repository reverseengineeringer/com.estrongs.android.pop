.class public Ljcifs/smb/SmbRandomAccessFile;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# static fields
.field private static final WRITE_OPTIONS:I = 0x842


# instance fields
.field private access:I

.field private ch:I

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private options:I

.field private readSize:I

.field private tmp:[B

.field private writeSize:I

.field private write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 6

    const v5, 0xffb9

    const v4, 0x8000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iput-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    :goto_0
    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    const/16 v2, 0x80

    iget v3, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_2

    sget v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    add-int/lit8 v0, v0, -0x46

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    :goto_1
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-boolean v0, v0, Ljcifs/smb/SmbSession;->server_is_windows:Z

    if-nez v0, :cond_3

    sget v0, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    add-int/lit8 v0, v0, -0x46

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-void

    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    new-instance v0, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    const/16 v0, 0x842

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    goto :goto_1

    :cond_3
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v3, 0x80

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v1, v2, v0, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_1
    new-instance v8, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v8, p1, p2}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    if-le p3, v0, :cond_3

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    :goto_1
    iget-object v9, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComReadAndX;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {v9, v0, v8}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v0, :cond_5

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v6

    :goto_2
    long-to-int v0, v0

    goto :goto_0

    :cond_3
    move v4, p3

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_5
    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v10, v0

    add-long/2addr v2, v10

    iput-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int/2addr p3, v0

    iget v1, v8, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v1, v0

    iput v1, v8, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    if-lez p3, :cond_6

    if-eq v0, v4, :cond_2

    :cond_6
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v2, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final readByte()B
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public final readChar()C
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_doublebe([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_floatbe([BI)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 6

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    if-lt v0, p3, :cond_0

    return-void
.end method

.method public final readInt()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v2, v3

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    iput-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v2, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, v0}, Ljcifs/util/Encdec;->dec_utf8([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final readUnsignedByte()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .locals 1

    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-void
.end method

.method public setLength(J)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v2, 0x80

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v3, v2, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_0
    new-instance v7, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iget-object v8, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComWrite;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p1

    long-to-int v2, v4

    iget-object v4, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljcifs/smb/SmbComWrite;-><init>(III[BII)V

    invoke-virtual {v8, v0, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method public skipBytes(I)I
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 10

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/4 v2, 0x0

    const/16 v3, 0x80

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_1
    move v6, p2

    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    if-le p3, v0, :cond_2

    iget v7, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    :goto_1
    iget-object v9, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int v4, p3, v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Ljcifs/smb/SmbComWriteAndX;-><init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v9, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_2
    move v7, p3

    goto :goto_1
.end method

.method public final writeBoolean(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v3, v2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeChar(I)V
    .locals 3

    const/4 v2, 0x0

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-array v5, v4, [B

    new-array v6, v3, [C

    invoke-virtual {p1, v1, v3, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    add-int/lit8 v0, v7, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5, v1, v4}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeDouble(D)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/Encdec;->enc_doublebe(D[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/Encdec;->enc_floatbe(F[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeLong(J)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeShort(I)V
    .locals 3

    const/4 v2, 0x0

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    const/16 v5, 0x7ff

    if-le v0, v5, :cond_0

    const/4 v0, 0x3

    :goto_1
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v3, [B

    invoke-virtual {p0, v3}, Ljcifs/smb/SmbRandomAccessFile;->writeShort(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, v1, v3}, Ljcifs/util/Encdec;->enc_utf8(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, v2, v3}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
