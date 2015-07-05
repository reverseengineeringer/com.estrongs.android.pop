.class Lcom/estrongs/android/ui/dialog/gn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/gm;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gr;->notifyDataSetChanged()V

    return-void
.end method
