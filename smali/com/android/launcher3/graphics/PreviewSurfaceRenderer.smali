.class public Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mHeight:I

.field private mHideQsb:Z

.field private final mHostToken:Landroid/os/IBinder;

.field protected final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mNTBinder:Lh3/a;

.field private final mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

.field private final mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWallpaperColors:Landroid/app/WallpaperColors;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v1, "wallpaper_colors"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    const-string v1, "hide_bottom_row"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "host_token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    const-string v2, "width"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    const-string v2, "height"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const-string v2, "display_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/graphics/n;

    invoke-direct {v2, p0}, Lcom/android/launcher3/graphics/n;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControlViewHost;

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/graphics/j;

    invoke-direct {v2, p1}, Lcom/android/launcher3/graphics/j;-><init>(Landroid/view/SurfaceControlViewHost;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance p1, Lh3/a;

    const-string v0, "nt_calling_pid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "nt_calling_package"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nt_window_binder"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, v0, v2, v1, p2}, Lh3/a;-><init>(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelData()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelDataImp$1(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Landroid/view/SurfaceControlViewHost;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$new$0()Landroid/view/SurfaceControlViewHost;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelDataImp$2(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$renderView$3()V

    return-void
.end method

.method private synthetic lambda$loadModelDataImp$1(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$loadModelDataImp$2(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/graphics/m;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "PreviewSurfaceRenderer"

    const-string p1, "Model loading failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()Landroid/view/SurfaceControlViewHost;
    .locals 3

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private synthetic lambda$renderView$3()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->destroy()V

    return-void
.end method

.method private loadModelData()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelDataImp(Landroid/content/Context;)V

    return-void
.end method

.method private renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 4
    .param p5    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/model/BgDataModel;->getFirstScreenIndexForPreview()I

    move-result v0

    new-instance v1, Lg3/b;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-direct {v1, p1, v2, v3, p5}, Lg3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-boolean p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    invoke-virtual {v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    new-instance p5, Lcom/android/launcher3/graphics/l;

    invoke-direct {p5, p0}, Lcom/android/launcher3/graphics/l;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {p1, p5}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    check-cast p1, Lg3/b;

    invoke-virtual {p1, p2, p3, p4, v0}, Lg3/b;->f(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget p3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    iget p4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p2

    sub-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    iget p4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0xc8

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public getLoadedLauncherWidgetInfo(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p1, "spanY"

    const-string v0, "spanX"

    const-string v1, "appWidgetId"

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v3

    :try_start_0
    const-string v4, "favorites"

    filled-new-array {v1, v0, p1}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "itemType = 4"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "PreviewSurfaceRenderer"

    const-string v0, "Error querying for launcher widget info"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNTBinder()Lh3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    return-object p0
.end method

.method public getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p0

    return-object p0
.end method

.method public hideBottomRow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    :cond_0
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .param p1    # Landroid/os/IBinder$DeathRecipient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->d()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->d()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_0
    return-void
.end method

.method public loadAsync()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/k;

    invoke-direct {v1, p0}, Lcom/android/launcher3/graphics/k;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected loadModelDataImp(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->tryMigrateGrid(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    new-instance v4, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    new-instance p1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/model/LauncherBinder;

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-direct {v6, v0, v4, v1, v8}, Lcom/android/launcher3/model/LauncherBinder;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->run()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/graphics/o;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/o;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->loadAsync(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method protected tryMigrateGrid(Landroid/content/Context;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .param p1    # Landroid/os/IBinder$DeathRecipient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->d()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mNTBinder:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->d()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
