.class Lcom/estrongs/android/ui/dialog/ie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->b(Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->b(Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->b()Lcom/estrongs/fs/b/an;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/hn;->ar()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/pop/app/diskusage/a;-><init>(Landroid/content/Context;Lcom/estrongs/fs/b/an;)V

    iput-object v2, v1, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/an;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/dialog/hn;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->a()V

    :cond_2
    return-void
.end method
