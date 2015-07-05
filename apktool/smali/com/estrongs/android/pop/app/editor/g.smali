.class Lcom/estrongs/android/pop/app/editor/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v2

    iget v0, v0, Lcom/estrongs/android/pop/app/editor/am;->b:I

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->scrollTo(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/app/editor/am;

    iget v2, v0, Lcom/estrongs/android/pop/app/editor/am;->b:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->scrollTo(II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/h;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/editor/h;-><init>(Lcom/estrongs/android/pop/app/editor/g;I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)V

    :cond_2
    iget v0, v0, Lcom/estrongs/android/pop/app/editor/am;->b:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/editor/i;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/editor/i;-><init>(Lcom/estrongs/android/pop/app/editor/g;I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V

    goto/16 :goto_0

    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
