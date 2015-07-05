.class public Lcom/estrongs/android/pop/app/service/i;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/estrongs/android/pop/app/service/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->f()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/service/a;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Lcom/estrongs/android/pop/app/service/a;)Lcom/estrongs/android/pop/app/service/a;

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/service/a;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v1

    invoke-interface {v1, v2, v2}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/service/a;Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/service/h;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/i;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/service/h;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/h;->a(J)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
