.class Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RemoteInputView$RemoteEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-object p2, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
