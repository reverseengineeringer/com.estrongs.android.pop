.class Lcom/estrongs/android/pop/utils/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/bo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bp;->a:Lcom/estrongs/android/pop/utils/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bp;->a:Lcom/estrongs/android/pop/utils/bo;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bo;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->e()V

    return-void
.end method
