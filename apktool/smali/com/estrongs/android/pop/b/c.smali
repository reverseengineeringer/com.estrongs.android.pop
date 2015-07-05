.class final Lcom/estrongs/android/pop/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/b/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/b/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/b/c;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/b/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/c;->a:Landroid/app/Activity;

    const v2, 0x7f0b018f

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/b/c;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/b/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/b/c;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
