.class Lcom/estrongs/android/pop/app/compress/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bq;->a:Lcom/estrongs/android/pop/app/compress/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bq;->a:Lcom/estrongs/android/pop/app/compress/bp;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bp;->f:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bq;->a:Lcom/estrongs/android/pop/app/compress/bp;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bp;->f:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080428

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
