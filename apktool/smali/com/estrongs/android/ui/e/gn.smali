.class Lcom/estrongs/android/ui/e/gn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/e/gm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gm;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gn;->b:Lcom/estrongs/android/ui/e/gm;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/gn;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gn;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gn;->b:Lcom/estrongs/android/ui/e/gm;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gm;->a:Lcom/estrongs/android/ui/e/gl;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gl;->b:Lcom/estrongs/android/ui/e/gj;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gj;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v1, 0x7f0b02ed

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gn;->b:Lcom/estrongs/android/ui/e/gm;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gm;->a:Lcom/estrongs/android/ui/e/gl;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gl;->b:Lcom/estrongs/android/ui/e/gj;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gj;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v1, 0x7f0b02ee

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
