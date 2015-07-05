.class Lcom/estrongs/android/ui/dialog/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bq;->a:Lcom/estrongs/android/ui/dialog/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bq;->a:Lcom/estrongs/android/ui/dialog/bp;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bp;->c:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bj;->c:Lcom/estrongs/android/ui/dialog/bt;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bt;->notifyDataSetChanged()V

    return-void
.end method
