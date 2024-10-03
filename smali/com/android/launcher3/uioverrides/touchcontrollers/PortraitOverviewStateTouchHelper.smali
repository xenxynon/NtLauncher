.class public final Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mLauncher:Lcom/android/launcher3/Launcher;

.field mRecentsView:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method createSwipeDownToTaskAppAnimation(JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSwipeDownToTaskAppAnimation -> taskViewCount="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",,taskView="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "PortraitOverviewStateTouchHelper"

    invoke-static {p3, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    return-object p0
.end method

.method shouldSwipeDownReturnToApp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->shouldSwipeDownLaunchApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
