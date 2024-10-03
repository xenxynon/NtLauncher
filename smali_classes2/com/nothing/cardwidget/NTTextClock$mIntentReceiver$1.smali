.class public final Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTTextClock;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTTextClock;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTTextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p1}, Lcom/nothing/cardwidget/NTTextClock;->access$getMStopTicking$p(Lcom/nothing/cardwidget/NTTextClock;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p1}, Lcom/nothing/cardwidget/NTTextClock;->access$getMTimeZone$p(Lcom/nothing/cardwidget/NTTextClock;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p2, p1}, Lcom/nothing/cardwidget/NTTextClock;->access$createTime(Lcom/nothing/cardwidget/NTTextClock;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p1}, Lcom/nothing/cardwidget/NTTextClock;->access$getMShouldRunTicker$p(Lcom/nothing/cardwidget/NTTextClock;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_SET"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock$mIntentReceiver$1;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTTextClock;->access$onTimeChanged(Lcom/nothing/cardwidget/NTTextClock;)V

    return-void
.end method
