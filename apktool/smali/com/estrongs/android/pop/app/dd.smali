.class Lcom/estrongs/android/pop/app/dd;
.super Lcom/estrongs/android/util/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v1, "limit"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v2, v3}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getComments(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    new-instance v2, Lcom/estrongs/android/pop/app/de;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/de;-><init>(Lcom/estrongs/android/pop/app/dd;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/dd;->g:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v2

    const-string v3, "offset"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    new-instance v2, Lcom/estrongs/android/pop/app/df;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/df;-><init>(Lcom/estrongs/android/pop/app/dd;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_1
.end method
