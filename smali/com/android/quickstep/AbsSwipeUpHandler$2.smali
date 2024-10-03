.class Lcom/android/quickstep/AbsSwipeUpHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandled:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field final synthetic val$dragLayer:Landroid/view/View;

.field final synthetic val$traceToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    iput-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$2;->lambda$onDraw$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/r1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/r1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method
