.class public final Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private final activity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final displacementInterpolator:Landroid/view/animation/Interpolator;

.field private final enabled:Z

.field private gestureHeightYThreshold:F

.field private final maxTouchDisplacement:F

.field private final maxVisualDisplacement:F

.field private final swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field private final touchDisplacementToStash:F

.field private final translationCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 3

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v1, "controllers.taskbarActivityContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->activity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->enabled:Z

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->getTransitionCallback()Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->translationCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->displacementInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07057a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->maxVisualDisplacement:F

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->maxTouchDisplacement:F

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070562

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->touchDisplacementToStash:F

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->updateGestureHeight()V

    new-instance p1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->createSwipeListener()Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method public static final synthetic access$getDisplacementInterpolator$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->displacementInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static final synthetic access$getMaxTouchDisplacement$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->maxTouchDisplacement:F

    return p0
.end method

.method public static final synthetic access$getMaxVisualDisplacement$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->maxVisualDisplacement:F

    return p0
.end method

.method public static final synthetic access$getSwipeDownDetector$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    return-object p0
.end method

.method public static final synthetic access$getTouchDisplacementToStash$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->touchDisplacementToStash:F

    return p0
.end method

.method public static final synthetic access$getTranslationCallback$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->translationCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    return-object p0
.end method

.method private final createSwipeListener()Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)V

    return-object v0
.end method


# virtual methods
.method public final getControllers()Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingState()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->gestureHeightYThreshold:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->swipeDownDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateGestureHeight()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->activity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_height"

    invoke-static {v1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->activity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->gestureHeightYThreshold:F

    return-void
.end method
