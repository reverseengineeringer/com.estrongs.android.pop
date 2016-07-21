.class Lcom/estrongs/android/view/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;

.field final synthetic b:Lcom/estrongs/android/view/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bx;Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cb;->b:Lcom/estrongs/android/view/bx;

    iput-object p2, p0, Lcom/estrongs/android/view/cb;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cb;->a:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cb;->b:Lcom/estrongs/android/view/bx;

    iget-object v0, v0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    const v1, 0x7f08033f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cb;->b:Lcom/estrongs/android/view/bx;

    iget-object v0, v0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "encrypt_lb"

    const-string v2, "lp_encrypt"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cb;->a:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->k()V

    iget-object v2, p0, Lcom/estrongs/android/view/cb;->b:Lcom/estrongs/android/view/bx;

    iget-object v0, p0, Lcom/estrongs/android/view/cb;->b:Lcom/estrongs/android/view/bx;

    iget-object v0, v0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/view/bx;->a(Lcom/estrongs/android/view/bx;Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
