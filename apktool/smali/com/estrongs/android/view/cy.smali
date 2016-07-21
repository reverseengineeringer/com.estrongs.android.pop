.class Lcom/estrongs/android/view/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Search_Deeper"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "Search_Deeper_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->putAll(Ljava/util/Map;)V

    const-string v1, "fileSystemSearch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v1, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    iget-object v2, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
