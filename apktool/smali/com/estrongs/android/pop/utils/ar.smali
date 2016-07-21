.class Lcom/estrongs/android/pop/utils/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/aq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ar;->a:Lcom/estrongs/android/pop/utils/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ar;->a:Lcom/estrongs/android/pop/utils/aq;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/aq;->a:Lcom/estrongs/android/pop/utils/ap;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->b(Landroid/content/Context;)V

    return-void
.end method
