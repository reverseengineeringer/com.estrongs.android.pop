.class Lcom/estrongs/android/ui/dialog/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bl;

    iput-boolean p2, v0, Lcom/estrongs/android/ui/dialog/bl;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->c:Lcom/estrongs/android/ui/dialog/bv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bv;->notifyDataSetChanged()V

    return-void
.end method
