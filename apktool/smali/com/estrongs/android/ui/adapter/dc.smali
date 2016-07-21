.class Lcom/estrongs/android/ui/adapter/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/ui/adapter/cz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/cz;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dc;->c:Lcom/estrongs/android/ui/adapter/cz;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/dc;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/adapter/dc;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dc;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dc;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dc;->c:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "AppManager_Show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
