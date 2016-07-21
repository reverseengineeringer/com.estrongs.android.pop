.class Lcom/estrongs/android/ui/dialog/hg;
.super Lcom/estrongs/android/util/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/hf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hf;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/ci;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/hg;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hf;->a(Lcom/estrongs/android/ui/dialog/hf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hg;->g:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hf;->b(Lcom/estrongs/android/ui/dialog/hf;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/hh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hh;-><init>(Lcom/estrongs/android/ui/dialog/hg;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hg;->c:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hf;->b(Lcom/estrongs/android/ui/dialog/hf;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/hi;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/hi;-><init>(Lcom/estrongs/android/ui/dialog/hg;Lcom/estrongs/fs/h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
