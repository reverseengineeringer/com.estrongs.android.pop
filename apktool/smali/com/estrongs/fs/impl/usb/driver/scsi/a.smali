.class public Lcom/estrongs/fs/impl/usb/driver/scsi/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/driver/scsi/a;
    .locals 3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->b:I

    iget v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->b:I

    const v2, 0x53425355

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->a:Ljava/lang/String;

    const-string v2, "unexpected dCSWSignature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->c:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->d:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->e:B

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->c:I

    return v0
.end method

.method public b()B
    .locals 1

    iget-byte v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->e:B

    return v0
.end method
