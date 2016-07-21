.class Lcom/estrongs/android/ui/dialog/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/br;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bs;->a:Lcom/estrongs/android/ui/dialog/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bs;->a:Lcom/estrongs/android/ui/dialog/br;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/br;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->c:Lcom/estrongs/android/ui/dialog/bv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bv;->notifyDataSetChanged()V

    return-void
.end method
