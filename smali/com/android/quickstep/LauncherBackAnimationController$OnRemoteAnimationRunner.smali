.class Lcom/android/quickstep/LauncherBackAnimationController$OnRemoteAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherBackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnRemoteAnimationRunner"
.end annotation


# instance fields
.field mLauncherBackAnimationController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/LauncherBackAnimationController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnRemoteAnimationRunner;->mLauncherBackAnimationController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnRemoteAnimationRunner;->mLauncherBackAnimationController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz p0, :cond_2

    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-object p4, p2, p3

    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {p0, p4}, Lcom/android/quickstep/LauncherBackAnimationController;->access$000(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/RemoteAnimationTarget;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0, p5}, Lcom/android/quickstep/LauncherBackAnimationController;->access$100(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_2
    return-void
.end method
