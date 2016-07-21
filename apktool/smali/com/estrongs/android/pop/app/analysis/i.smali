.class Lcom/estrongs/android/pop/app/analysis/i;
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
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/i;->a:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/b/a/a;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "junk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/b/a/a;

    check-cast p2, Lcom/estrongs/android/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/i;->a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/b/a/a;)I

    move-result v0

    return v0
.end method
