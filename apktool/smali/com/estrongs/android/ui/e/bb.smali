.class Lcom/estrongs/android/ui/e/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bb;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bb;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->r()Lcom/estrongs/fs/h;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
