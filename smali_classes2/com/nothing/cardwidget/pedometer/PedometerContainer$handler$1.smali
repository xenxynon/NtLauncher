.class public final Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/pedometer/PedometerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->access$getPedometerViewpager$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->access$getPedometerAnimIv$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->access$isResumed$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1$handleMessage$1;

    iget-object v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1$handleMessage$1;-><init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;ILq5/d;)V

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    iget-object v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-static {v6}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->access$getPedometerViewpager$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->maybeUpdateWalkingPercent$default(Lcom/nothing/cardwidget/pedometer/PedometerContainer;IIZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
