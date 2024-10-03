.class Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionStatusProvider"
.end annotation


# instance fields
.field private mHasRun:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->mHasRun:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;-><init>()V

    return-void
.end method

.method private markAsRun()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->mHasRun:Z

    return-void
.end method


# virtual methods
.method public hasRun()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->mHasRun:Z

    return p0
.end method

.method public onFolded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->mHasRun:Z

    return-void
.end method

.method public onTransitionFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->markAsRun()V

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    invoke-super {p0}, Lm0/o$a;->onTransitionFinishing()V

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->markAsRun()V

    return-void
.end method

.method public onTransitionStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->markAsRun()V

    return-void
.end method
