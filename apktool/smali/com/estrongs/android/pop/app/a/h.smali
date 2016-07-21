.class final Lcom/estrongs/android/pop/app/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/h;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/h;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/a/h;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->d()Lcom/estrongs/android/pop/app/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/m;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/h;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->d()Lcom/estrongs/android/pop/app/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/m;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/h;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/h;->c:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/h;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
