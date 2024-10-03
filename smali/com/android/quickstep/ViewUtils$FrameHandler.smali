.class Lcom/android/quickstep/ViewUtils$FrameHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameHandler"
.end annotation


# instance fields
.field final mCancelled:Ljava/util/function/BooleanSupplier;

.field mDeferFrameCount:I

.field final mFinishCallback:Ljava/lang/Runnable;

.field mFinished:Z

.field final mHandler:Landroid/os/Handler;

.field mSurfaceCallbackRegistered:Z

.field final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mSurfaceCallbackRegistered:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/ViewUtils$FrameHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->onFrame()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/ViewUtils$FrameHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->schedule()Z

    move-result p0

    return p0
.end method

.method private finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    iget-object v1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    iput-boolean v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mSurfaceCallbackRegistered:Z

    :cond_2
    return-void
.end method

.method private onFrame()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->schedule()Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->finish()V

    return-void
.end method

.method private schedule()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mSurfaceCallbackRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mSurfaceCallbackRegistered:Z

    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object p0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/quickstep/p9;

    invoke-direct {p2, p0}, Lcom/android/quickstep/p9;-><init>(Lcom/android/quickstep/ViewUtils$FrameHandler;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->finish()V

    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method
