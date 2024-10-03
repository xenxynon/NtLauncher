.class public final Lcom/nothing/cardwidget/FlashTextView$FlashHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/FlashTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/FlashTextView;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/FlashTextView;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "_looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;->this$0:Lcom/nothing/cardwidget/FlashTextView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final startNextFlash()V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;->this$0:Lcom/nothing/cardwidget/FlashTextView;

    invoke-static {p0}, Lcom/nothing/cardwidget/FlashTextView;->access$getFlashHandler$p(Lcom/nothing/cardwidget/FlashTextView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "flashHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {p0}, Lcom/nothing/cardwidget/FlashTextView;->access$calcNextFlashDelay(Lcom/nothing/cardwidget/FlashTextView;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;->this$0:Lcom/nothing/cardwidget/FlashTextView;

    invoke-static {p1}, Lcom/nothing/cardwidget/FlashTextView;->access$isShowing$p(Lcom/nothing/cardwidget/FlashTextView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/nothing/cardwidget/FlashTextView;->access$changeAlpha(Lcom/nothing/cardwidget/FlashTextView;Z)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/FlashTextView$FlashHandler;->startNextFlash()V

    :cond_0
    return-void
.end method
