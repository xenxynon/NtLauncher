.class public final Lcom/android/launcher3/uioverrides/RecentsViewStateController;
.super Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<",
        "Lcom/android/quickstep/views/LauncherRecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/RecentsViewStateController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->lambda$setStateWithAnimationInternal$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->lambda$setStateWithAnimationInternal$1(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Z)V
    .locals 5
    .param p1    # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/anim/PendingAnimation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v3}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {v1}, Lcom/android/quickstep/util/AnimUtils;->getDeviceOverviewToSplitTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/android/quickstep/views/RecentsView;->createSplitSelectInitAnimation(Lcom/android/launcher3/anim/PendingAnimation;I)V

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/FloatProperty;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1, v4}, Lcom/android/launcher3/LauncherState;->getSplitSelectTranslation(Lcom/android/launcher3/Launcher;)F

    move-result p1

    invoke-interface {v1}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlidePrimaryInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p2, v2, v3, p1, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/util/FloatProperty;

    const/4 v0, 0x0

    invoke-interface {v1}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideSecondaryInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setStateWithAnimationInternal$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    return-void
.end method

.method private synthetic lambda$setStateWithAnimationInternal$1(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object p0

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BaseDepthController;->setHasContentBehindLauncher(Z)V

    return-void
.end method

.method private setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/16 v1, 0x10

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/LauncherState;->areElementsVisible(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v4, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/16 v3, 0x8

    invoke-virtual {p3, v0, v3}, Lcom/android/launcher3/LauncherState;->areElementsVisible(Lcom/android/launcher3/Launcher;I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/16 v0, 0xe

    invoke-virtual {p2, v0, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p0, p3, v1, p2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method getContentAlphaProperty()Landroid/util/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    return-object p0
.end method

.method getTaskModalnessProperty()Landroid/util/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1    # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setState(Lcom/android/launcher3/LauncherState;)V

    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setFullscreenProgress(F)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/BaseDepthController;->setHasContentBehindLauncher(Z)V

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Z)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
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

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/p0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/p0;-><init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView#setStateWithAnimationInternal getCurrentPage(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getScrollForPage(getCurrentPage())): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/246283207"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/uioverrides/r0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/uioverrides/r0;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/launcher3/uioverrides/q0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/uioverrides/q0;-><init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Z)V

    invoke-direct {p0, p3, p2, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object p2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p2, p1, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    return-void
.end method
