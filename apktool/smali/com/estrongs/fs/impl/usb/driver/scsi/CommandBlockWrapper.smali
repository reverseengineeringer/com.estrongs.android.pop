.class public abstract Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:B

.field private d:B

.field private e:B

.field private f:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;


# direct methods
.method protected constructor <init>(ILcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;BB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->b:I

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->f:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;->IN:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    if-ne p2, v0, :cond_0

    const/16 v0, -0x80

    iput-byte v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->c:B

    :cond_0
    iput-byte p3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->d:B

    iput-byte p4, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->e:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a:I

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v0, 0x43425355

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->b:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->d:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->e:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->b:I

    return v0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->f:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    return-object v0
.end method
