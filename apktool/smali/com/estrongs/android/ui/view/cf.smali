.class Lcom/estrongs/android/ui/view/cf;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/view/ce;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ce;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/cf;->c:Lcom/estrongs/android/ui/view/ce;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/cf;->a:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/ui/view/cf;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/cf;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://play.google.com/store/apps/details"

    const-string v2, "market://details"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/cf;->c:Lcom/estrongs/android/ui/view/ce;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/ce;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    new-instance v2, Lcom/estrongs/android/ui/view/cg;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/cg;-><init>(Lcom/estrongs/android/ui/view/cf;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/cf;->a:Ljava/lang/String;

    goto :goto_0
.end method
