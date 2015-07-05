.class Lcom/estrongs/android/pop/app/service/g;
.super Lcom/estrongs/android/pop/app/service/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/g;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/service/j;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/g;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->j(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
