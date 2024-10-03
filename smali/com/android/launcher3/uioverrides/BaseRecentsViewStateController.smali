.class public abstract Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/quickstep/views/RecentsView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field protected final mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->lambda$setStateWithAnimation$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$setStateWithAnimation$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isGestureActive()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    goto :goto_0

    :cond_0
    const-string p0, "Recent"

    const-string p1, "state cancel,but RecentsView is gestureActive,no need to reset"

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method abstract getContentAlphaProperty()Landroid/util/FloatProperty;
.end method

.method abstract getTaskModalnessProperty()Landroid/util/FloatProperty;
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 5
    .param p1    # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v3, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewModalness()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v3}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {p1}, Lcom/android/launcher3/statemanager/BaseState;->showTaskThumbnailSplash()Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v4

    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    new-instance p1, Lcom/android/launcher3/uioverrides/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/uioverrides/a;-><init>(Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 12
    .param p1    # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/states/StateAnimationConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/anim/PendingAnimation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    aget v4, v0, v3

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v6, 0x6

    invoke-virtual {p2, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p3, v1, v2, v4, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/4 v4, 0x1

    aget v0, v0, v4

    const/4 v4, 0x7

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p3, v1, v2, v0, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    const/16 v2, 0x8

    invoke-virtual {p2, v2, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v1, v4, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v6

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    invoke-direct {v8, v3, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move-object v11, v2

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v6, v7, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v1

    sget-object v3, Lcom/android/quickstep/views/FloatingTaskView;->PRIMARY_TRANSLATE_OFFSCREEN:Landroid/util/FloatProperty;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/quickstep/views/FloatingTaskView;->getStagePosition()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v8}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v8

    invoke-interface {v6, v0, v2, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getFloatingTaskOffscreenTranslationTarget(Landroid/view/View;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F

    move-result v0

    const/16 v2, 0x11

    invoke-virtual {p2, v2, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p3, v1, v3, v0, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitInstructionsView()Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p2, v1, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p3, v0, v4, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/16 v6, 0x9

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v6, v7}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p3, v0, v1, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewModalness()F

    move-result v2

    const/16 v6, 0xc

    invoke-virtual {p2, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p3, v0, v1, v2, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    invoke-interface {p1}, Lcom/android/launcher3/statemanager/BaseState;->showTaskThumbnailSplash()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-interface {p1}, Lcom/android/launcher3/statemanager/BaseState;->showTaskThumbnailSplash()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/LauncherState;

    if-ne p2, v6, :cond_3

    move-object v6, v5

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p3, v0, v1, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_3
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object p2, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz p1, :cond_6

    move v4, v3

    :cond_6
    invoke-virtual {p3, p0, p2, v4, v5}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    return-void
.end method
