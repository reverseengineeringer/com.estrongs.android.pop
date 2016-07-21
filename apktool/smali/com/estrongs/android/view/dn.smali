.class Lcom/estrongs/android/view/dn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dn;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dn;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/pcs/b;

    return-void
.end method
