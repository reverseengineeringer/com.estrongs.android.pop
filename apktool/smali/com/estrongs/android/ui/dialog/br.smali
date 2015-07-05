.class Lcom/estrongs/android/ui/dialog/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/br;->a:Lcom/estrongs/android/ui/dialog/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/br;->a:Lcom/estrongs/android/ui/dialog/bj;

    iput-boolean p2, v0, Lcom/estrongs/android/ui/dialog/bj;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/br;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bj;->c:Lcom/estrongs/android/ui/dialog/bt;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bt;->notifyDataSetChanged()V

    return-void
.end method
