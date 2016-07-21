.class Lcom/google/android/gms/analytics/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/internal/ay",
        "<",
        "Lcom/google/android/gms/analytics/internal/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/ab;

.field private final b:Lcom/google/android/gms/analytics/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/bk;->a:Lcom/google/android/gms/analytics/internal/ab;

    new-instance v0, Lcom/google/android/gms/analytics/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/gms/analytics/internal/aw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/bk;->b()Lcom/google/android/gms/analytics/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    iput p2, v0, Lcom/google/android/gms/analytics/internal/c;->d:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->a:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->f()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/j;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/analytics/internal/c;->e:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->a:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->f()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/j;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b()Lcom/google/android/gms/analytics/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/c;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->b:Lcom/google/android/gms/analytics/internal/c;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bk;->a:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->f()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/j;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
