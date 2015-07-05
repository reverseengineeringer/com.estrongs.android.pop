.class Lcom/estrongs/android/ui/dialog/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/im;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/im;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a038a

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)[Lcom/estrongs/android/ui/dialog/io;

    move-result-object v1

    aget-object v0, v1, v0

    const-string v1, "ro"

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/io;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)[Lcom/estrongs/android/ui/dialog/io;

    move-result-object v1

    aget-object v0, v1, v0

    const-string v1, "rw"

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/io;->c:Ljava/lang/String;

    goto :goto_0
.end method
