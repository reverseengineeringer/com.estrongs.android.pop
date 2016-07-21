.class Lcom/estrongs/android/pop/app/dr;
.super Lcom/estrongs/android/util/m;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dr;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/dr;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dr;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->b(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dr;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->addComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/dr;->g:Z

    if-eqz v1, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dr;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const v3, 0x7f0801f9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/dr;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    new-instance v3, Lcom/estrongs/android/pop/app/ds;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/pop/app/ds;-><init>(Lcom/estrongs/android/pop/app/dr;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dr;->b:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const v2, 0x7f0801fa

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
