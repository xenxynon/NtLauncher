.class public final synthetic Lcom/android/launcher3/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner;

.field public final synthetic h:Landroid/window/TransitionInfo;

.field public final synthetic i:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/x1;->g:Lcom/android/launcher3/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/android/launcher3/x1;->h:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/launcher3/x1;->i:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/x1;->g:Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/x1;->h:Landroid/window/TransitionInfo;

    iget-object p0, p0, Lcom/android/launcher3/x1;->i:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/LauncherAnimationRunner;->T(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method
