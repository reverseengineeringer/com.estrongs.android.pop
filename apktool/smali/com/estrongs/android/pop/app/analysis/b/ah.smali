.class Lcom/estrongs/android/pop/app/analysis/b/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/pop/app/analysis/a/y",
        "<",
        "Lcom/estrongs/android/pop/app/analysis/b/aj;",
        "Lcom/estrongs/android/pop/app/analysis/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/ah;->a:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ah;->a:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Lcom/estrongs/android/pop/app/analysis/b/ag;Lcom/estrongs/android/pop/app/analysis/a/u;)Lcom/estrongs/android/pop/app/analysis/a/u;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ah;->a:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iput-object p3, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ah;->a:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v0, v1, v1}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Lcom/estrongs/android/pop/app/analysis/b/ag;ZZ)V

    return-void
.end method

.method public bridge synthetic a(ILcom/estrongs/android/pop/app/analysis/a/u;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/b/ah;->a(ILcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    return-void
.end method

.method public a(ILcom/estrongs/android/pop/app/analysis/a/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(ILcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/estrongs/android/pop/app/analysis/b/aj;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/b/ah;->a(ILcom/estrongs/android/pop/app/analysis/a/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V

    return-void
.end method
