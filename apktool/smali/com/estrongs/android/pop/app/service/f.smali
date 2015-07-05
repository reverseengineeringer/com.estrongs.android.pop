.class Lcom/estrongs/android/pop/app/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/v;

.field final synthetic b:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/f;->b:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/service/f;->a:Lcom/estrongs/android/pop/view/utils/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/f;->b:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/f;->a:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/f;->b:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/g;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/g;->a(J)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/f;->b:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/f;->a:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
