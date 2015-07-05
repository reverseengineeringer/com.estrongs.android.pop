.class public Lcom/estrongs/fs/impl/usb/driver/scsi/g;
.super Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:S


# direct methods
.method public constructor <init>(III)V
    .locals 3

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;->OUT:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;-><init>(ILcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;BB)V

    iput p1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->a:I

    iput p2, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->b:I

    iput p3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->c:I

    div-int v0, p2, p3

    int-to-short v0, v0

    rem-int v1, p2, p3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transfer bytes is not a multiple of block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-short v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->d:S

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a(Ljava/nio/ByteBuffer;)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->d:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScsiWrite10 [blockAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->d:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getdCbwDataTransferLength()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/driver/scsi/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
