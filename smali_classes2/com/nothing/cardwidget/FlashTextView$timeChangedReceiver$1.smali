.class public final Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/FlashTextView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/FlashTextView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/FlashTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;->this$0:Lcom/nothing/cardwidget/FlashTextView;

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

    iget-object p1, p0, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;->this$0:Lcom/nothing/cardwidget/FlashTextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/cardwidget/FlashTextView$timeChangedReceiver$1;->this$0:Lcom/nothing/cardwidget/FlashTextView;

    invoke-static {p0}, Lcom/nothing/cardwidget/FlashTextView;->access$startFlash(Lcom/nothing/cardwidget/FlashTextView;)V

    :cond_1
    return-void
.end method
