.class public Lcom/estrongs/fs/impl/usb/fs/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    sput v0, Lcom/estrongs/fs/impl/usb/fs/b/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/estrongs/fs/impl/usb/fs/b/a;->a:I

    new-array v0, v0, [B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v2, "ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v0, v3

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    aput-byte v1, v0, v3

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/b/a;
    .locals 2

    sget v0, Lcom/estrongs/fs/impl/usb/fs/b/a;->a:I

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/b/a;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/b/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v0, 0x0

    new-array v2, v6, [C

    new-array v3, v5, [C

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    const/16 v1, 0xe5

    aput-char v1, v2, v0

    :cond_1
    :goto_1
    if-ge v0, v5, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public b()B
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    sget v3, Lcom/estrongs/fs/impl/usb/fs/b/a;->a:I

    if-ge v0, v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x80

    :goto_1
    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/estrongs/fs/impl/usb/fs/b/a;->a:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/estrongs/fs/impl/usb/fs/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    check-cast p1, Lcom/estrongs/fs/impl/usb/fs/b/a;

    iget-object v1, p1, Lcom/estrongs/fs/impl/usb/fs/b/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
