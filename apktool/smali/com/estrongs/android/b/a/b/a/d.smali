.class Lcom/estrongs/android/b/a/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/estrongs/android/b/a/b/a/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/a/c;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/a/d;->b:Lcom/estrongs/android/b/a/b/a/c;

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/a/d;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/a/d;->b:Lcom/estrongs/android/b/a/b/a/c;

    iget-object v0, v0, Lcom/estrongs/android/b/a/b/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->d(J)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/a/d;->b:Lcom/estrongs/android/b/a/b/a/c;

    iget-object v0, v0, Lcom/estrongs/android/b/a/b/a/c;->b:Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/a/d;->b:Lcom/estrongs/android/b/a/b/a/c;

    iget-object v1, v1, Lcom/estrongs/android/b/a/b/a/c;->c:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Lcom/estrongs/android/b/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/a/d;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/a/d;->b:Lcom/estrongs/android/b/a/b/a/c;

    iget-object v0, v0, Lcom/estrongs/android/b/a/b/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Card_Ignore"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
