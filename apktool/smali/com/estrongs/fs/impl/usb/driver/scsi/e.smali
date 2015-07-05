.class public Lcom/estrongs/fs/impl/usb/driver/scsi/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/driver/scsi/e;
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/estrongs/fs/impl/usb/driver/scsi/e;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/e;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->a:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->b:I

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->b:I

    return v0
.end method
