.class Lcom/estrongs/android/ui/adapter/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/u;->a:Lcom/estrongs/android/ui/adapter/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/u;->a:Lcom/estrongs/android/ui/adapter/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/t;->b:Lcom/estrongs/android/ui/adapter/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/s;->notifyDataSetChanged()V

    return-void
.end method
