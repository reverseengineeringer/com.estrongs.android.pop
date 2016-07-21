.class Lcom/estrongs/android/ui/dialog/hi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hg;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hi;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->a:Lcom/estrongs/fs/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hf;->b(Lcom/estrongs/android/ui/dialog/hf;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080066

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hf;->b(Lcom/estrongs/android/ui/dialog/hf;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/hi;->a:Lcom/estrongs/fs/h;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/hq;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/hf;->a(Lcom/estrongs/android/ui/dialog/hf;Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hi;->b:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hf;->b()V

    goto :goto_0
.end method
