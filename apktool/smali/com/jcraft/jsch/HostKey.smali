.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;


# static fields
.field private static final f:[B

.field private static final g:[B


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:[B

.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->f:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    aget-byte v0, p4, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->c:I

    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->e:Ljava/lang/String;

    return-void

    :cond_0
    aget-byte v0, p4, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->c:I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid key type"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->c:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v4

    :goto_0
    if-lt v2, v6, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2

    sub-int v3, v6, v2

    if-ne v5, v3, :cond_0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_1

    :cond_2
    sub-int v3, v7, v2

    if-ne v5, v3, :cond_3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jcraft/jsch/HostKey;->f:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/HostKey;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jcraft/jsch/HostKey;->g:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->b([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    return-object v0
.end method
