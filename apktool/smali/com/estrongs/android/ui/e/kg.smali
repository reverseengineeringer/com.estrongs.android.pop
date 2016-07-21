.class Lcom/estrongs/android/ui/e/kg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ka;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ka;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kg;->a:Lcom/estrongs/android/ui/e/ka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kg;->a:Lcom/estrongs/android/ui/e/ka;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/ka;->a(Lcom/estrongs/android/ui/e/ka;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kg;->a:Lcom/estrongs/android/ui/e/ka;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/kr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kg;->a:Lcom/estrongs/android/ui/e/ka;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    check-cast v0, Lcom/estrongs/android/ui/e/kr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kr;->d()V

    :cond_0
    return-void
.end method
