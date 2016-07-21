.class Lcom/estrongs/android/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/k;

    iget-object v0, v0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->b(Landroid/content/Context;)V

    return-void
.end method
