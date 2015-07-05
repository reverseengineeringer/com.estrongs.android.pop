.class public Lcom/estrongs/fs/impl/usb/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/driver/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Lcom/estrongs/fs/impl/usb/driver/a;

.field private d:I

.field private e:I

.field private f:Lcom/estrongs/fs/impl/usb/fs/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/a/b;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/a/d;Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/a/b;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/usb/a/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/a/d;->b()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/a/b;->d:I

    iput-object p2, v0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {p2}, Lcom/estrongs/fs/impl/usb/driver/a;->b()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/b;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/a/d;Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/fs/a;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/fs/impl/usb/a/b;->f:Lcom/estrongs/fs/impl/usb/fs/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(JLjava/nio/ByteBuffer;)V
    .locals 7

    iget v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v0, v0

    div-long v0, p1, v0

    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/estrongs/fs/impl/usb/a/b;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/a/b;->a:Ljava/lang/String;

    const-string v3, "device offset not a multiple of block size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v3, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v3, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v4, v3

    rem-long v4, p1, v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2, v0, v1, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/driver/a;->b()I

    move-result v0

    return v0
.end method

.method public b(JLjava/nio/ByteBuffer;)V
    .locals 7

    iget v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v0, v0

    div-long v0, p1, v0

    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/estrongs/fs/impl/usb/a/b;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/a/b;->a:Ljava/lang/String;

    const-string v3, "device offset not a multiple of block size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v3, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v3, p0, Lcom/estrongs/fs/impl/usb/a/b;->e:I

    int-to-long v4, v3

    rem-long v4, p1, v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v3, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/a/b;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2, v0, v1, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    :cond_2
    return-void
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->f:Lcom/estrongs/fs/impl/usb/fs/a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->f:Lcom/estrongs/fs/impl/usb/fs/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->f:Lcom/estrongs/fs/impl/usb/fs/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/b;->f:Lcom/estrongs/fs/impl/usb/fs/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/a;->c()J

    move-result-wide v0

    goto :goto_0
.end method
