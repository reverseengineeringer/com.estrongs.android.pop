.class Lcom/estrongs/fs/impl/usb/fs/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/a/c;
    .locals 10

    const/16 v7, 0xb

    const-wide v8, 0xffffffffL

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, 0xffff

    new-instance v3, Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-direct {v3}, Lcom/estrongs/fs/impl/usb/fs/a/c;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v6

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->a:I

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->b:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v6

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->c:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->d:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    and-long/2addr v4, v8

    iput-wide v4, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->e:J

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    and-long/2addr v4, v8

    iput-wide v4, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->f:J

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    and-long/2addr v4, v8

    iput-wide v4, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->g:J

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v6

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->h:I

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int v4, v0, v6

    int-to-byte v0, v4

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->i:Z

    int-to-byte v0, v4

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    iput v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_0

    add-int/lit8 v5, v0, 0x30

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    iget-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "UsbStorage"

    iput-object v0, v3, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->a:I

    return v0
.end method

.method a(I)J
    .locals 8

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->b()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->e()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->c:I

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->d:I

    return v0
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->e:J

    return-wide v0
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->f:J

    return-wide v0
.end method

.method f()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->g:J

    return-wide v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->h:I

    return v0
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->i:Z

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->j:I

    return v0
.end method

.method j()I
    .locals 2

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->b:I

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->a:I

    mul-int/2addr v0, v1

    return v0
.end method

.method k()J
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->e()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method l()J
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->e()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/c;->k:Ljava/lang/String;

    return-object v0
.end method
