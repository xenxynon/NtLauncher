.class Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/AllAppsEduView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllAppsEduTouchController"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/views/AllAppsEduView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->initAllAppsAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method private initAllAppsAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->initCurrentAnimation()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method private isDraggingOrSettling()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/util/TouchController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public bridge synthetic onDrag(FFLandroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDrag(FFLandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
