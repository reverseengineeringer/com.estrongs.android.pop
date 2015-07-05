.class Lcom/estrongs/android/ui/a/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_4

    :cond_0
    if-nez p2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bb;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bb;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/ad;->t(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bb;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v2, 0x7f0b0448

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bb;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/aa;->a()V

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bb;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_1
.end method
