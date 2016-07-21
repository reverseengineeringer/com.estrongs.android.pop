.class Lcom/estrongs/android/ui/controller/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v3}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v3}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "all"

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f080380

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    new-instance v2, Lcom/estrongs/android/ui/controller/bc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/bc;-><init>(Lcom/estrongs/android/ui/controller/bb;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/controller/aj;->a(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/controller/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
