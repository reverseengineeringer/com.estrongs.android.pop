.class Lcom/estrongs/android/view/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bw;->a:Lcom/estrongs/android/view/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/bw;->a:Lcom/estrongs/android/view/bv;

    iget-object v0, v0, Lcom/estrongs/android/view/bv;->e:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    return-void
.end method
