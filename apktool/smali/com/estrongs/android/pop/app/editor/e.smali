.class Lcom/estrongs/android/pop/app/editor/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->b(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)I

    move-result v2

    sub-int v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->c(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Lcom/estrongs/android/pop/app/editor/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->c(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Lcom/estrongs/android/pop/app/editor/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/editor/f;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;Z)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/e;->a:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
