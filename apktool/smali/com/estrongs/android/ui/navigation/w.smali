.class Lcom/estrongs/android/ui/navigation/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/navigation/r;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/navigation/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/t;Lcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/w;->b:Lcom/estrongs/android/ui/navigation/t;

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/w;->a:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/w;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home#"

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/w;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/w;->b:Lcom/estrongs/android/ui/navigation/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/t;->c:Lcom/estrongs/android/ui/navigation/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/s;->a(Lcom/estrongs/android/ui/navigation/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/w;->b:Lcom/estrongs/android/ui/navigation/t;

    iget-object v1, v1, Lcom/estrongs/android/ui/navigation/t;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    return-void
.end method
