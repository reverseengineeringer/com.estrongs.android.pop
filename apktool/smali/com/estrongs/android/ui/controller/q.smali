.class Lcom/estrongs/android/ui/controller/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/q;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/q;->a:Lcom/estrongs/android/ui/controller/h;

    const-string v1, "document"

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
