.class public final synthetic Lcom/android/quickstep/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic h:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o4;->g:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/o4;->h:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/o4;->g:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/o4;->h:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->e(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
