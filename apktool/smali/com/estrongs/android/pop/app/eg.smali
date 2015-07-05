.class Lcom/estrongs/android/pop/app/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eg;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eg;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/OpenRecomm;->a(Lcom/estrongs/android/pop/app/OpenRecomm;Z)Z

    return-void
.end method
