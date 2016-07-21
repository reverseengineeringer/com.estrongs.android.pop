.class Lcom/estrongs/android/cleaner/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/cleaner/f;

.field final synthetic b:Lcom/estrongs/android/cleaner/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/b/b;->b:Lcom/estrongs/android/cleaner/b/a;

    iput-object p2, p0, Lcom/estrongs/android/cleaner/b/b;->a:Lcom/estrongs/android/cleaner/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/b;->a:Lcom/estrongs/android/cleaner/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/cleaner/f;->a(Lcom/estrongs/android/cleaner/scandisk/h;)V

    return-void
.end method
