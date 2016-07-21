.class Lcom/estrongs/android/ui/dialog/gr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gn;->a(Lcom/estrongs/android/ui/dialog/gn;)Lcom/estrongs/android/ui/dialog/gu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gu;->notifyDataSetChanged()V

    return-void
.end method
