.class Lcom/estrongs/android/pop/app/compress/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/x;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/y;->b:Lcom/estrongs/android/pop/app/compress/x;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/y;->b:Lcom/estrongs/android/pop/app/compress/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/x;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->e(Lcom/estrongs/android/pop/app/compress/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/y;->b:Lcom/estrongs/android/pop/app/compress/x;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/x;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0317

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/y;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
