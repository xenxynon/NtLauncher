.class public Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayUICallbacksImpl"
.end annotation


# instance fields
.field protected final mIsAllowedByPolicy:Z

.field protected final mTask:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mIsAllowedByPolicy:Z

    iput-object p3, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->lambda$onScreenshot$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->lambda$onSplit$1(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void
.end method

.method private synthetic lambda$onScreenshot$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static synthetic lambda$onSplit$1(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->access$000(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void
.end method


# virtual methods
.method public onScreenshot()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/android/quickstep/z6;

    invoke-direct {v1, p0}, Lcom/android/quickstep/z6;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSplit()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v0, Lcom/android/quickstep/a7;

    invoke-direct {v0, p0}, Lcom/android/quickstep/a7;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    return-void
.end method
