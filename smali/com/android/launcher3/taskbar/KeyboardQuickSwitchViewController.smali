.class public Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
    }
.end annotation


# instance fields
.field private mCloseAnimation:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentFocusIndex:I

.field private final mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/taskbar/TaskbarControllers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->lambda$openQuickSwitchView$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->launchTaskAt(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->lambda$launchTaskAt$1(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$launchTaskAt$1(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method private synthetic lambda$openQuickSwitchView$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void
.end method

.method private launchTaskAt(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->getTaskAt(I)Lcom/android/quickstep/util/GroupTask;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    iget-object p1, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/taskbar/o;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher3/taskbar/o;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    :cond_3
    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->launchSplitTasks(Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V

    :goto_0
    return v1
.end method

.method private onCloseComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->onCloseComplete()V

    return-void
.end method


# virtual methods
.method protected closeQuickSwitchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->onCloseComplete()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getCloseAnimation()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyboardQuickSwitchViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\thasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcloseAnimationRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmCurrentFocusIndex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getCurrentFocusedIndex()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return p0
.end method

.method protected launchFocusedTask()I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->getTaskCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->launchTaskAt(I)I

    move-result p0

    return p0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void
.end method

.method protected openQuickSwitchView(Ljava/util/List;IZI)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;IZI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/launcher3/taskbar/n;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/n;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;->runOnClickOnce(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->applyLoadPlan(Landroid/content/Context;Ljava/util/List;IZILcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    return-void
.end method
