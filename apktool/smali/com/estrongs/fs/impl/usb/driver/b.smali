.class public Lcom/estrongs/fs/impl/usb/driver/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/estrongs/fs/impl/usb/a;)Lcom/estrongs/fs/impl/usb/driver/a;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;-><init>(Lcom/estrongs/fs/impl/usb/a;)V

    return-object v0
.end method
