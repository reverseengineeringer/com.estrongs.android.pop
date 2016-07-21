.class Lcom/estrongs/android/pop/app/analysis/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/ab;->a:Lcom/estrongs/android/pop/app/analysis/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/b/a/a;)I
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->r()I

    move-result v0

    invoke-virtual {p2}, Lcom/estrongs/android/b/a/a;->r()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/b/a/a;

    check-cast p2, Lcom/estrongs/android/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/ab;->a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/b/a/a;)I

    move-result v0

    return v0
.end method
