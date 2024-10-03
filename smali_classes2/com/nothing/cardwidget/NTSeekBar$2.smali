.class public final Lcom/nothing/cardwidget/NTSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTSeekBar;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTSeekBar$2;->this$0:Lcom/nothing/cardwidget/NTSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTSeekBar$2;->this$0:Lcom/nothing/cardwidget/NTSeekBar;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTSeekBar;->access$getMH$p(Lcom/nothing/cardwidget/NTSeekBar;)Lcom/nothing/cardwidget/NTSeekBar$H;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/NTSeekBar$2;->this$0:Lcom/nothing/cardwidget/NTSeekBar;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTSeekBar;->access$getMSeekBarListener$p(Lcom/nothing/cardwidget/NTSeekBar;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTSeekBar$2;->this$0:Lcom/nothing/cardwidget/NTSeekBar;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTSeekBar;->access$getMH$p(Lcom/nothing/cardwidget/NTSeekBar;)Lcom/nothing/cardwidget/NTSeekBar$H;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-string v0, "mH.obtainMessage(MSG_PRO\u2026_CALLBACK, s.progress, 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/NTSeekBar;->send(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
