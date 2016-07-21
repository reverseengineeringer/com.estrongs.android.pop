.class Lcom/estrongs/android/pop/app/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/m;->a:Lcom/estrongs/android/pop/app/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->a:Lcom/estrongs/android/pop/app/b/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/l;->a:Lcom/estrongs/android/pop/app/b/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    return-void
.end method
