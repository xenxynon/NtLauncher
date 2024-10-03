.class final Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->showPinningView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Boolean;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->invoke$lambda$0(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onPopupVisibilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->invoke(Z)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    new-instance v2, Lcom/android/launcher3/taskbar/m1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/m1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getLauncherPrefs$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$animateTransientToPersistentTaskbar(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$animatePersistentToTransientTaskbar(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    :goto_0
    return-void
.end method
