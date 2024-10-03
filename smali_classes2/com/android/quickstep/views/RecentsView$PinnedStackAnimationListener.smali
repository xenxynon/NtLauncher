.class Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;
.super Lcom/android/wm/shell/pip/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinnedStackAnimationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Lcom/android/wm/shell/pip/b$a;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseActivity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/b$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->lambda$onPipAnimationStarted$0()V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->lambda$onExpandPip$1()V

    return-void
.end method

.method private synthetic lambda$onExpandPip$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onExpandPip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onPipAnimationStarted$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivity:Lcom/android/launcher3/BaseActivity;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onExpandPip()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/z1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/z1;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipAnimationStarted()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/y1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/y1;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipResourceDimensionsChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->access$5102(Lcom/android/quickstep/views/RecentsView;I)I

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p2}, Lcom/android/quickstep/views/RecentsView;->access$5202(Lcom/android/quickstep/views/RecentsView;I)I

    :cond_0
    return-void
.end method

.method public setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/BaseActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/quickstep/views/RecentsView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivity:Lcom/android/launcher3/BaseActivity;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method
