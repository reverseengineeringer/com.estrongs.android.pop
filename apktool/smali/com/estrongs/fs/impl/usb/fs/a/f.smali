.class Lcom/estrongs/fs/impl/usb/fs/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Lcom/estrongs/fs/impl/usb/fs/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/fs/b/a;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/b/a;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method static a()Lcom/estrongs/fs/impl/usb/fs/a/f;
    .locals 4

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(J)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(J)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->c(J)V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/f;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v2, "ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(I)V

    return-object v0
.end method

.method static a(Ljava/lang/String;IBIZ)Lcom/estrongs/fs/impl/usb/fs/a/f;
    .locals 7

    const/16 v6, 0xd

    const/4 v0, 0x0

    new-instance v2, Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;-><init>()V

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v3, v1, p1

    if-ge v3, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_0
    rsub-int/lit8 v5, v3, 0xd

    if-ge v1, v5, :cond_0

    const v5, 0xffff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move p1, v0

    :cond_1
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_2

    add-int/lit8 p3, p3, 0x40

    :cond_2
    int-to-byte v3, p3

    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v3, 0x5

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v3, 0x7

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v3, 0xe

    add-int/lit8 v4, p1, 0x5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    add-int/lit8 v4, p1, 0x6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x12

    add-int/lit8 v4, p1, 0x7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    add-int/lit8 v4, p1, 0x8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x16

    add-int/lit8 v4, p1, 0x9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    add-int/lit8 v4, p1, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v0, 0x1c

    add-int/lit8 v3, p1, 0xb

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v0, 0x1e

    add-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iput-object v1, v2, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    return-object v2
.end method

.method static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/a/f;
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->r()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    or-int/2addr v0, p1

    int-to-byte v0, v0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(IJ)V
    .locals 6

    const-wide/16 v4, 0xff

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    and-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static b(II)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x9

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    and-int/lit8 v2, p0, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    shr-int/lit8 v2, p1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    and-int/lit8 v2, p1, 0x1f

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->r()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private d(I)I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private e(I)J
    .locals 9

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    iget-object v6, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p1, 0x3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static f(J)I
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x7bc

    shl-int/lit8 v1, v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private static g(J)I
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private r()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method


# virtual methods
.method a(J)V
    .locals 3

    const/16 v0, 0x10

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->f(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    const/16 v0, 0xe

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->g(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    return-void
.end method

.method a(Lcom/estrongs/fs/impl/usb/fs/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/b/a;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/estrongs/fs/impl/usb/fs/b/a;->b(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xd

    new-array v2, v0, [C

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    aput-char v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    aput-char v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    aput-char v0, v2, v4

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    aput-char v0, v2, v5

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    aput-char v0, v2, v6

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    const/16 v0, 0xb

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xd

    if-ge v0, v3, :cond_0

    aget-char v3, v2, v0

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method b(J)V
    .locals 3

    const/16 v0, 0x18

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->f(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    const/16 v0, 0x16

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->g(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    return-void
.end method

.method b(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(J)V
    .locals 3

    const/16 v0, 0x12

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->f(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    return-void
.end method

.method c()Z
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->r()I

    move-result v0

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(I)V

    return-void
.end method

.method d(J)V
    .locals 7

    const-wide/32 v4, 0xffff

    const/16 v0, 0x14

    const/16 v1, 0x10

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    const/16 v0, 0x1a

    and-long v2, p1, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(II)V

    return-void
.end method

.method e(J)V
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(IJ)V

    return-void
.end method

.method e()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->r()I

    move-result v1

    and-int/lit8 v1, v1, 0x18

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method f()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(I)Z

    move-result v0

    return v0
.end method

.method g()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(I)Z

    move-result v0

    return v0
.end method

.method h()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(I)Z

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(I)Z

    move-result v0

    return v0
.end method

.method j()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->c(I)I

    move-result v1

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method k()J
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method l()J
    .locals 2

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v0

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method m()J
    .locals 2

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Lcom/estrongs/fs/impl/usb/fs/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/b/a;

    goto :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method p()J
    .locals 2

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method q()J
    .locals 2

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FatDirectoryEntry shortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/b/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
