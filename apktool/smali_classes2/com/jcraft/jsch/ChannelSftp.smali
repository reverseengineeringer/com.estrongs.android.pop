.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# static fields
.field private static final U:Ljava/lang/String;

.field private static final V:C

.field private static W:Z


# instance fields
.field private F:I

.field private G:[I

.field private H:Lcom/jcraft/jsch/Buffer;

.field private I:Lcom/jcraft/jsch/Packet;

.field private J:Lcom/jcraft/jsch/Buffer;

.field private K:Lcom/jcraft/jsch/Packet;

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/util/Hashtable;

.field private P:Ljava/io/InputStream;

.field private Q:Ljava/io/InputStream;

.field private R:Z

.field private S:Z

.field private T:Z

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->U:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->V:C

    sget-char v0, Ljava/io/File;->separatorChar:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->W:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    const/high16 v5, 0x200000

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Z

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:[I

    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp;->L:I

    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->L:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->N:Ljava/lang/String;

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ad:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->c(I)V

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->d(I)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->a([BJ[BII)I

    move-result v0

    return v0
.end method

.method private a([BJ[BII)I
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p6

    add-int/lit8 v1, v1, 0x54

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x54

    sub-int p6, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x6

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->a(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->b([BII)V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->b(I)V

    goto :goto_0
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    return-object p2
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 4

    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->c([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a(BI)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;BI)V

    return-void
.end method

.method private a(B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(B[BLjava/lang/String;)V

    return-void
.end method

.method private a(B[BLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_0
.end method

.method private a(B[B[BLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v1, p3

    add-int/2addr v0, v1

    if-nez p4, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_0
.end method

.method private a(II[BZ)V
    .locals 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    const v1, 0x19000

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x0

    new-array v3, v0, [B

    move v1, p2

    :goto_0
    if-gtz p1, :cond_2

    move-object v0, v3

    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->j(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    return-void

    :cond_2
    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_5

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-direct {p0, v2, v4, v0}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v4, v2, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    const/4 v4, 0x3

    if-gt v0, v4, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    if-nez p3, :cond_6

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_8

    invoke-static {v3, v2}, Lcom/estrongs/android/util/e;->a([B[B)[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    :goto_3
    add-int/lit8 p1, p1, -0x1

    move-object v3, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    invoke-static {p3, v2}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_4
    invoke-static {p3, v0}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    move-result v0

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto :goto_4
.end method

.method private a(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 1

    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->c:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    return-void
.end method

.method private a(Lcom/jcraft/jsch/Buffer;I)V
    .locals 3

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "Failure"

    invoke-direct {v0, p2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->c(J)V

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->a([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 4

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a([BI)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x3

    array-length v1, p1

    add-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x11

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->a(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(IJI)V

    :cond_0
    return-void
.end method

.method private a([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x9

    array-length v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a([B[B)V
    .locals 2

    const/16 v1, 0x12

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    if-eqz v0, :cond_0

    const-string v0, "posix-rename@openssh.com"

    :goto_0
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B[BLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[[B)Z
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->m([B)Z

    move-result v0

    return v0
.end method

.method private a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->i([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    aput v0, p1, v3

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v2, v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    return-object v0
.end method

.method private b(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    return-void
.end method

.method private b([B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private b([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0xe

    array-length v0, p1

    add-int/lit8 v3, v0, 0x9

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->F:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(Lcom/jcraft/jsch/Buffer;)V

    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    array-length v3, p1

    add-int/lit8 v3, v3, 0x9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v1

    :cond_0
    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    goto :goto_1
.end method

.method private c([BII)I
    .locals 2

    move v0, p2

    :goto_0
    if-gtz p3, :cond_0

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputstream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method private c(J)V
    .locals 7

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    goto :goto_0
.end method

.method private c([B)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method static synthetic d(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    return v0
.end method

.method private d([B)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method static synthetic e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ad:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object v0
.end method

.method private e([B)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private f([B)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private g([B)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private h([B)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private i([B)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private j([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private k([B)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private k(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->c([B)V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    return-object v0
.end method

.method private l([B)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private m([B)Z
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    aget-byte v3, p1, v0

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    aget-byte v3, p1, v0

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    aget-byte v3, p1, v0

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)[B
    .locals 4

    const/16 v3, 0x65

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->b([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v3, :cond_0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    const/4 v3, 0x3

    if-gt v1, v3, :cond_3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    :cond_3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move v1, v2

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Ljava/lang/String;

    return-void
.end method

.method private o(Ljava/lang/String;)Ljava/util/Vector;
    .locals 12

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [[B

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v7

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    aget-object v9, v2, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->g([B)V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v1, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v3, v1, :cond_4

    const/16 v1, 0x66

    if-eq v3, v1, :cond_4

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x65

    if-ne v3, v1, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v10

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v10}, Lcom/jcraft/jsch/ChannelSftp;->h([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    iget v2, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v3, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    const/16 v5, 0x65

    if-eq v3, v5, :cond_6

    const/16 v5, 0x68

    if-eq v3, v5, :cond_6

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    const/16 v5, 0x65

    if-ne v3, v5, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    invoke-direct {p0, v10, v4}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v7

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->m()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {p0, v3, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    add-int/lit8 v3, v2, -0x4

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->k()V

    move v8, v2

    :goto_3
    if-gtz v8, :cond_8

    move-object v2, v4

    goto :goto_2

    :cond_8
    if-lez v3, :cond_b

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v5, v3

    if-le v2, v5, :cond_9

    move v2, v3

    :goto_4
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v11, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v5, v6, v11, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_a

    move-object v2, v4

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v2, v5

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v6, v5, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v6, v2

    iput v6, v5, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v3, v2

    :cond_b
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v6

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    const/4 v5, 0x3

    if-gt v2, v5, :cond_c

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    :cond_c
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v2}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    if-nez v5, :cond_11

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    :goto_5
    invoke-static {v9, v5}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_d
    if-nez v1, :cond_e

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    move-object v5, v6

    goto :goto_5

    :cond_12
    move-object v1, v0

    goto :goto_6
.end method

.method private p(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v0

    return v0
.end method

.method private q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Ljava/lang/String;

    return-object v0
.end method

.method private r(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not unique: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 9

    const/16 v8, 0x65

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    const-string v3, "??"

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v4

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->j([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v8, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    if-ne v0, v8, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ad:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .locals 10

    const/16 v8, 0x65

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is a directory"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eq p3, v6, :cond_1

    if-ne p3, v7, :cond_2

    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->g()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->k([B)V

    :goto_1
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v2, v8, :cond_4

    const/16 v3, 0x66

    if-eq v2, v3, :cond_4

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->l([B)V

    goto :goto_1

    :cond_4
    if-ne v2, v8, :cond_5

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    if-eq p3, v6, :cond_6

    if-ne p3, v7, :cond_7

    :cond_6
    add-long/2addr p4, v0

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$1;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->l(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/SftpATTRS;->a(I)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/jcraft/jsch/SftpATTRS;->a(II)V

    invoke-direct {p0, v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v6, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [[B

    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x0

    aget-object v1, v4, v1

    move-object v8, v1

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->g([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v2, v1, :cond_4

    const/16 v1, 0x66

    if-eq v2, v1, :cond_4

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->l(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a([B)[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x65

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v10

    :goto_2
    if-eqz v2, :cond_6

    :goto_3
    invoke-direct {p0, v10, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    return-void

    :cond_6
    invoke-direct {p0, v10}, Lcom/jcraft/jsch/ChannelSftp;->h([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    const/16 v4, 0x65

    if-eq v3, v4, :cond_7

    const/16 v4, 0x68

    if-eq v3, v4, :cond_7

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    const/16 v4, 0x65

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_9
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->m()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    add-int/lit8 v6, v0, -0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSftp;->ac:Z

    if-eqz v3, :cond_17

    invoke-direct {p0, v0, v6, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->a(II[BZ)V

    move v7, v0

    move v0, v2

    move v2, v6

    :goto_4
    if-gtz v7, :cond_a

    move v2, v0

    move-object v0, v1

    goto :goto_2

    :cond_a
    if-lez v2, :cond_16

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v4, v2

    if-le v3, v4, :cond_b

    move v3, v2

    :goto_5
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-direct {p0, v4, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    move-result v3

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v5, v4, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v2, v3

    move v6, v2

    :goto_6
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v4

    const/4 v2, 0x0

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    const/4 v5, 0x3

    if-gt v3, v5, :cond_15

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    move-object v5, v2

    :goto_7
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v2}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v2, v6

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v3, v4

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    if-nez v8, :cond_f

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_e

    if-nez v2, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_d
    if-nez v5, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v3, p0, v2, v0, v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    invoke-interface {p2, v3}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->a(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v0

    :cond_e
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v2, v6

    goto/16 :goto_4

    :cond_f
    if-nez v9, :cond_10

    invoke-static {v8, v4}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v3

    goto :goto_8

    :cond_10
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    if-nez v3, :cond_14

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "UTF-8"

    invoke-static {v3, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    :goto_a
    invoke-static {v8, v3}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    move-result v3

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_9

    :cond_12
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14
    move-object v3, v4

    goto :goto_a

    :cond_15
    move-object v5, v2

    goto/16 :goto_7

    :cond_16
    move v6, v2

    goto/16 :goto_6

    :cond_17
    move v7, v0

    move v0, v2

    move v2, v6

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    if-ge v0, v4, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/16 v1, 0x8

    const-string v2, "The remote sshd is too old to support rename operation."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v4, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([B[B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->a(Z)V

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->m(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->f()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t change directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t change directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->b(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->i:I

    invoke-direct {v1, p0, v0, v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->j()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->g:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Packet;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->s()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    const/high16 v2, 0x40000

    if-le v0, v2, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received message is too long: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    :goto_0
    if-gtz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Z

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Z

    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Ljava/lang/String;

    return-void

    :cond_6
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x68

    const/4 v5, 0x3

    const/4 v4, 0x4

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    if-ge v0, v5, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/16 v1, 0x8

    const-string v2, "The remote sshd is too old to support symlink operation."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->f([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    if-eq v0, v6, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    if-gt v3, v5, :cond_3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->j()[B

    :cond_3
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-static {v3}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v4, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->d([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v0, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v5, v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->e([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v0, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v5, v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->h()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->b([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 4

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->l(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "AUTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ac:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ac:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->p()I

    move-result v0

    if-gt v2, v0, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "The encoding can not be changed for this sftp server."

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "UTF-8"

    :cond_2
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ab:Z

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a()V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->m(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public p()I
    .locals 3

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, "The channel is not connected."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method
