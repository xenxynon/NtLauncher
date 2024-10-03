.class Lcom/android/quickstep/AbsSwipeUpHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandled:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$rv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->val$rv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->mHandled:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/AbsSwipeUpHandler$6;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$6;->lambda$onDraw$0(Landroid/view/View;)V

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
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->mHandled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->mHandled:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/16 v1, 0xb

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->val$rv:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/t1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/t1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler$6;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
