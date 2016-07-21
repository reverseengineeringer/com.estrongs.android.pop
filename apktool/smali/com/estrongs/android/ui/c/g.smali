.class Lcom/estrongs/android/ui/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/messagebox/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/g;->a:Lcom/estrongs/android/ui/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/g;->a:Lcom/estrongs/android/ui/c/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/e;->b(Lcom/estrongs/android/ui/c/e;)Lcom/estrongs/android/ui/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/pop/app/messagebox/ah;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/g;->a:Lcom/estrongs/android/ui/c/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/e;->b(Lcom/estrongs/android/ui/c/e;)Lcom/estrongs/android/ui/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
