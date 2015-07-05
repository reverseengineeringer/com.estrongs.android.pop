.class public Lcom/estrongs/fs/impl/usb/driver/scsi/d;
.super Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    sget-object v1, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;->IN:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;-><init>(ILcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;BB)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
