.class Lcom/estrongs/android/ui/dialog/hj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hj;->a:Lcom/estrongs/android/ui/dialog/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hj;->a:Lcom/estrongs/android/ui/dialog/hc;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hc;->c(Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/ui/dialog/hn;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/android/ui/dialog/hk;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/hk;-><init>(Lcom/estrongs/android/ui/dialog/hj;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/l/a;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;Lcom/estrongs/a/a/p;)V

    :cond_0
    return-void
.end method
