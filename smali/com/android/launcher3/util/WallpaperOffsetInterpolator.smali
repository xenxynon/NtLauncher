.class public Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;
    }
.end annotation


# static fields
.field private static final sTempInt:[I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRtl:Z

.field private mLockedToDefaultPage:Z

.field private mNumScreens:I

.field private mRegistered:Z

.field private final mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mWallpaperIsLiveWallpaper:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/y0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/y0;-><init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    new-instance v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->lambda$onWallpaperChanged$1()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->lambda$new$0(Landroid/content/Intent;)V

    return-void
.end method

.method private getNumPagesExcludingEmpty()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method private getNumScrollableScreensExcludingEmpty()I
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesExcludingEmpty()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onWallpaperChanged()V

    return-void
.end method

.method private synthetic lambda$onWallpaperChanged$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    return-void
.end method

.method private onWallpaperChanged()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/x0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/x0;-><init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateOffset()V
    .locals 4
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private wallpaperOffsetForScroll(II[I)V
    .locals 6

    const/4 v0, 0x1

    aput v0, p3, v0

    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-gt p2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesExcludingEmpty()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v4, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eqz v4, :cond_3

    move v3, v2

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v3, v4

    if-gtz v3, :cond_4

    aput v2, p3, v2

    return-void

    :cond_4
    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/PagedView;->getLayoutTransitionOffsetForPage(I)I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    sub-int/2addr v1, v0

    mul-int/2addr v1, v3

    aput v1, p3, v0

    iget-boolean p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz p0, :cond_5

    aget p0, p3, v0

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, v3

    sub-int/2addr p0, v1

    goto :goto_2

    :cond_5
    move p0, v2

    :goto_2
    sub-int/2addr p2, v0

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    aput p0, p3, v2

    return-void

    :cond_6
    :goto_3
    iget-boolean p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    aput p0, p3, v2

    return-void
.end method


# virtual methods
.method public getNumPagesForWallpaperParallax()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    return p0

    :cond_0
    const/4 v0, 0x4

    iget p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isLockedToDefaultPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    return p0
.end method

.method public jumpToFinal()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLockToDefaultPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onWallpaperChanged()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public syncWithScroll()V
    .locals 7

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScrollableScreensExcludingEmpty()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-static {v1, v6, v3, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v2, :cond_1

    if-lez v2, :cond_0

    iput v4, v1, Landroid/os/Message;->what:I

    :cond_0
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public wallpaperOffsetForScroll(I)F
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScrollableScreensExcludingEmpty()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    const/4 p0, 0x0

    aget p0, v1, p0

    int-to-float p0, p0

    const/4 p1, 0x1

    aget p1, v1, p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method
