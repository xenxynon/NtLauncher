.class Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;
.super Landroid/window/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherBackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBackInvokedCallback"
.end annotation


# instance fields
.field weakController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/LauncherBackAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field weakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field weakProgressAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/BackProgressAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;Landroid/window/BackProgressAnimator;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/a$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->lambda$onBackStarted$4(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->lambda$onBackCancelled$0()V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->lambda$onBackStarted$3(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V

    return-void
.end method

.method public static synthetic V(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->lambda$onBackInvoked$1()V

    return-void
.end method

.method private synthetic lambda$onBackCancelled$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$600(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$700(Lcom/android/quickstep/LauncherBackAnimationController;)V

    return-void
.end method

.method private synthetic lambda$onBackInvoked$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$500(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/BackProgressAnimator;

    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$3(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$302(Lcom/android/quickstep/LauncherBackAnimationController;F)F

    invoke-static {p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$300(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-static {p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$300(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v2

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    invoke-static {p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$300(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v2

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$302(Lcom/android/quickstep/LauncherBackAnimationController;F)F

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$300(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->access$400(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$4(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->access$200(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/quickstep/p2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/p2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, p2, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/q2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/q2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/r2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/r2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/s2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/s2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakProgressAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/quickstep/t2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/quickstep/t2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
