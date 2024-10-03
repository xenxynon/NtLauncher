.class public final synthetic Lcom/android/quickstep/util/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

.field public final synthetic h:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic i:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic j:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic k:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/o0;->g:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iput-object p2, p0, Lcom/android/quickstep/util/o0;->h:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/quickstep/util/o0;->i:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/quickstep/util/o0;->j:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/quickstep/util/o0;->k:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/o0;->g:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object v1, p0, Lcom/android/quickstep/util/o0;->h:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/quickstep/util/o0;->i:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Lcom/android/quickstep/util/o0;->j:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/quickstep/util/o0;->k:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->T(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method
