.class Lcom/estrongs/android/ui/a/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/ui/a/cn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cn;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cq;->c:Lcom/estrongs/android/ui/a/cn;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/cq;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/a/cq;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cq;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cq;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    const-string v1, "AppManager_Show"

    const-string v2, "AppManager_Show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
