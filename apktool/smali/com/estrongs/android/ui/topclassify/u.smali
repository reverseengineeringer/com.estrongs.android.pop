.class Lcom/estrongs/android/ui/topclassify/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/topclassify/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/u;->a:Lcom/estrongs/android/ui/topclassify/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/estrongs/android/ui/topclassify/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/u;->a:Lcom/estrongs/android/ui/topclassify/t;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/t;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/u;->a:Lcom/estrongs/android/ui/topclassify/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/t;)Lcom/estrongs/android/ui/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->notifyDataSetChanged()V

    return-void
.end method
