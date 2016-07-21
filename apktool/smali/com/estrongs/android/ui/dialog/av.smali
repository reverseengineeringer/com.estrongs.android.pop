.class Lcom/estrongs/android/ui/dialog/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/au;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/av;->a:Lcom/estrongs/android/ui/dialog/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/av;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->a:Lcom/estrongs/android/ui/dialog/ar;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ar;->a(Lcom/estrongs/android/ui/dialog/ar;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->b(Landroid/content/Context;)V

    return-void
.end method
