.class public final Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-static {p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->access$getListener$p(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-static {p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->access$getListener$p(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    move-result-object p2

    iget p2, p2, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    iget-object p0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-static {p0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->access$getListener$p(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    :goto_0
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
