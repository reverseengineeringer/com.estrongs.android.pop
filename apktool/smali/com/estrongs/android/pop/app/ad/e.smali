.class Lcom/estrongs/android/pop/app/ad/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/f;

.field final synthetic b:Lcom/estrongs/android/pop/app/ad/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/a;Lcom/duapps/ad/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/e;->b:Lcom/estrongs/android/pop/app/ad/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ad/e;->a:Lcom/duapps/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/e;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->d()V

    return-void
.end method
