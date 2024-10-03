.class public final Lb3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lb3/t;->m(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lb3/t;->i(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lb3/t;->k(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static final d(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZFF)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZFF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getEnableDrawingLiveTile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lb3/t;->h(Lcom/android/quickstep/views/RecentsView;F)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getOrientationPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslation()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getOrientationPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 p3, 0x0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslation()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p4

    aput v0, p2, p3

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/quickstep/views/RecentsView;->STAND_PATH_INTER:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string p1, "objectAnimator"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isAppLockedTaskView()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lb3/v;->b(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final f(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Landroid/animation/AnimatorSet;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    const-string v0, "requireTaskViewAt(runningIndex + 1)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, -0x3db80000    # -50.0f

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3cb80000    # -200.0f

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v1, v2, :cond_1

    const/high16 v0, 0x43480000    # 200.0f

    :cond_1
    neg-float v1, v0

    :cond_2
    invoke-static {p0, p2, p3, v0, v1}, Lb3/t;->d(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    return-void
.end method

.method public static final g(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Landroid/animation/AnimatorSet;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    const-string v0, "requireTaskViewAt(runningIndex - 1)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v1, v2, :cond_1

    const/high16 v0, -0x3cb80000    # -200.0f

    :cond_1
    neg-float v1, v0

    :cond_2
    invoke-static {p0, p2, p3, v0, v1}, Lb3/t;->d(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    return-void
.end method

.method public static final h(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;F)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getEnableDrawingLiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb3/r;

    invoke-direct {v0, p1}, Lb3/r;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_0
    return-void
.end method

.method private static final i(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    const-string v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setAlpha(F)V

    return-void
.end method

.method public static final j(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getEnableDrawingLiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Lb3/s;

    invoke-direct {v0, p1}, Lb3/s;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_0
    return-void
.end method

.method private static final k(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    const-string v0, "$taskView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslation()Ljava/lang/Float;

    move-result-object p0

    const-string v0, "taskView.primaryTaskOffsetTranslation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method public static final l(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Landroid/animation/ObjectAnimator;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alphaObjectAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getEnableDrawingLiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Lb3/q;

    invoke-direct {v0, p0}, Lb3/q;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lb3/t$a;

    invoke-direct {p0, p1}, Lb3/t$a;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private static final m(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$this_setOrientationChangeLiveTileWindowAlphaAnimation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lb3/t;->h(Lcom/android/quickstep/views/RecentsView;F)V

    return-void
.end method

.method public static final n(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Landroid/animation/AnimatorSet;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    const-string p2, "requireTaskViewAt(runningIndex)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p2

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    if-eqz p3, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v2, "ofFloat(\n        current\u2026hildren) 0f else 1f\n    )"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x50

    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    instance-of p2, p0, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz p2, :cond_4

    check-cast p0, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSecondIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p2

    if-eqz p3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSecondIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p0

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    if-eqz p3, :cond_3

    move v0, v1

    :cond_3
    aput v0, v2, v6

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "ofFloat(\n            cur\u2026ren) 0f else 1f\n        )"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    return-void
.end method

.method public static final o(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TB;>;B::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TB;>;>(",
            "Lcom/android/quickstep/views/RecentsView<",
            "TA;TB;>;",
            "Landroid/animation/AnimatorSet;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lb3/t;->n(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V

    invoke-static {p0, p1, p2, p3}, Lb3/t;->g(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V

    invoke-static {p0, p1, p2, p3}, Lb3/t;->f(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V

    return-void
.end method
