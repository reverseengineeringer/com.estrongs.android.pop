.class Lcom/estrongs/android/ui/navigation/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a(IF)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/a;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->e(I)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
