.class Lcom/estrongs/android/pop/app/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/g;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/g;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/g;->a(J)V

    return-void
.end method
