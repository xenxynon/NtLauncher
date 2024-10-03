.class public final Lcom/nothing/cardwidget/pedometer/PedometerContainer$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
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
.method constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$3;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer$3;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->maybeUpdateWalkingPercent$default(Lcom/nothing/cardwidget/pedometer/PedometerContainer;IIZILjava/lang/Object;)V

    return-void
.end method
