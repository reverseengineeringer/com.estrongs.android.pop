.class Lcom/estrongs/android/view/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bg;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/bg;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->putAll(Ljava/util/Map;)V

    const-string v1, "fileSystemSearch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v1, p0, Lcom/estrongs/android/view/bg;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/view/bg;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method
