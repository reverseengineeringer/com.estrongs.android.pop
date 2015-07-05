.class Lcom/estrongs/android/ui/dialog/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/at;->a:Lcom/estrongs/android/ui/dialog/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/at;->a:Lcom/estrongs/android/ui/dialog/as;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/as;->a:Lcom/estrongs/android/ui/dialog/ap;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ap;->a(Lcom/estrongs/android/ui/dialog/ap;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
