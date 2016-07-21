.class public Lcom/estrongs/android/scanner/c/d;
.super Lcom/estrongs/android/scanner/c/e;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const-string v1, "encrypt"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/scanner/c/e;-><init>(ILjava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/d;->a:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/d;->a:Ljava/util/HashSet;

    const-string v1, ".eslock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/d;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/scanner/a/d;

    invoke-direct {v0, p1, v2, v1}, Lcom/estrongs/android/scanner/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x90010

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->d(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(I)V

    goto :goto_0
.end method
