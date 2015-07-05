.class Lcom/estrongs/android/ui/navigation/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/h;->a:Lcom/estrongs/android/ui/navigation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Lcom/estrongs/android/ui/navigation/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/g;->a:Lcom/estrongs/android/ui/navigation/a;

    new-instance v1, Lcom/estrongs/android/ui/navigation/i;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/navigation/i;-><init>(Lcom/estrongs/android/ui/navigation/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method
