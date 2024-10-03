.class public final Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$Companion;

.field private static final SHORT_DURATION_TIMEOUT:J = 0xfa0L


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private downY:F

.field private final mainHandler:Landroid/os/Handler;

.field private final onCompleteCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final onToastHiddenRunnable:Ljava/lang/Runnable;

.field private toast:Landroid/widget/Toast;

.field private final touchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->Companion:Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleteCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onCompleteCallback:Ljava/util/function/Consumer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->mainHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->touchSlop:I

    new-instance p1, Lcom/android/quickstep/inputconsumers/a;

    invoke-direct {p1, p0}, Lcom/android/quickstep/inputconsumers/a;-><init>(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onToastHiddenRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onToastHiddenRunnable$lambda$0(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V

    return-void
.end method

.method public static final synthetic access$getOnToastHiddenRunnable$p(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onToastHiddenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final hideSwipeTips()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->toast:Landroid/widget/Toast;

    return-void
.end method

.method private static final onToastHiddenRunnable$lambda$0(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onCompleteCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private final showSwipeTips()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->context:Landroid/content/Context;

    const v1, 0x7f120258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Ly2/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$showSwipeTips$1$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$showSwipeTips$1$1;-><init>(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onToastHiddenRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const/high16 p0, 0x10000

    return p0
.end method

.method public isConsumerDetachedFromGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->hideSwipeTips()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->downY:F

    goto :goto_5

    :cond_2
    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->downY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->touchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_7

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->onToastHiddenRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAccidentalGestureTriggerTime(J)V

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->showSwipeTips()V

    :cond_8
    :goto_5
    return-void
.end method
