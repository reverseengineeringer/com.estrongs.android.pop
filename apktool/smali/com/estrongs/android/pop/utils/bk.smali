.class Lcom/estrongs/android/pop/utils/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Lcom/estrongs/android/pop/utils/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bj;Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bk;->b:Lcom/estrongs/android/pop/utils/bj;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bk;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bk;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->e()V

    return-void
.end method
