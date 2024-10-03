.class public Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
.super Lcom/android/launcher3/taskbar/TaskbarUIController;
.source "SourceFile"


# instance fields
.field private final mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;-><init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->animateToRecentsState(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method private animateToRecentsState(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashDuration()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->createAnimToRecentsState(Lcom/android/quickstep/fallback/RecentsState;J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private isIn3pHomeOrRecents()Z
    .locals 2

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isRecentsTask()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public createAnimToRecentsState(Lcom/android/quickstep/fallback/RecentsState;J)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->isIn3pHomeOrRecents()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    xor-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createApplyStateAnimator(J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method getSplitMenuOptions()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->isIn3pHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getSplitMenuOptions()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsActivity;->setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsActivity;->setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method
