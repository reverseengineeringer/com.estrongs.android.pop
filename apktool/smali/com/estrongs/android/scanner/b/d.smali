.class Lcom/estrongs/android/scanner/b/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/scanner/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/estrongs/android/scanner/b/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/b/c;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/scanner/b/d;->d:Lcom/estrongs/android/scanner/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/b/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/scanner/b/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/b/d;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/scanner/b/d;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/b/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/estrongs/android/scanner/b/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/b/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/estrongs/android/scanner/b/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
