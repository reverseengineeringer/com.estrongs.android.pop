.class Lcom/estrongs/android/pop/view/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/k;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/g;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Lcom/estrongs/android/pop/view/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dp;Lcom/estrongs/fs/impl/usb/g;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dr;->a:Lcom/estrongs/fs/impl/usb/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/dr;->b:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->c()V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/usb/UsbFsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dr;->b:Lcom/estrongs/fs/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/dp;->a(Lcom/estrongs/android/pop/view/dp;Lcom/estrongs/fs/h;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    const v2, 0x7f0b01b6

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/dp;->a(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/estrongs/fs/impl/usb/UsbFsException;->errorCode:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    const v1, 0x7f0b047a

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/dp;->b(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/estrongs/fs/impl/usb/UsbFsException;->errorCode:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    const v1, 0x7f0b020b

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/dp;->c(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->c:Lcom/estrongs/android/pop/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_0
.end method
