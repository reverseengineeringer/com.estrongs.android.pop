.class Lcom/estrongs/android/pop/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/estrongs/android/pop/FexApplication;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/FexApplication;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/d;->c:Lcom/estrongs/android/pop/FexApplication;

    iput-object p2, p0, Lcom/estrongs/android/pop/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->c:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v0}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/pop/FexApplication;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/d;->c:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v2}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/pop/FexApplication;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/q;

    iget-object v3, p0, Lcom/estrongs/android/pop/d;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/estrongs/android/ui/preference/q;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
