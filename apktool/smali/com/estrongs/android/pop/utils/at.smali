.class Lcom/estrongs/android/pop/utils/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/pop/utils/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/as;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/at;->b:Lcom/estrongs/android/pop/utils/as;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/at;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/at;->a:Lcom/estrongs/android/view/cr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Z)V

    return-void
.end method
