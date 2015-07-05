.class Lcom/estrongs/fs/impl/usb/fs/a/i;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static final j:Ljava/lang/String;


# instance fields
.field private k:I

.field private l:Lcom/estrongs/fs/impl/usb/driver/a;

.field private m:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->a:I

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->b:I

    const/16 v0, 0x1e4

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->c:I

    const/16 v0, 0x1fc

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->d:I

    const/16 v0, 0x1e8

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->e:I

    const/16 v0, 0x1ec

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->f:I

    const v0, 0x41615252

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->g:I

    const v0, 0x61417272

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->h:I

    const/high16 v0, -0x55ab0000

    sput v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->i:I

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/a/i;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/estrongs/fs/impl/usb/driver/a;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->l:Lcom/estrongs/fs/impl/usb/driver/a;

    iput p2, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->k:I

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v0, p2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->h:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->d:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->i:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid fs info structure!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static a(Lcom/estrongs/fs/impl/usb/driver/a;I)Lcom/estrongs/fs/impl/usb/fs/a/i;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/i;-><init>(Lcom/estrongs/fs/impl/usb/driver/a;I)V

    return-object v0
.end method


# virtual methods
.method a()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method a(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->e:I

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method b()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->f:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method b(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    sget v1, Lcom/estrongs/fs/impl/usb/fs/a/i;->f:I

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->l:Lcom/estrongs/fs/impl/usb/driver/a;

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->k:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2, v3, v1}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/i;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method c(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/i;->a()J

    move-result-wide v0

    sget v2, Lcom/estrongs/fs/impl/usb/fs/a/i;->a:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/i;->a(J)V

    :cond_0
    return-void
.end method
