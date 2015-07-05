.class public Lcom/estrongs/fs/impl/usb/driver/scsi/f;
.super Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;->NONE:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;-><init>(ILcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;BB)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
