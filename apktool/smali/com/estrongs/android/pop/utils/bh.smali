.class Lcom/estrongs/android/pop/utils/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bh;->a:Lcom/estrongs/android/pop/utils/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bh;->a:Lcom/estrongs/android/pop/utils/bg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->e()V

    return-void
.end method
