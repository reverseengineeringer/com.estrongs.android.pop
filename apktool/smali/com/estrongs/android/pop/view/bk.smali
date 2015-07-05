.class Lcom/estrongs/android/pop/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/impl/usb/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bk;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/impl/usb/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/ui/navigation/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/n;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/view/aw;)V

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
