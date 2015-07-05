.class Lcom/estrongs/android/ui/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic b:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic c:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic d:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic e:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic f:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic g:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic h:Lcom/estrongs/android/ui/c/b/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/g;->h:Lcom/estrongs/android/ui/c/b/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/g;->b:Lcom/estrongs/android/ui/c/a/d;

    iput-object p4, p0, Lcom/estrongs/android/ui/c/b/g;->c:Lcom/estrongs/android/ui/c/a/d;

    iput-object p5, p0, Lcom/estrongs/android/ui/c/b/g;->d:Lcom/estrongs/android/ui/c/a/d;

    iput-object p6, p0, Lcom/estrongs/android/ui/c/b/g;->e:Lcom/estrongs/android/ui/c/a/d;

    iput-object p7, p0, Lcom/estrongs/android/ui/c/b/g;->f:Lcom/estrongs/android/ui/c/a/d;

    iput-object p8, p0, Lcom/estrongs/android/ui/c/b/g;->g:Lcom/estrongs/android/ui/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->b:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/g;->h:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->h:Lcom/estrongs/android/ui/c/b/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    const-string v1, "Home_Download"

    const-string v0, "Home_Download_UV"

    :goto_0
    invoke-static {v1, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v0}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->h:Lcom/estrongs/android/ui/c/b/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->c:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_1

    const-string v1, "Home_Pic"

    const-string v0, "Home_Pic_UV"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->d:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_2

    const-string v1, "Home_Music"

    const-string v0, "Home_Music_UV"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->e:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_3

    const-string v1, "Home_Video"

    const-string v0, "Home_Video_UV"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->f:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_4

    const-string v1, "Home_Doc"

    const-string v0, "Home_Doc_UV"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/g;->g:Lcom/estrongs/android/ui/c/a/d;

    if-ne v1, v2, :cond_5

    const-string v1, "Home_App"

    const-string v0, "Home_App_UV"

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
