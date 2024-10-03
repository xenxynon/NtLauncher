.class Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NTLauncher"

    const-string v1, "onViewDetachedFromWindow: run clear task"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->access$000(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->access$100(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
