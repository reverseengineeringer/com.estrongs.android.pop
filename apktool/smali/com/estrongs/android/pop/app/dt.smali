.class Lcom/estrongs/android/pop/app/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/app/ds;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ds;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/dt;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/app/dt;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/dt;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->setResult(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->finish()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dt;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const-class v2, Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const v1, 0x7f0a0336

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dt;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const v1, 0x7f0a0332

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
