.class Lcom/estrongs/android/b/a/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/b/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/k;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/estrongs/android/b/a/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/j;

    return-object v0
.end method

.method a(Lcom/estrongs/android/b/a/j;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/b/a/k;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/estrongs/android/b/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
