.class Lcom/estrongs/android/pop/utils/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/pop/utils/bs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bs;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bt;->b:Lcom/estrongs/android/pop/utils/bs;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bt;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bt;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->e()V

    return-void
.end method
