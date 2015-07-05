.class Lcom/estrongs/android/pop/app/service/h;
.super Lcom/estrongs/android/pop/app/service/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/h;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/service/j;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/h;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/h;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/h;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/service/h;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/service/h;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/service/a;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/h;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    return v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
