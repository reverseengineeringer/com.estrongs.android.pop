.class Lcom/estrongs/android/ui/b/g;
.super Lcom/estrongs/android/ui/b/a;


# instance fields
.field final synthetic h:Lcom/estrongs/android/ui/b/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/f;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/g;->h:Lcom/estrongs/android/ui/b/f;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/b/a;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0e063d

    return v0
.end method

.method protected a(Lcom/estrongs/a/a/m;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/g;->h:Lcom/estrongs/android/ui/b/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/android/ui/b/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/g;->h:Lcom/estrongs/android/ui/b/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/f;->b(Lcom/estrongs/android/ui/b/f;)Lcom/estrongs/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/g;->h:Lcom/estrongs/android/ui/b/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/f;->b(Lcom/estrongs/android/ui/b/f;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
