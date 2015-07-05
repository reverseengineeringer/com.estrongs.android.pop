.class Lcom/estrongs/android/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/m;->a:Lcom/estrongs/android/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/m;->a:Lcom/estrongs/android/widget/l;

    iget-object v0, v0, Lcom/estrongs/android/widget/l;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
