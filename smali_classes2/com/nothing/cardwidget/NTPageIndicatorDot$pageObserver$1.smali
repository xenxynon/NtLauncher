.class public final Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTPageIndicatorDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$getMFadeDots$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {v0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$getFadeout$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$getMFadeDelay$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$cancelFadeout(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p3}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$getMPosition$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)I

    move-result p3

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p3}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$getMPositionOffset$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)F

    move-result p3

    cmpg-float p3, p3, p2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p3, p1}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$setMPosition$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p1, p2}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$setMPositionOffset$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;F)V

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
