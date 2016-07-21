.class Lcom/estrongs/android/ui/dialog/kf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bo;->d(I)V

    return-void
.end method
