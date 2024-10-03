.class Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->access$000(Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;Landroid/view/MotionEvent;)V

    return-void
.end method
