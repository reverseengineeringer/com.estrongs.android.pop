.class Lcom/estrongs/android/ui/dialog/hf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hd;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/fs/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->c:Lcom/estrongs/android/ui/dialog/hc;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hc;->b(Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v0

    const v1, 0x7f0b03ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->c:Lcom/estrongs/android/ui/dialog/hc;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hd;->c:Lcom/estrongs/android/ui/dialog/hc;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hc;->b(Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/fs/h;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/hn;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/hc;->a(Lcom/estrongs/android/ui/dialog/hc;Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Lcom/estrongs/android/ui/dialog/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hd;->c:Lcom/estrongs/android/ui/dialog/hc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->b()V

    goto :goto_0
.end method
