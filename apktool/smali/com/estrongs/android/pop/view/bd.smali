.class Lcom/estrongs/android/pop/view/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x42

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "all"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b0449

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/be;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/be;-><init>(Lcom/estrongs/android/pop/view/bd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v3, "externalstorage://"

    invoke-virtual {v1}, Lcom/estrongs/android/view/aw;->ab()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
