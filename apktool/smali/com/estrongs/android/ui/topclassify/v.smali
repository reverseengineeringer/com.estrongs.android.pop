.class Lcom/estrongs/android/ui/topclassify/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/d;

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/topclassify/k;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/android/ui/topclassify/k;->d:Z

    const-string v1, "finder://"

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    iget-object v1, v1, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/ad;->z(Z)V

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/estrongs/android/j/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "applocker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/estrongs/android/pop/app/i;->a(Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    iget-object v1, v1, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v2, v2, Lcom/estrongs/android/ui/topclassify/k;->c:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->e(I)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "hideList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "finder://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/finder/a;->a(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/v;->a:Lcom/estrongs/android/ui/topclassify/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/t;)Lcom/estrongs/android/ui/c/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/c/a;->notifyItemChanged(I)V

    goto :goto_1
.end method
