.class Lcom/estrongs/android/pop/app/ad/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ad/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/h;->a:Lcom/estrongs/android/pop/app/ad/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/h;->a:Lcom/estrongs/android/pop/app/ad/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ad/g;->a:Lcom/estrongs/android/pop/app/ad/a;

    const-string v1, "charge"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(Ljava/lang/String;)V

    return-void
.end method
