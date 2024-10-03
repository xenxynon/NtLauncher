.class public final Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/BlinkChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/BlinkChronometer;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-static {v0}, Lcom/nothing/cardwidget/BlinkChronometer;->access$isRunning$p(Lcom/nothing/cardwidget/BlinkChronometer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nothing/cardwidget/BlinkChronometer;->access$updateText(Lcom/nothing/cardwidget/BlinkChronometer;J)V

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/BlinkChronometer;->dispatchChronometerTick()V

    iget-object v0, p0, Lcom/nothing/cardwidget/BlinkChronometer$mTickRunnable$1;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
