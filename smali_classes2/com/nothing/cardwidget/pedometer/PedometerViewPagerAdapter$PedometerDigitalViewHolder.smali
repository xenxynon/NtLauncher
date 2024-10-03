.class public final Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PedometerDigitalViewHolder"
.end annotation


# instance fields
.field private final sevenDayAverageDes:Landroid/widget/TextView;

.field private final sevenDayAverageReachPercent:Landroid/widget/TextView;

.field private final sevenDayAverageValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

.field private final todayStepsDes:Landroid/widget/TextView;

.field private final todayStepsReachPercent:Landroid/widget/TextView;

.field private final todayStepsValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/nothing/cardwidget/R$id;->today_steps_value_txt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.today_steps_value_txt)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsValue:Landroid/widget/TextView;

    sget v1, Lcom/nothing/cardwidget/R$id;->today_steps_des_txt:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "itemView.findViewById(R.id.today_steps_des_txt)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    sget v2, Lcom/nothing/cardwidget/R$id;->today_steps_reach_percent_txt:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "itemView.findViewById(R.\u2026_steps_reach_percent_txt)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    sget v3, Lcom/nothing/cardwidget/R$id;->seven_day_average_value_txt:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "itemView.findViewById(R.\u2026en_day_average_value_txt)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageValue:Landroid/widget/TextView;

    sget v4, Lcom/nothing/cardwidget/R$id;->seven_day_average_reach_percent_txt:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "itemView.findViewById(R.\u2026verage_reach_percent_txt)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageReachPercent:Landroid/widget/TextView;

    sget v5, Lcom/nothing/cardwidget/R$id;->seven_day_average_des_txt:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v5, "itemView.findViewById(R.\u2026even_day_average_des_txt)"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageDes:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getTotalTodayDesStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getSevenDayAverageDesStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCommonTextColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v0

    mul-float/2addr v0, v6

    invoke-virtual {v3, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v0

    const/high16 v3, 0x41300000    # 11.0f

    mul-float/2addr v0, v3

    invoke-virtual {v2, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {v4, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p2, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result p1

    mul-float/2addr p1, v3

    invoke-virtual {v1, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->setViewMargin()V

    return-void
.end method

.method private final setViewMargin()V
    .locals 6

    const/16 v0, 0x10

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-static {v1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getHeightRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-static {v2}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getHeightRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v0, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsValue:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v0, v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageValue:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageDes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v0, v4, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageDes:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v4, v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageReachPercent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageReachPercent:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/nothing/cardwidget/pedometer/PedometerData;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/nothing/cardwidget/pedometer/DigitalData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nothing/cardwidget/pedometer/DigitalData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsValue:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getDigitalFormat$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)Ljava/text/DecimalFormat;

    move-result-object v2

    check-cast p1, Lcom/nothing/cardwidget/pedometer/DigitalData;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getStepCounter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageValue:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getDigitalFormat$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getSevenDayAverage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getStepCounter()I

    move-result v2

    const/16 v3, 0x25

    const-string v4, ""

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getTodayPercent()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageReachPercent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getSevenDayAverage()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/DigitalData;->getSevenDayPercent()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsReachPercent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/16 v1, 0x18

    int-to-float v1, v1

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->todayStepsDes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerDigitalViewHolder;->sevenDayAverageDes:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
