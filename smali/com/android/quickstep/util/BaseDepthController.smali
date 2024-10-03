.class public Lcom/android/quickstep/util/BaseDepthController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEPTH:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/BaseDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEPTH_INDEX_COUNT:I = 0x2

.field private static final DEPTH_INDEX_STATE_TRANSITION:I = 0x0

.field private static final DEPTH_INDEX_WIDGET:I = 0x1


# instance fields
.field protected mCrossWindowBlursEnabled:Z

.field protected mCurrentBlur:I

.field private mDepth:F

.field private mHasContentBehindLauncher:Z

.field protected mInEarlyWakeUp:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mMaxBlurRadius:I

.field protected mPauseBlurs:Z

.field protected mSurface:Landroid/view/SurfaceControl;

.field private mWaitingOnSurfaceValidity:Z

.field protected final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field public final widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/BaseDepthController$1;

    const-string v1, "depth"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/BaseDepthController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/BaseDepthController;->DEPTH:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mMaxBlurRadius:I

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v0, Lcom/android/quickstep/util/BaseDepthController;->DEPTH:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/launcher3/taskbar/q;->a:Lcom/android/launcher3/taskbar/q;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/BaseDepthController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/BaseDepthController;->setDepth(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/BaseDepthController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    return p0
.end method

.method private setDepth(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    return-void
.end method


# virtual methods
.method protected applyDepthAndBlur()V
    .locals 3

    iget v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    iget-object v1, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/BaseDepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    :cond_0
    return-void
.end method

.method protected onInvalidSurface()V
    .locals 0

    return-void
.end method

.method public pauseBlursOnWindows(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    :cond_0
    return-void
.end method

.method protected setCrossWindowBlursEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mCrossWindowBlursEnabled:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    return-void
.end method

.method public setHasContentBehindLauncher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mHasContentBehindLauncher:Z

    return-void
.end method

.method protected setSurface(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mWaitingOnSurfaceValidity:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    :cond_1
    return-void
.end method
