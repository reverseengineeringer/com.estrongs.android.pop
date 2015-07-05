.class Lcom/estrongs/android/ui/c/b/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/as;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/at;->b:Lcom/estrongs/android/ui/c/b/as;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/at;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/at;->b:Lcom/estrongs/android/ui/c/b/as;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    const-string v0, "Home_PCS"

    const-string v1, "Home_PCS"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Home_PCS_UV"

    const-string v1, "Home_PCS_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
